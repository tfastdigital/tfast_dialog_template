# Update System — GitHub Remote Config

## Overview

Every time `TfastDialogHelper.show()` runs, a background thread **HTTP GETs** the config URL (default: this repo’s `config/update.json` on `main`). The UI updates on the main thread. You control messaging, social links, and **whether users may enter the app**.

```text
App opens → show dialog (local defaults)
         → GET update.json (≤8s)
         → apply title/message/links/gates
         → user Continues OR is blocked + Download Update
```

---

## Default URL

```text
https://raw.githubusercontent.com/tfastdigital/tfast_dialog_template/main/config/update.json
```

Hosted file in repo: `config/update.json`.

---

## Schema

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| `enabled` | bool | `true` | `false` = dismiss dialog immediately |
| `force_update` | bool | `false` | Treat as hard gate; show update CTA |
| `block_entry` | bool | `false` | Disable/hide Continue — **cannot enter app** |
| `prevent_entry` | bool | `false` | Alias of `block_entry` |
| `block_app` | bool | `false` | Alias of `block_entry` |
| `hide_continue_when_blocked` | bool | `true` | Hide Continue when gated |
| `show_update_button` | bool | `false` | Force show orange Update button |
| `title` | string | — | Dialog title |
| `subtitle` | string | — | Under title |
| `credits` | string | — | Footer credits |
| `message` | string | — | Status pill text |
| `update_message` | string | — | Fallback status if `message` empty |
| `outdated_message` | string | — | When client below `min_dialog_version` |
| `continue_label` | string | Continue to App | Continue button text |
| `update_label` | string | Download Update | Update button text |
| `blocked_label` | string | Update required | Label when gated |
| `update_url` | string | website | Opened by Update button |
| `apk_url` | string | — | Used if `update_url` still default |
| `telegram` | string | — | Live Telegram URL |
| `whatsapp` | string | — | Live WhatsApp URL |
| `tiktok` | string | — | Live TikTok URL |
| `website` | string | — | Reserved / docs |
| `min_dialog_version` | int | `0` | If `> DIALOG_VERSION` (client=2) → force gate |
| `dialog_version` | int | — | Documentation only on server |

---

## Campaign recipes

### A. Normal (branding only)

```json
{
  "enabled": true,
  "force_update": false,
  "block_entry": false,
  "message": "Join Telegram for new releases",
  "telegram": "https://t.me/tfasthub"
}
```

### B. Announce optional update

```json
{
  "force_update": false,
  "block_entry": false,
  "show_update_button": true,
  "message": "New build available — optional update",
  "update_url": "https://github.com/tfastdigital/APP/releases/latest/download/app.apk"
}
```

### C. Force update + block app entry

```json
{
  "force_update": true,
  "block_entry": true,
  "hide_continue_when_blocked": true,
  "message": "Please install the latest APK to continue.",
  "update_label": "Download Latest APK",
  "update_url": "https://github.com/tfastdigital/APP/releases/latest/download/app.apk"
}
```

Users **cannot** dismiss into the app until you set `block_entry`/`force_update` back to `false` (or they install a build that no longer checks — always keep the dialog in new builds).

### D. Kill dialog temporarily

```json
{ "enabled": false }
```

### E. Retire old dialog code

Ship `DIALOG_VERSION = 3` in a new template; set server:

```json
{
  "min_dialog_version": 3,
  "update_url": "https://…/new.apk",
  "outdated_message": "This mod build is retired. Download the new one."
}
```

---

## Pushing config

```bash
# edit config/update.json
git add config/update.json
git commit -m "ops: force update for all dialog clients"
git push origin main
```

CDN/raw cache: GitHub raw is usually near-instant; if stuck, bump a query is not needed — clients do not cache aggressively (new HTTP each open).

---

## Per-app monitoring

| Approach | How |
|----------|-----|
| Global | All mods use template `update.json` — one switch for all |
| Per app | Each mod repo hosts its own `update.json`; inject custom URL |
| Hybrid | Global for brand/social; per-app only when shipping that app’s APK |

There is **no server-side analytics** in the dialog itself. Monitor:

- GitHub release download counts  
- Telegram channel growth  
- Optional: your own redirect short-links in `update_url`

---

## Security / trust notes

- Config is **public** (raw GitHub). Do not put secrets in JSON.  
- Anyone can read the control plane — that is intentional for client-side mods.  
- HTTPS only; no cert pinning (keep simple for injectability).  
- Offline users are not newly blocked until they can fetch; they still see the dialog.

---

## Client constants

In `TfastDialogHelper.java`:

```java
public static final int DIALOG_VERSION = 2;
public static final String DEFAULT_CONFIG_URL = "https://raw.githubusercontent.com/tfastdigital/tfast_dialog_template/main/config/update.json";
```

Bump `DIALOG_VERSION` when you change client behavior that servers should gate on.
