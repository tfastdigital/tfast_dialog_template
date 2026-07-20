package com.tfastdigital.dialog;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.Color;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.widget.TextView;
import android.widget.Toast;

import org.json.JSONObject;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.Charset;

/**
 * Tfast Brand Dialog v3 — multi-app GitHub control plane.
 *
 * Shared config URL (one file for all mods):
 *   https://raw.githubusercontent.com/tfastdigital/tfast_dialog_template/main/config/update.json
 *
 * Per-app block under "apps"."&lt;packageName&gt;" + global defaults.
 * Kill switch / force update / update links are resolved per package.
 *
 * Public API:
 *   show(activity)              — every launch (branding + remote gates)
 *   showCheckUpdate(activity)   — Settings "Check Update" / dialog button
 *   openUrl(context, url)
 */
public final class TfastDialogHelper {

    public static final int DIALOG_VERSION = 4;

    /**
     * Primary + fallbacks (public repos only — private GitHub raw returns 404 without token).
     * Prefer refs/heads/main (most reliable for raw.githubusercontent.com).
     */
    public static final String DEFAULT_CONFIG_URL =
            "https://raw.githubusercontent.com/tfastdigital/tfast_dialog_template/refs/heads/main/config/update.json";

    private static final String[] CONFIG_URLS = new String[]{
            "https://raw.githubusercontent.com/tfastdigital/tfast_dialog_template/refs/heads/main/config/update.json",
            "https://raw.githubusercontent.com/tfastdigital/tfast_dialog_template/main/config/update.json",
            "https://cdn.jsdelivr.net/gh/tfastdigital/tfast_dialog_template@main/config/update.json",
            "https://raw.githubusercontent.com/tfastdigital/munowatch-update-panel/refs/heads/main/dialog/update.json",
            "https://raw.githubusercontent.com/tfastdigital/munowatch-update-panel/main/dialog/update.json"
    };

    private static final String DEFAULT_TELEGRAM = "https://t.me/tfasthub";
    private static final String DEFAULT_WHATSAPP =
            "https://whatsapp.com/channel/0029VaAYznPK5cDIXJa9nW1a";
    private static final String DEFAULT_TIKTOK = "https://www.tiktok.com/@tfasthub";
    private static final String DEFAULT_WEBSITE = "https://tfastdigital.com";

    private TfastDialogHelper() {
    }

    /** Full brand dialog every open. */
    public static void show(final Activity activity) {
        show(activity, DEFAULT_CONFIG_URL, null, false);
    }

    public static void show(final Activity activity, final String configUrl) {
        show(activity, configUrl, null, false);
    }

    public static void show(final Activity activity, final String configUrl, final Runnable onContinue) {
        show(activity, configUrl, onContinue, false);
    }

    /**
     * Settings / manual "Check for updates" — same UI, status line emphasizes version check.
     */
    public static void showCheckUpdate(final Activity activity) {
        show(activity, DEFAULT_CONFIG_URL, null, true);
    }

    public static void showCheckUpdate(final Activity activity, final String configUrl) {
        show(activity, configUrl, null, true);
    }

    public static void show(final Activity activity, final String configUrl,
                            final Runnable onContinue, final boolean checkUpdateMode) {
        if (activity == null || activity.isFinishing()) {
            return;
        }
        try {
            final int layoutId = resId(activity, "layout", "tfast_brand_dialog");
            if (layoutId == 0) {
                toast(activity, "Tfast dialog layout missing");
                return;
            }

            final View root = LayoutInflater.from(activity).inflate(layoutId, null);
            final DialogState state = new DialogState();
            state.telegramUrl = DEFAULT_TELEGRAM;
            state.whatsappUrl = DEFAULT_WHATSAPP;
            state.tiktokUrl = DEFAULT_TIKTOK;
            state.updateUrl = DEFAULT_WEBSITE;
            state.websiteUrl = DEFAULT_WEBSITE;
            state.blockEntry = false;
            state.forceUpdate = false;
            state.killSwitch = false;
            state.enabled = true;
            state.checkUpdateMode = checkUpdateMode;

            fillAppInfo(activity, root, state);
            wireSocial(activity, root, state);
            applyLogo(activity, root);

            final AlertDialog.Builder builder = new AlertDialog.Builder(activity);
            builder.setView(root);
            builder.setCancelable(false);
            final AlertDialog dialog = builder.create();

            final View continueBtn = find(root, activity, "tfast_btn_continue");
            final View updateBtn = find(root, activity, "tfast_btn_update");
            final View checkBtn = find(root, activity, "tfast_btn_check_update");

            if (continueBtn != null) {
                continueBtn.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        if (state.killSwitch || state.blockEntry || state.forceUpdate) {
                            return;
                        }
                        try {
                            dialog.dismiss();
                        } catch (Exception ignored) {
                        }
                        if (onContinue != null) {
                            try {
                                onContinue.run();
                            } catch (Exception ignored) {
                            }
                        }
                    }
                });
            }

            if (updateBtn != null) {
                updateBtn.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        String url = state.updateUrl;
                        if (url == null || url.length() == 0) {
                            url = DEFAULT_WEBSITE;
                        }
                        openUrl(activity, url);
                    }
                });
            }

            if (checkBtn != null) {
                checkBtn.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        TextView status = asText(find(root, activity, "tfast_status"));
                        if (status != null) {
                            status.setText("Checking for updates...");
                            status.setTextColor(Color.parseColor("#9B9BB0"));
                        }
                        toast(activity, "Checking Tfast updates...");
                        String url = (configUrl == null || configUrl.length() == 0)
                                ? DEFAULT_CONFIG_URL : configUrl;
                        fetchAndApply(activity, root, dialog, state, url, true);
                    }
                });
            }

            try {
                dialog.show();
                Window w = dialog.getWindow();
                if (w != null) {
                    w.setBackgroundDrawableResource(android.R.color.transparent);
                }
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }

            final String url = (configUrl == null || configUrl.length() == 0)
                    ? DEFAULT_CONFIG_URL : configUrl;
            fetchAndApply(activity, root, dialog, state, url, checkUpdateMode);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private static void fillAppInfo(Activity activity, View root, DialogState state) {
        try {
            String pkg = activity.getPackageName();
            state.packageName = pkg;
            PackageManager pm = activity.getPackageManager();
            CharSequence label = pm.getApplicationLabel(pm.getApplicationInfo(pkg, 0));
            state.appName = label != null ? label.toString() : pkg;
            PackageInfo pi;
            if (android.os.Build.VERSION.SDK_INT >= 33) {
                pi = pm.getPackageInfo(pkg, PackageManager.PackageInfoFlags.of(0));
            } else {
                pi = pm.getPackageInfo(pkg, 0);
            }
            state.versionName = pi.versionName != null ? pi.versionName : "?";
            long vc = android.os.Build.VERSION.SDK_INT >= 28 ? pi.getLongVersionCode() : pi.versionCode;
            state.versionCode = vc;

            TextView info = asText(find(root, activity, "tfast_app_info"));
            if (info != null) {
                info.setText(state.appName + "  v" + state.versionName
                        + " (" + state.versionCode + ")\n" + pkg);
            }
            TextView subtitle = asText(find(root, activity, "tfast_subtitle"));
            if (subtitle != null && !state.checkUpdateMode) {
                // leave layout default until remote applies
            }
        } catch (Exception e) {
            TextView info = asText(find(root, activity, "tfast_app_info"));
            if (info != null) {
                info.setText(activity.getPackageName());
            }
        }
    }

    private static void wireSocial(final Activity activity, final View root, final DialogState state) {
        bindUrlButton(activity, root, "tfast_btn_telegram", new UrlProvider() {
            @Override
            public String get() {
                return state.telegramUrl;
            }
        });
        bindUrlButton(activity, root, "tfast_btn_whatsapp", new UrlProvider() {
            @Override
            public String get() {
                return state.whatsappUrl;
            }
        });
        bindUrlButton(activity, root, "tfast_btn_tiktok", new UrlProvider() {
            @Override
            public String get() {
                return state.tiktokUrl;
            }
        });
        final View credits = find(root, activity, "tfast_credits");
        if (credits != null) {
            credits.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    openUrl(activity, state.websiteUrl != null ? state.websiteUrl : DEFAULT_WEBSITE);
                }
            });
        }
    }

    private static void applyLogo(Activity activity, View root) {
        try {
            int logoId = resId(activity, "id", "tfast_logo");
            int drawableId = resId(activity, "drawable", "tfast_logo");
            if (logoId != 0 && drawableId != 0) {
                View logo = root.findViewById(logoId);
                if (logo instanceof android.widget.ImageView) {
                    ((android.widget.ImageView) logo).setImageResource(drawableId);
                }
            }
        } catch (Exception ignored) {
        }
    }

    private interface UrlProvider {
        String get();
    }

    private static void bindUrlButton(final Activity activity, View root, String idName,
                                      final UrlProvider provider) {
        View btn = find(root, activity, idName);
        if (btn == null) return;
        btn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                openUrl(activity, provider.get());
            }
        });
    }

    private static void fetchAndApply(final Activity activity, final View root,
                                      final AlertDialog dialog, final DialogState state,
                                      final String configUrl, final boolean fromCheck) {
        final Handler main = new Handler(Looper.getMainLooper());
        new Thread(new Runnable() {
            @Override
            public void run() {
                String body = httpGetFirstOk(configUrl, 12000);
                final JSONObject json = parseJson(body);
                main.post(new Runnable() {
                    @Override
                    public void run() {
                        if (activity.isFinishing()) return;
                        applyConfig(activity, root, dialog, state, json, fromCheck);
                    }
                });
            }
        }, "tfast-config").start();
    }

    /** Try primary URL then public fallbacks (handles private-repo 404 / CDN lag). */
    private static String httpGetFirstOk(String preferred, int timeoutMs) {
        java.util.LinkedHashSet<String> urls = new java.util.LinkedHashSet<String>();
        if (preferred != null && preferred.length() > 0) {
            urls.add(preferred);
        }
        for (int i = 0; i < CONFIG_URLS.length; i++) {
            urls.add(CONFIG_URLS[i]);
        }
        for (String u : urls) {
            String body = httpGet(u, timeoutMs);
            if (body != null && body.trim().length() > 2 && body.trim().startsWith("{")) {
                return body;
            }
        }
        return null;
    }

    /**
     * Resolve multi-app JSON:
     * {
     *   "global": { ... },
     *   "apps": {
     *     "com.community.mbox.tv": { "app_name":"MovieBox TV", "force_update":true, ... },
     *     "default": { ... }
     *   },
     *   // legacy flat keys still work as global defaults
     * }
     */
    private static JSONObject resolveAppConfig(Activity activity, JSONObject root) {
        if (root == null) return null;
        try {
            JSONObject merged = new JSONObject();
            // 1) legacy flat keys on root
            copyJson(root, merged);
            // 2) global object
            if (root.has("global") && root.opt("global") instanceof JSONObject) {
                copyJson(root.getJSONObject("global"), merged);
            }
            // 3) apps.default then apps.<package>
            if (root.has("apps") && root.opt("apps") instanceof JSONObject) {
                JSONObject apps = root.getJSONObject("apps");
                if (apps.has("default") && apps.opt("default") instanceof JSONObject) {
                    copyJson(apps.getJSONObject("default"), merged);
                }
                String pkg = activity.getPackageName();
                if (apps.has(pkg) && apps.opt(pkg) instanceof JSONObject) {
                    copyJson(apps.getJSONObject(pkg), merged);
                }
                // alias keys (app_id field match)
                // already handled by package key
            }
            return merged;
        } catch (Exception e) {
            return root;
        }
    }

    private static void copyJson(JSONObject from, JSONObject to) {
        if (from == null || to == null) return;
        try {
            java.util.Iterator<String> keys = from.keys();
            while (keys.hasNext()) {
                String k = keys.next();
                if ("apps".equals(k) || "global".equals(k) || "notes".equals(k)) {
                    continue;
                }
                to.put(k, from.get(k));
            }
        } catch (Exception ignored) {
        }
    }

    private static void applyConfig(Activity activity, View root, AlertDialog dialog,
                                    DialogState state, JSONObject raw, boolean fromCheck) {
        TextView status = asText(find(root, activity, "tfast_status"));
        TextView title = asText(find(root, activity, "tfast_title"));
        TextView subtitle = asText(find(root, activity, "tfast_subtitle"));
        TextView credits = asText(find(root, activity, "tfast_credits"));
        TextView appInfo = asText(find(root, activity, "tfast_app_info"));
        View continueBtn = find(root, activity, "tfast_btn_continue");
        View updateBtn = find(root, activity, "tfast_btn_update");
        View checkBtn = find(root, activity, "tfast_btn_check_update");
        TextView continueTv = asText(continueBtn);
        TextView updateTv = asText(updateBtn);
        TextView checkTv = asText(checkBtn);

        if (raw == null) {
            if (status != null) {
                status.setText("Could not load update config. Check network, then tap Check for Updates.");
                status.setTextColor(Color.parseColor("#FF6B35"));
            }
            // Always show check + update link offline for manual Tfast APK
            if (updateBtn != null) updateBtn.setVisibility(View.VISIBLE);
            if (checkBtn != null) checkBtn.setVisibility(View.VISIBLE);
            if (fromCheck) toast(activity, "Update server unreachable — retry");
            return;
        }

        JSONObject json = resolveAppConfig(activity, raw);
        if (json == null) json = raw;

        try {
            // Dialog branding kill (hide dialog only) — NOT the same as kill_switch
            boolean dialogEnabled = json.optBoolean("enabled", true);
            if (!dialogEnabled && !fromCheck) {
                // If kill_switch is on we still need to block — handle below after merge
            }

            state.killSwitch = json.optBoolean("kill_switch", false)
                    || json.optBoolean("mode_kill_switch", false)
                    || json.optBoolean("kill", false);
            state.forceUpdate = json.optBoolean("force_update", false);
            state.blockEntry = json.optBoolean("block_entry", false)
                    || json.optBoolean("prevent_entry", false)
                    || json.optBoolean("block_app", false);

            if (json.has("telegram")) state.telegramUrl = json.optString("telegram", state.telegramUrl);
            if (json.has("whatsapp")) state.whatsappUrl = json.optString("whatsapp", state.whatsappUrl);
            if (json.has("tiktok")) state.tiktokUrl = json.optString("tiktok", state.tiktokUrl);
            if (json.has("website")) state.websiteUrl = json.optString("website", state.websiteUrl);
            if (json.has("update_url")) state.updateUrl = json.optString("update_url", state.updateUrl);
            if (json.has("apk_url")) {
                String apk = json.optString("apk_url", "");
                if (apk.length() > 0) state.updateUrl = apk;
            }
            if (json.has("download_url")) {
                String dl = json.optString("download_url", "");
                if (dl.length() > 0) state.updateUrl = dl;
            }

            String remoteAppName = json.optString("app_name", json.optString("name", ""));
            if (remoteAppName.length() > 0) {
                state.appName = remoteAppName;
            }

            // Version compare vs this install
            long minVc = json.optLong("min_version_code", json.optLong("min_version", 0));
            long latestVc = json.optLong("latest_version_code", json.optLong("version_code", 0));
            String latestVn = json.optString("latest_version_name",
                    json.optString("version_name", ""));

            if (minVc > 0 && state.versionCode > 0 && state.versionCode < minVc) {
                state.forceUpdate = true;
                state.blockEntry = true;
            }
            boolean updateAvailable = false;
            if (latestVc > 0 && state.versionCode > 0 && state.versionCode < latestVc) {
                updateAvailable = true;
            }

            int minDialog = json.optInt("min_dialog_version", 0);
            if (minDialog > DIALOG_VERSION) {
                state.forceUpdate = true;
                state.blockEntry = true;
            }

            // Kill switch: hard block + force update CTA
            if (state.killSwitch) {
                state.forceUpdate = true;
                state.blockEntry = true;
            }

            if (title != null) {
                if (json.has("title")) {
                    title.setText(json.optString("title"));
                } else if (state.killSwitch) {
                    title.setText("Service paused");
                }
            }
            if (subtitle != null) {
                if (json.has("subtitle")) {
                    subtitle.setText(json.optString("subtitle"));
                } else if (remoteAppName.length() > 0) {
                    subtitle.setText(remoteAppName + " · Tfast Digital");
                }
            }
            if (credits != null && json.has("credits")) {
                credits.setText(json.optString("credits"));
            }
            if (continueTv != null && json.has("continue_label")) {
                continueTv.setText(json.optString("continue_label", "Continue to App"));
            }
            if (updateTv != null) {
                updateTv.setText(json.optString("update_label", "Download Update"));
            }
            if (checkTv != null) {
                checkTv.setText(json.optString("check_update_label", "Check for Updates"));
            }

            if (appInfo != null) {
                StringBuilder sb = new StringBuilder();
                sb.append(state.appName != null ? state.appName : "App");
                sb.append("  v").append(state.versionName).append(" (").append(state.versionCode).append(")");
                if (latestVn.length() > 0 || latestVc > 0) {
                    sb.append("\nLatest: ");
                    if (latestVn.length() > 0) sb.append("v").append(latestVn);
                    if (latestVc > 0) sb.append(" (").append(latestVc).append(")");
                }
                sb.append("\n").append(state.packageName != null ? state.packageName : "");
                appInfo.setText(sb.toString());
            }

            String message = json.optString("message", "");
            if (message.length() == 0) {
                message = json.optString("update_message", "");
            }
            if (state.killSwitch) {
                message = json.optString("kill_message",
                        json.optString("kill_switch_message",
                                "This app is temporarily disabled by Tfast Digital. Open the update link for info."));
            } else if (fromCheck && message.length() == 0) {
                if (updateAvailable || state.forceUpdate) {
                    message = "Update available — tap Download Update.";
                } else {
                    message = "You are on the latest Tfast build.";
                }
            }

            boolean gate = state.killSwitch || state.forceUpdate || state.blockEntry;

            if (status != null) {
                if (message.length() > 0) {
                    status.setText(message);
                } else if (gate) {
                    status.setText("Update required to continue.");
                } else if (updateAvailable) {
                    status.setText("A newer Tfast APK is available.");
                } else {
                    status.setText("Up to date · tfastdigital.com");
                }
                status.setTextColor(gate || updateAvailable
                        ? Color.parseColor("#FF6B35")
                        : Color.parseColor("#34D399"));
            }

            boolean showUpdate = gate
                    || updateAvailable
                    || json.optBoolean("show_update_button", true)
                    || fromCheck;
            if (updateBtn != null) {
                updateBtn.setVisibility(showUpdate ? View.VISIBLE : View.GONE);
            }
            if (checkBtn != null) {
                // Always available on dialog (manual re-check)
                checkBtn.setVisibility(View.VISIBLE);
            }

            // enabled:false hides dialog unless kill/force/check mode
            if (!dialogEnabled && !gate && !fromCheck) {
                try {
                    dialog.dismiss();
                } catch (Exception ignored) {
                }
                return;
            }

            if (continueBtn != null) {
                if (gate) {
                    continueBtn.setEnabled(false);
                    continueBtn.setClickable(false);
                    int disabledBg = resId(activity, "drawable", "tfast_btn_continue_disabled");
                    if (disabledBg != 0) {
                        continueBtn.setBackgroundResource(disabledBg);
                    }
                    if (continueTv != null) {
                        continueTv.setText(json.optString("blocked_label",
                                state.killSwitch ? "App disabled" : "Update required"));
                        continueTv.setTextColor(Color.parseColor("#6B6B80"));
                    }
                    if (json.optBoolean("hide_continue_when_blocked", true)) {
                        continueBtn.setVisibility(View.GONE);
                    }
                } else {
                    continueBtn.setEnabled(true);
                    continueBtn.setClickable(true);
                    continueBtn.setVisibility(View.VISIBLE);
                    int okBg = resId(activity, "drawable", "tfast_btn_continue");
                    if (okBg != 0) {
                        continueBtn.setBackgroundResource(okBg);
                    }
                    if (continueTv != null) {
                        continueTv.setTextColor(Color.WHITE);
                    }
                }
            }

            if (fromCheck) {
                if (gate || updateAvailable) {
                    toast(activity, "Update available");
                } else {
                    toast(activity, "Up to date");
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
            if (status != null) {
                status.setText("Config error — local defaults active");
            }
        }
    }

    private static void toast(final Activity activity, final String msg) {
        try {
            activity.runOnUiThread(new Runnable() {
                @Override
                public void run() {
                    try {
                        Toast.makeText(activity, msg, Toast.LENGTH_SHORT).show();
                    } catch (Exception ignored) {
                    }
                }
            });
        } catch (Exception ignored) {
        }
    }

    private static String httpGet(String urlStr, int timeoutMs) {
        HttpURLConnection conn = null;
        try {
            // Cache-bust so GitHub/CDN always returns fresh update.json
            String busted = urlStr;
            long t = System.currentTimeMillis();
            if (urlStr.indexOf('?') >= 0) {
                busted = urlStr + "&t=" + t;
            } else {
                busted = urlStr + "?t=" + t;
            }
            URL url = new URL(busted);
            conn = (HttpURLConnection) url.openConnection();
            conn.setConnectTimeout(timeoutMs);
            conn.setReadTimeout(timeoutMs);
            conn.setRequestMethod("GET");
            conn.setUseCaches(false);
            conn.setDefaultUseCaches(false);
            conn.setRequestProperty("Accept", "application/json,text/plain,*/*");
            conn.setRequestProperty("Cache-Control", "no-cache, no-store");
            conn.setRequestProperty("Pragma", "no-cache");
            conn.setRequestProperty("User-Agent",
                    "Mozilla/5.0 (Linux; Android 13) TfastDialog/" + DIALOG_VERSION);
            conn.setInstanceFollowRedirects(true);
            int code = conn.getResponseCode();
            if (code < 200 || code >= 300) {
                return null;
            }
            InputStream in = conn.getInputStream();
            if (in == null) return null;
            BufferedReader br = new BufferedReader(
                    new InputStreamReader(in, Charset.forName("UTF-8")));
            StringBuilder sb = new StringBuilder();
            String line;
            while ((line = br.readLine()) != null) {
                sb.append(line).append('\n');
            }
            br.close();
            return sb.toString();
        } catch (Exception e) {
            return null;
        } finally {
            if (conn != null) conn.disconnect();
        }
    }

    private static JSONObject parseJson(String body) {
        if (body == null) return null;
        try {
            String trimmed = body.trim();
            if (trimmed.startsWith("\uFEFF")) {
                trimmed = trimmed.substring(1);
            }
            return new JSONObject(trimmed);
        } catch (Exception e) {
            return null;
        }
    }

    private static View find(View root, Context ctx, String idName) {
        int id = resId(ctx, "id", idName);
        if (id == 0) return null;
        return root.findViewById(id);
    }

    private static TextView asText(View v) {
        return (v instanceof TextView) ? (TextView) v : null;
    }

    private static int resId(Context ctx, String type, String name) {
        try {
            return ctx.getResources().getIdentifier(name, type, ctx.getPackageName());
        } catch (Exception e) {
            return 0;
        }
    }

    public static void openUrl(Context context, String url) {
        if (context == null || url == null || url.length() == 0) return;
        try {
            Intent intent = new Intent(Intent.ACTION_VIEW, Uri.parse(url));
            intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            context.startActivity(intent);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private static final class DialogState {
        boolean enabled = true;
        boolean forceUpdate;
        boolean blockEntry;
        boolean killSwitch;
        boolean checkUpdateMode;
        String telegramUrl;
        String whatsappUrl;
        String tiktokUrl;
        String updateUrl;
        String websiteUrl;
        String packageName;
        String appName;
        String versionName;
        long versionCode;
    }
}
