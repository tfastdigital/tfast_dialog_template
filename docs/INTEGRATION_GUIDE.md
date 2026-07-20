# Integration Guide — Tfast Brand Dialog v2

## Prerequisites

- APK decompiled with **apktool** (`apktool d app.apk -o work/`)
- Host has (or you add) `INTERNET` permission
- Template folder: `tfast_dialog_template/`

---

## Method A — Smali injection (recommended)

### 1. Copy smali package

```text
tfast_dialog_template/smali/com/tfastdigital/
  →  work/smali/com/tfastdigital/
```

If the APK uses multi-dex smali folders (`smali`, `smali_classes2`, …), put the package in **smali/** (primary) unless that dex is full; then use `smali_classesN`.

### 2. Copy resources

```text
res/layout/tfast_brand_dialog.xml
res/drawable/tfast_*.xml
res/drawable/tfast_logo.png
```

Merge into `res/values/`:

- `ids.xml` — all `<item type="id" name="tfast_..." />`
- `strings.xml` — all `tfast_*` strings  
- `colors.xml` — all `tfast_*` colors  

If files already exist, **append** the tfast entries; do not wipe host IDs.

### 3. Manifest permission

```xml
<uses-permission android:name="android.permission.INTERNET" />
```

### 4. Hook the entry Activity

Find the launcher activity in `AndroidManifest.xml` (`MAIN` / `LAUNCHER`). Open its `.smali`, locate `onCreate`, and **before** `return-void` (or after `setContentView`):

```smali
invoke-static {p0}, Lcom/tfastdigital/dialog/TfastDialogHelper;->show(Landroid/app/Activity;)V
```

`p0` must be the `Activity` instance (standard for instance methods).

### 5. Rebuild & sign

```bash
apktool b work -o unsigned.apk --use-aapt1
java -jar uber-apk-signer.jar --apks unsigned.apk --debug
adb install -r *-aligned-signed.apk
```

---

## Method B — Custom config URL (per app)

Default config:

```text
https://raw.githubusercontent.com/tfastdigital/tfast_dialog_template/main/config/update.json
```

To use a per-app JSON, call the overload (Java):

```java
TfastDialogHelper.show(activity, "https://raw.githubusercontent.com/tfastdigital/MyApp/main/update.json");
```

Smali:

```smali
const-string v0, "https://raw.githubusercontent.com/tfastdigital/MyApp/main/update.json"
invoke-static {p0, v0}, Lcom/tfastdigital/dialog/TfastDialogHelper;->show(Landroid/app/Activity;Ljava/lang/String;)V
```

---

## Method C — Continue callback

When Continue should start another activity, use the 3-arg Java API at build time, or after dismiss handle navigation in the host. **v2 does not hard-code any host Activity class.**

---

## Multi-dex / large APKs

- Prefer primary `smali/` for `com.tfastdigital.dialog`
- Resource names are unique (`tfast_*`) — low collision risk
- If `aapt` complains about duplicate IDs, remove only the conflicting **non-tfast** duplicate or rename host resource (keep tfast names stable)

---

## Packed / hard-to-smali APKs

If the packer prevents smali edits:

1. Prefer an **unpacked** APK build when available  
2. Or use Frida only for research (not for permanent brand inject)  
3. Fallback: Method B from Agents.md — footer TextView branding only (no remote gate)

---

## Verification

```bash
adb logcat | findstr /i "tfast AndroidRuntime"
```

- Open app → dialog + logo visible  
- Social buttons open URLs  
- Continue dismisses  
- Second cold start → dialog again  

---

## Rollback

Delete `smali/com/tfastdigital/` and `res/**/tfast_*` resources, remove the `invoke-static` hook, rebuild.
