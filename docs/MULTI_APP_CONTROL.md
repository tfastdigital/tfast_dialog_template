# Multi-app control plane (v3)

One GitHub file controls **all** Tfast-injected apps:

```text
https://raw.githubusercontent.com/tfastdigital/tfast_dialog_template/main/config/update.json
```

## Merge order

1. Legacy flat keys on root (if any)  
2. `global` object  
3. `apps.default`  
4. `apps.<packageName>` ← **wins** for that APK only  

## Per-app fields (`apps.com.example.app`)

| Field | Purpose |
|-------|---------|
| `app_name` | Display name on dialog |
| `kill_switch` / `mode_kill_switch` | Hard block entry + force download CTA |
| `force_update` | Block continue until user opens download link |
| `block_entry` | Same gate as force_update |
| `min_version_code` | If install versionCode &lt; this → force update |
| `latest_version_code` / `latest_version_name` | Shown + optional update available |
| `message` / `kill_message` | Status text |
| `update_url` / `apk_url` / `download_url` | Opened by **Download Update** |
| `update_label` / `check_update_label` | Button labels |
| social / website | Override global links for this app only |

## Operator recipes

### Kill one app only
```json
"apps": {
  "com.community.mbox.tv": {
    "kill_switch": true,
    "kill_message": "Paused. Download new build.",
    "apk_url": "https://github.com/.../MovieBoxTv.apk"
  }
}
```

### Force update with clickable link
```json
"apps": {
  "com.community.mbox.tv": {
    "force_update": true,
    "block_entry": true,
    "latest_version_code": 50040100,
    "message": "Required update — tap Download Update",
    "apk_url": "https://github.com/.../MovieBoxTv.apk",
    "update_label": "Download Update"
  }
}
```

### Kill all apps
```json
"global": { "kill_switch": true, "kill_message": "Maintenance" }
```

## Client API

```java
TfastDialogHelper.show(activity);              // every launch
TfastDialogHelper.showCheckUpdate(activity); // Settings / manual
```

Smali:
```smali
invoke-static {p0}, Lcom/tfastdigital/dialog/TfastDialogHelper;->show(Landroid/app/Activity;)V
invoke-static {p0}, Lcom/tfastdigital/dialog/TfastDialogHelper;->showCheckUpdate(Landroid/app/Activity;)V
```

## Dialog buttons

| Button | Action |
|--------|--------|
| Check for Updates | Re-fetch GitHub JSON for this package |
| Download Update | Opens `apk_url` / `update_url` (browser) |
| Continue | Dismiss (disabled if kill/force/block) |

## Adding a new app

1. Inject dialog smali + resources into the new APK  
2. Call `show()` on main activity  
3. Add block under `apps."your.package.name"` in `update.json`  
4. Push GitHub — no rebuild of other apps needed for remote control  
