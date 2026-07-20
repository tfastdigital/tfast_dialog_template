# Tfast Brand Dialog Template v2

> Reusable branded splash dialog for **any** Android APK mod — logo, socials, GitHub remote updates, and hard entry gate.

**Repo:** [github.com/tfastdigital/tfast_dialog_template](https://github.com/tfastdigital/tfast_dialog_template)  
**Brand:** [tfastdigital.com](https://tfastdigital.com)

---

## What you get

| Feature | Detail |
|--------|--------|
| **Unique package** | `com.tfastdigital.dialog` — not tied to Munowatch or any host app |
| **Logo** | `res/drawable/tfast_logo.png` (400×300 brand asset) |
| **Always on open** | Call `show()` from launcher/main — every cold start, no “show once” prefs |
| **Non-cancelable** | User must Continue (or be blocked by remote config) |
| **Socials** | Telegram / WhatsApp / TikTok (URLs overridable from GitHub) |
| **Remote control** | Pulls `config/update.json` from GitHub raw on every show |
| **Force update** | Hide Continue + show Download Update link |
| **Block entry** | Prevent opening the app until user updates |
| **Safe merge** | All resources prefixed `tfast_*` |

---

## Quick inject (smali)

```text
1. Copy smali/com/tfastdigital/  →  <apk>/smali/com/tfastdigital/
2. Copy res/layout/tfast_brand_dialog.xml
3. Copy res/drawable/tfast_*  (including tfast_logo.png)
4. Merge res/values/ids.xml, strings.xml, colors.xml  (or copy missing items)
5. Ensure INTERNET permission in AndroidManifest.xml
6. In launcher Activity onCreate (end):
   invoke-static {p0}, Lcom/tfastdigital/dialog/TfastDialogHelper;->show(Landroid/app/Activity;)V
```

Full steps → [docs/INTEGRATION_GUIDE.md](docs/INTEGRATION_GUIDE.md)  
Remote updates → [docs/UPDATE_SYSTEM.md](docs/UPDATE_SYSTEM.md)  
Agent / team handoff → [HANDOFF.md](HANDOFF.md)

---

## UI preview

```
┌─────────────────────────────────┐
│ ▓▓▓ purple→pink accent bar ▓▓▓ │
│           ┌─────┐               │
│           │ LOGO│               │
│           └─────┘               │
│     Tfast Digital Agency        │
│  Official channels · updates    │
│  ┌───────────────────────────┐  │
│  │ status / update message   │  │
│  └───────────────────────────┘  │
│  [ Telegram Channel          ]  │
│  [ WhatsApp Channel          ]  │
│  [ TikTok @tfasthub          ]  │
│  ─────────────────────────────  │
│  Powered by tfastdigital.com    │
│  [ Download Update ]  (remote)  │
│  [ Continue to App ]            │
└─────────────────────────────────┘
```

---

## Remote config (GitHub)

Default URL baked into the client:

```text
https://raw.githubusercontent.com/tfastdigital/tfast_dialog_template/main/config/update.json
```

Edit that file on GitHub → **all apps** that use the default URL pick up changes on next open.

| Field | Effect |
|-------|--------|
| `enabled: false` | Dialog dismisses itself (silent) |
| `force_update: true` | Gate + show update button |
| `block_entry: true` | Cannot Continue into app |
| `update_url` | Link opened by Download Update |
| `message` | Status text under the logo |
| social URLs | Live rewrite of channel links |

See `config/update.json` and `config/update.force_example.json`.

---

## Call sites (Java / Kotlin)

```java
// Every launch — recommended
TfastDialogHelper.show(this);

// Per-app update channel
TfastDialogHelper.show(this, "https://raw.githubusercontent.com/tfastdigital/MY_APP/main/update.json");

// After Continue
TfastDialogHelper.show(this, TfastDialogHelper.DEFAULT_CONFIG_URL, () -> {
    // optional: start next activity
});
```

Smali (no next-activity hardcode — Continue only dismisses):

```smali
invoke-static {p0}, Lcom/tfastdigital/dialog/TfastDialogHelper;->show(Landroid/app/Activity;)V
```

---

## Folder layout

```text
tfast_dialog_template/
├── README.md
├── HANDOFF.md
├── CHANGELOG.md
├── config/
│   ├── update.json                 ← live remote config
│   └── update.force_example.json
├── java/com/tfastdigital/dialog/
│   └── TfastDialogHelper.java
├── smali/com/tfastdigital/dialog/  ← inject these
├── res/
│   ├── layout/tfast_brand_dialog.xml
│   ├── drawable/tfast_logo.png + shapes
│   └── values/{ids,strings,colors}.xml
├── docs/
│   ├── INTEGRATION_GUIDE.md
│   └── UPDATE_SYSTEM.md
└── tools/
    └── inject_checklist.md
```

---

## Requirements in host APK

```xml
<uses-permission android:name="android.permission.INTERNET" />
```

Without INTERNET, dialog still shows with **local defaults** (offline status).

---

## Credits

**Tfast Digital Agency** · [tfastdigital.com](https://tfastdigital.com) · Telegram [@tfasthub](https://t.me/tfasthub)
