# AGENT INJECT PLAYBOOK — Tfast Brand Dialog v3

> **Read this first** before injecting the dialog into any new APK.  
> Template root: `tfast_dialog_template/`  
> GitHub: https://github.com/tfastdigital/tfast_dialog_template  
> Live config: `https://raw.githubusercontent.com/tfastdigital/tfast_dialog_template/main/config/update.json`

**Framing:** Defensive security research / educational app protection study.

---

## 0. Success criteria (every inject)

| # | Must be true |
|---|--------------|
| 1 | Dialog shows on **every cold start** (launcher/main activity) |
| 2 | Logo `tfast_logo.png` visible |
| 3 | Buttons: Check for Updates, Download Update, Continue, socials |
| 4 | App info line: name + versionName + versionCode + package |
| 5 | Official in-app update path **disabled** (or routed to Tfast) |
| 6 | Settings (or equivalent) has **Check for Updates (Tfast)** |
| 7 | `apps."<package>"` block exists in GitHub `config/update.json` |
| 8 | Device test: install, open twice, no crash, Continue works |
| 9 | Docs updated: project `PATCHES.md` + this playbook note if new pattern |

---

## 1. Recon (5 min)

```text
1. Locate APK (reference_apks/ or Project/final/)
2. Package name: aapt dump badging app.apk | findstr package
3. Launcher activity: MAIN/LAUNCHER in AndroidManifest
4. Already decompiled? Prefer existing apktool tree
5. Packed? One huge classes.dex = hard; prefer clean multi-dex
6. Existing Tfast? Search TfastDialogHelper — upgrade vs first inject
```

Record:

```text
Package: _______________
Launcher: _______________
VersionCode / Name: _______________
Apktool folder: _______________
```

---

## 2. Copy files (exact)

### Smali (package is ALWAYS `com.tfastdigital.dialog` — never rename to host package)

```text
tfast_dialog_template/smali/com/tfastdigital/
  →  <work>/smali/com/tfastdigital/
```

If primary `smali/` is full, use `smali_classesN/`.

### Resources

```text
res/layout/tfast_brand_dialog.xml
res/drawable/tfast_logo.png
res/drawable/tfast_*.xml   (all tfast drawables including tfast_btn_check.xml)
```

### Merge values (append if files exist)

From template `res/values/`:

- `ids.xml` — every `tfast_*` id  
- `strings.xml` — every `tfast_*` string  
- `colors.xml` — every `tfast_*` color  

**Do not wipe host resources.** Only add missing `tfast_*` entries.

### Manifest

```xml
<uses-permission android:name="android.permission.INTERNET" />
```

---

## 3. Hooks (smali)

### A. Every launch (required)

**Prefer Main/Home activity** when the app navigates there after splash.  
If you must show on **Splash** and Splash used to start the next screen on Continue:

```smali
# WRONG on Splash if Continue only dismisses — user stuck on splash
invoke-static {p0}, Lcom/tfastdigital/dialog/TfastDialogHelper;->show(Landroid/app/Activity;)V

# RIGHT for Munowatch-style splash: pass Runnable that starts Dashboard + finish
new-instance v0, Lcom/tfastdigital/dialog/MunowatchContinue;  # or your app's Continue runnable
invoke-direct {v0, p0}, Lcom/tfastdigital/dialog/MunowatchContinue;-><init>(Landroid/app/Activity;)V
sget-object v1, Lcom/tfastdigital/dialog/TfastDialogHelper;->DEFAULT_CONFIG_URL:Ljava/lang/String;
invoke-static {p0, v1, v0}, Lcom/tfastdigital/dialog/TfastDialogHelper;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;)V
```

On a normal MainActivity (MovieBox pattern), bare `show(Activity)` is enough — Continue just dismisses.

- `p0` must be the Activity instance.  
- Call **every** `onCreate` — no SharedPreferences “show once”.  
- v3 Continue only runs the optional `Runnable` then dismisses — **you** must open the next Activity if splash cannot proceed alone.
### B. Settings / Check Update (required when settings exist)

```smali
invoke-static {p0}, Lcom/tfastdigital/dialog/TfastDialogHelper;->showCheckUpdate(Landroid/app/Activity;)V
```

Patterns used:

| App | Hook |
|-----|------|
| MovieBox TV | `SettingsFragment.F1()` version item → `showCheckUpdate` |
| Munowatch | Settings preference `version` click → `TfastPrefClick` → `showCheckUpdate` |

If no settings UI, at least dialog **Check for Updates** button is enough.

### C. Kill official updates (required for mods)

| App type | What to no-op |
|----------|----------------|
| MovieBox | `ForceUpdateManager.g/s`, `UpdateApkManager.h/s`, `UpgradeSdkManager.checkUpgradeTask/showUpgradeDialog` |
| Munowatch | Prefer Tfast dialog; keep `MunoUpdateHelper` only if it points to **your** panel, or disable and use GitHub `apps.<pkg>` only |
| Generic | Search `checkUpdate`, `force_update`, `Upgrade`, `AppUpdate` — no-op check + download entry methods |

Official update must never replace your modded APK with stock.

---

## 4. GitHub multi-app config (required for every new app)

Edit `tfast_dialog_template/config/update.json` on **main**:

```json
"apps": {
  "com.your.package": {
    "app_name": "Human Readable Name",
    "force_update": false,
    "block_entry": false,
    "kill_switch": false,
    "min_version_code": 1,
    "latest_version_code": 123,
    "latest_version_name": "1.0.0-tfast",
    "message": "Managed by Tfast Digital",
    "apk_url": "https://github.com/tfastdigital/.../app.apk",
    "update_url": "https://github.com/tfastdigital/.../releases/latest",
    "update_label": "Download Tfast APK",
    "check_update_label": "Check for Updates"
  }
}
```

**Merge order:** `global` → `apps.default` → `apps.<package>` (package wins).

| Operator action | JSON |
|-----------------|------|
| Kill one app | `"kill_switch": true` + `apk_url` |
| Force update + link | `"force_update": true`, `"block_entry": true`, `apk_url` |
| Kill all apps | `global.kill_switch: true` |

Full schema: `docs/MULTI_APP_CONTROL.md`  
Examples: `config/update.examples.json`

After edit:

```bash
cd tfast_dialog_template
git add config/update.json
git commit -m "ops: add/update app <package>"
git push origin main
```

---

## 5. Build / sign / install

```bash
java -Xmx4G -jar tools/apktool.jar b --use-aapt1 -o unsigned.apk <work>
java -jar tools/uber-apk-signer.jar --apks unsigned.apk --allowResign --ks tools/keystores/debug.keystore ...
adb install -r *-aligned-signed.apk
adb shell am start -n package/launcher.Activity
```

### Device verify

```text
adb shell uiautomator dump /sdcard/tfast_ui.xml
# Expect: Tfast Digital Agency, Check for Updates, Download Update, Continue, package name
adb logcat | findstr FATAL
# Second cold start → dialog again
```

---

## 6. Project folder checklist

```text
ProjectName_Project/   (or existing project)
├── README.md
├── PATCHES.md           ← list dialog inject + official-update kills
├── HOW_ITS_MADE.md      ← optional steps
├── final/               ← signed APK
└── source/              ← patched smali snippets + tfast snapshot
```

Copy inject snapshot:

```text
source/tfast_dialog/  ← smali + layout + drawables used
```

---

## 7. Upgrade from old dialog (v1 Munowatch-style)

| Old | New |
|-----|-----|
| `com.munowatch.lite.TfastDialogHelper` | `com.tfastdigital.dialog.TfastDialogHelper` |
| Layout `custom_dialog` | `tfast_brand_dialog` |
| Hard-coded next Activity | Continue dismiss only |
| Single global update | Multi-app `apps.<package>` |

Replace **all** `invoke-static ... old TfastDialogHelper;->show` with new package.  
Leave dead old classes or delete if unused.

---

## 8. Rebuild smali after Java edits

Paths with spaces break d8 — use `C:\temp\tfast_build`:

```text
1. javac -source 8 -target 8 -bootclasspath android.jar TfastDialogHelper.java
2. jar cf classes.jar from classes/
3. d8 --min-api 21 --output C:\temp\tfast_build classes.jar
4. baksmali d -o smali_out classes.dex
5. Copy smali_out/com/tfastdigital → template + target apps
```

Source of truth: `java/com/tfastdigital/dialog/TfastDialogHelper.java`  
`DIALOG_VERSION` currently **3**.

---

## 9. Reference implementations

| App | Package | Work tree | Notes |
|-----|---------|-----------|--------|
| MovieBox TV | `com.community.mbox.tv` | `moviebox_premium_research/movietv_smali` | MainActivity + Settings F1; official ForceUpdate killed |
| Munowatch Pro | `com.munowatch.tfast` | `Munowatch_Project/work_smali` | SplashScreen show; Settings version click; multi-app config key |

---

## 10. Common failures

| Symptom | Fix |
|---------|-----|
| No dialog | Wrong activity hook; layout name wrong; resources not merged |
| Crash inflate | Missing color/id/string; copy all values |
| Logo blank | Missing `tfast_logo.png` (no spaces in filename) |
| Always offline | No INTERNET; phone offline; raw GitHub 404 |
| Dialog once only | You used prefs skip — remove it |
| Official update still forces | Missed manager no-op |
| Wrong app’s update link | Missing `apps.<package>` block; falling through to default |

---

## 11. Public API (do not rename)

```java
TfastDialogHelper.show(Activity);                    // every launch
TfastDialogHelper.show(Activity, configUrl);
TfastDialogHelper.showCheckUpdate(Activity);         // Settings
TfastDialogHelper.showCheckUpdate(Activity, configUrl);
TfastDialogHelper.openUrl(Context, url);
TfastDialogHelper.DEFAULT_CONFIG_URL
TfastDialogHelper.DIALOG_VERSION  // 3
```

---

*tfastdigital.com · Keep this file updated when inject patterns change.*
