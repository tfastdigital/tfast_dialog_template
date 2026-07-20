# HANDOFF — Tfast Dialog Template v3

**For next AI agents and engineers**  
**Repo:** https://github.com/tfastdigital/tfast_dialog_template  
**Primary playbook:** [docs/AGENT_INJECT_PLAYBOOK.md](docs/AGENT_INJECT_PLAYBOOK.md)  
**Multi-app ops:** [docs/MULTI_APP_CONTROL.md](docs/MULTI_APP_CONTROL.md)

---

## Mission

Reusable brand dialog for **any** modded Android APK:

1. Shows every app open (logo, socials, app version info)  
2. **Per-app** GitHub remote control (kill switch, force update + download link)  
3. **Check for Updates** on dialog + in Settings  
4. Official stock updates disabled; only Tfast `apk_url`

---

## Read order for a new inject

1. `docs/AGENT_INJECT_PLAYBOOK.md` ← **step-by-step inject**  
2. `docs/MULTI_APP_CONTROL.md` ← kill switch / force update JSON  
3. This file  
4. Reference apps: MovieBox (`movietv_smali`), Munowatch (`Munowatch_Project/work_smali`)

---

## Public API

```smali
invoke-static {p0}, Lcom/tfastdigital/dialog/TfastDialogHelper;->show(Landroid/app/Activity;)V
invoke-static {p0}, Lcom/tfastdigital/dialog/TfastDialogHelper;->showCheckUpdate(Landroid/app/Activity;)V
```

Config URL (do not hardcode per-app URLs in smali unless intentional):

```text
https://raw.githubusercontent.com/tfastdigital/tfast_dialog_template/main/config/update.json
```

`DIALOG_VERSION = 3`

---

## Apps already wired

| Package | App | Work tree |
|---------|-----|-----------|
| `com.community.mbox.tv` | MovieBox TV Premium | `moviebox_premium_research/movietv_smali` |
| `com.munowatch.tfast` | Munowatch Pro 3.1 | `Munowatch_Project/work_smali` |

Always add new packages under `config/update.json` → `apps`.

---

## Operator cheatsheet

```json
"apps": {
  "com.example.app": {
    "kill_switch": true,
    "force_update": true,
    "block_entry": true,
    "apk_url": "https://.../app.apk",
    "message": "Update required"
  }
}
```

Push to `main` → clients fetch on next dialog open / Check Update.

---

## Files map

| Path | Role |
|------|------|
| `java/.../TfastDialogHelper.java` | Source of truth |
| `smali/com/tfastdigital/dialog/` | Inject code |
| `res/layout/tfast_brand_dialog.xml` | UI |
| `res/drawable/tfast_logo.png` | Logo |
| `config/update.json` | Live multi-app control |
| `docs/AGENT_INJECT_PLAYBOOK.md` | **How to inject** |
| `docs/MULTI_APP_CONTROL.md` | Remote ops |
| `docs/UPDATE_SYSTEM.md` | Schema history |

---

*tfastdigital.com · 2026-07-20*
