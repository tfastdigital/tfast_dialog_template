# HANDOFF — Tfast Dialog Template v2

**For:** engineers / AI agents injecting or maintaining the branded dialog  
**Repo:** https://github.com/tfastdigital/tfast_dialog_template  
**Local path:** `tfast_dialog_template/`  
**Date:** 2026-07-20  
**Owner:** Tfast Digital Agency (tfastdigital.com)

---

## 1. Mission

Ship one **unique, app-agnostic** brand dialog that:

1. Loads **every time** the host app opens (launcher/main `onCreate`).
2. Shows the **Tfast logo** + social channels.
3. Pulls **live config** from GitHub so you can push updates / block entry without rebuilding every APK.
4. Merges cleanly into **any** decompiled APK (no host package rename required).

---

## 2. What changed vs v1

| v1 (old) | v2 (this) |
|----------|-----------|
| Package `com.munowatch.lite` | `com.tfastdigital.dialog` |
| Hard-coded `Dashboard` after Continue | Continue **only dismisses** (optional `Runnable`) |
| Layout `custom_dialog` + `dialog_button` | `tfast_brand_dialog` + all `tfast_*` IDs |
| No logo | `tfast_logo.png` |
| No remote control | GitHub `config/update.json` |
| Show-only branding | Force update + **block entry** |

**Do not** copy old flat `smali/TfastDialogHelper.smali` into new mods. Use:

```text
smali/com/tfastdigital/dialog/*.smali
```

---

## 3. Inject recipe (copy-paste)

### Resources

```text
res/layout/tfast_brand_dialog.xml
res/drawable/tfast_logo.png
res/drawable/tfast_logo_ring.xml
res/drawable/tfast_dialog_bg.xml
res/drawable/tfast_accent_bar.xml
res/drawable/tfast_status_bg.xml
res/drawable/tfast_btn_telegram.xml
res/drawable/tfast_btn_whatsapp.xml
res/drawable/tfast_btn_tiktok.xml
res/drawable/tfast_btn_continue.xml
res/drawable/tfast_btn_continue_disabled.xml
res/drawable/tfast_btn_update.xml
res/values/ids.xml      (merge tfast_* items)
res/values/strings.xml  (merge tfast_* strings)
res/values/colors.xml   (merge tfast_* colors)
```

### Code

```text
smali/com/tfastdigital/dialog/   → entire folder
```

### Manifest

```xml
<uses-permission android:name="android.permission.INTERNET" />
```

### Hook (smali) — end of launcher Activity `onCreate`

```smali
invoke-static {p0}, Lcom/tfastdigital/dialog/TfastDialogHelper;->show(Landroid/app/Activity;)V
```

If the activity uses `this` as `p0` already (common), that is correct. If `onCreate` only has `p0` as Bundle, use the Activity register (often `p0` is still Activity in instance methods).

**Always show** = call every `onCreate` of the entry Activity. Do **not** wrap in SharedPreferences “shown once”.

---

## 4. Remote update control (GitHub)

### Default endpoint

```text
https://raw.githubusercontent.com/tfastdigital/tfast_dialog_template/main/config/update.json
```

### Operator playbook

| Goal | Edit `config/update.json` |
|------|---------------------------|
| Normal branding | `force_update: false`, `block_entry: false` |
| Push APK update link | Set `update_url` / `apk_url`, `show_update_button: true` |
| **Block all users from entering** | `block_entry: true`, `force_update: true`, set `update_url` |
| Soft message only | `message: "..."`, leave gates false |
| Disable dialog globally | `enabled: false` |
| Force old clients to update | Raise `min_dialog_version` above client `DIALOG_VERSION` (currently **2**) |

After edit: commit + push to `main`. Clients fetch on **next app open** (timeout ~8s; offline → local defaults, Continue still works unless you had already blocked them offline — offline cannot enforce new blocks until fetch succeeds).

### Per-app channel

For app-specific APK URLs, either:

1. Change baked URL by calling  
   `show(activity, "https://raw.githubusercontent.com/tfastdigital/APP_REPO/main/update.json")`  
   (requires small smali edit of the const-string / overload), **or**
2. Keep global template config and put the APK link in `update_url` when you want a campaign.

Example force-gate file: `config/update.force_example.json`.

---

## 5. Design tokens

| Token | Value |
|-------|--------|
| Card bg | deep purple-black gradient `#14141F` → `#0E0E18` |
| Accent bar | `#7C6CFF` → `#A855F7` → `#EC4899` |
| Continue | purple gradient |
| Update | orange `#FF6B35` |
| Logo | circular ring + `tfast_logo.png` |

Do not strip the logo ImageView — brand identity depends on it.

---

## 6. Rebuild smali after Java edits

Paths with spaces break d8; use a short temp dir:

```powershell
# 1) javac against android.jar
# 2) jar cf classes.jar from classes/
# 3) d8 --min-api 21 --output C:\temp\tfast_build classes.jar
# 4) baksmali d -o smali_out classes.dex
# 5) copy smali_out\com → tfast_dialog_template\smali\com
```

Source of truth for logic:  
`java/com/tfastdigital/dialog/TfastDialogHelper.java`

---

## 7. Publish this template to GitHub

```bash
cd "tfast_dialog_template"
git init
git add .
git commit -m "Tfast dialog template v2 — logo, remote config, force gate"
git branch -M main
git remote add origin https://github.com/tfastdigital/tfast_dialog_template.git
git push -u origin main
```

Ensure `config/update.json` is on `main` so raw URLs resolve.

**Raw URL check:**

```text
https://raw.githubusercontent.com/tfastdigital/tfast_dialog_template/main/config/update.json
```

---

## 8. Test checklist

- [ ] Fresh install → dialog shows with logo on first open  
- [ ] Kill app → reopen → dialog shows **again**  
- [ ] Telegram / WhatsApp / TikTok open correct apps or browser  
- [ ] Continue dismisses and app is usable  
- [ ] Set `block_entry: true` on GitHub → reopen → Continue hidden/disabled, Update opens link  
- [ ] Airplane mode → dialog still shows offline banner; does not crash  
- [ ] Missing layout → no crash (silent return)  
- [ ] INTERNET permission present  

---

## 9. Pitfalls

| Issue | Fix |
|-------|-----|
| Dialog never shows | Hook wrong activity; layout name wrong; resources not copied |
| Logo blank | `tfast_logo.png` not in drawable (spaces in filename not allowed) |
| Always offline | No INTERNET; wrong raw URL; private repo without raw access |
| Continue launches wrong activity | v2 does not start activities — your app flow must not depend on old Dashboard intent |
| Resource clash | Only use `tfast_*` names; merge ids carefully |
| aapt fails on colors | Host may need `@color/tfast_*` defined — copy `colors.xml` items |

---

## 10. Deliverables map

| File | Role |
|------|------|
| `README.md` | Public overview |
| `HANDOFF.md` | This file — ops + agent continuity |
| `docs/INTEGRATION_GUIDE.md` | Step-by-step inject |
| `docs/UPDATE_SYSTEM.md` | Remote config schema & campaigns |
| `CHANGELOG.md` | Version history |
| `config/update.json` | Live control plane |
| `smali/...` | Runtime code for apktool |
| `java/...` | Human-editable source |

---

## 11. Success criteria

An agent or engineer can:

1. Copy resources + smali into a decompiled APK in under 10 minutes.  
2. Hook one `invoke-static` so the dialog appears on every launch.  
3. Flip `block_entry` on GitHub and gate users without a rebuild.  
4. Point `update_url` at a new APK download link for all clients.

---

*Handoff prepared for tfastdigital.com · Template DIALOG_VERSION = 2*
