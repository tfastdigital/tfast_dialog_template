# Changelog

## 2.0.0 — 2026-07-20

### Design
- New layout `tfast_brand_dialog` with accent bar, status pill, circular logo ring
- Brand logo asset `tfast_logo.png` (from `400x300 tfast logo.png`)
- Updated gradient palette (purple / pink accent, social brand colors)
- Dedicated Update (orange) and disabled Continue drawables

### Architecture
- Package moved to **`com.tfastdigital.dialog`** (works in any host APK)
- Removed Munowatch `Dashboard` hard-navigation on Continue
- All resource IDs/names prefixed `tfast_*`
- `getIdentifier` resolution for layouts/ids (package-safe)

### Remote control
- GitHub raw `config/update.json` fetched on every show
- `force_update` / `block_entry` hard gate (hide/disable Continue)
- Live override: title, subtitle, message, social URLs, update link
- `enabled: false` kill-switch
- `min_dialog_version` for retiring old clients
- Offline fallback to local defaults (no crash)

### Docs
- README, HANDOFF, INTEGRATION_GUIDE, UPDATE_SYSTEM
- Example force-update JSON

## 1.0.0 — prior

- Munowatch-scoped smali helper
- Social buttons + Continue
- Layout `custom_dialog`
