package com.tfastdigital.dialog;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.widget.TextView;

import org.json.JSONObject;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.StandardCharsets;

/**
 * Tfast Brand Dialog + GitHub remote config.
 *
 * Package: com.tfastdigital.dialog (works in ANY host APK — not tied to one app).
 * Always shows every launch (no “show once” prefs).
 *
 * Remote config (default):
 *   https://raw.githubusercontent.com/tfastdigital/tfast_dialog_template/main/config/update.json
 *
 * Inject call (smali):
 *   invoke-static {p0}, Lcom/tfastdigital/dialog/TfastDialogHelper;->show(Landroid/app/Activity;)V
 *
 * Requires INTERNET permission in the host APK for remote updates.
 */
public final class TfastDialogHelper {

    /** Bump when shipping template code changes (local client version). */
    public static final int DIALOG_VERSION = 2;

    public static final String DEFAULT_CONFIG_URL =
            "https://raw.githubusercontent.com/tfastdigital/tfast_dialog_template/main/config/update.json";

    // Built-in fallbacks if network/config fails
    private static final String DEFAULT_TELEGRAM = "https://t.me/tfasthub";
    private static final String DEFAULT_WHATSAPP =
            "https://whatsapp.com/channel/0029VaAYznPK5cDIXJa9nW1a";
    private static final String DEFAULT_TIKTOK = "https://www.tiktok.com/@tfasthub";
    private static final String DEFAULT_WEBSITE = "https://tfastdigital.com";

    private TfastDialogHelper() {
    }

    /** Show branded dialog every time; fetch remote config in background. */
    public static void show(final Activity activity) {
        show(activity, DEFAULT_CONFIG_URL, null);
    }

    /** Show with custom config URL (per-app update channel). */
    public static void show(final Activity activity, final String configUrl) {
        show(activity, configUrl, null);
    }

    /**
     * @param activity   host activity (usually launcher / main)
     * @param configUrl  raw JSON URL (GitHub raw, CDN, etc.)
     * @param onContinue optional callback after user taps Continue (may be null)
     */
    public static void show(final Activity activity, final String configUrl, final Runnable onContinue) {
        if (activity == null || activity.isFinishing()) {
            return;
        }
        try {
            final int layoutId = resId(activity, "layout", "tfast_brand_dialog");
            if (layoutId == 0) {
                // Fallback: layout missing — do not crash host app
                return;
            }

            final View root = LayoutInflater.from(activity).inflate(layoutId, null);
            final DialogState state = new DialogState();
            state.telegramUrl = DEFAULT_TELEGRAM;
            state.whatsappUrl = DEFAULT_WHATSAPP;
            state.tiktokUrl = DEFAULT_TIKTOK;
            state.updateUrl = DEFAULT_WEBSITE;
            state.blockEntry = false;
            state.forceUpdate = false;
            state.enabled = true;

            wireSocial(activity, root, state);
            applyLogo(activity, root);

            final AlertDialog.Builder builder = new AlertDialog.Builder(activity);
            builder.setView(root);
            builder.setCancelable(false);
            final AlertDialog dialog = builder.create();

            final View continueBtn = find(root, activity, "tfast_btn_continue");
            final View updateBtn = find(root, activity, "tfast_btn_update");

            if (continueBtn != null) {
                continueBtn.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        if (state.blockEntry || state.forceUpdate) {
                            return; // hard gate — cannot enter
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
                        openUrl(activity, state.updateUrl);
                    }
                });
            }

            // Dim window for premium look
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

            // Always pull remote config (updates, block, copy, links)
            final String url = (configUrl == null || configUrl.length() == 0)
                    ? DEFAULT_CONFIG_URL : configUrl;
            fetchAndApply(activity, root, dialog, state, url);

        } catch (Exception e) {
            e.printStackTrace();
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
        // Credits row → website
        final View credits = find(root, activity, "tfast_credits");
        if (credits != null) {
            credits.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    openUrl(activity, DEFAULT_WEBSITE);
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
                                      final String configUrl) {
        final Handler main = new Handler(Looper.getMainLooper());
        new Thread(new Runnable() {
            @Override
            public void run() {
                String body = httpGet(configUrl, 8000);
                final JSONObject json = parseJson(body);
                main.post(new Runnable() {
                    @Override
                    public void run() {
                        if (activity.isFinishing()) return;
                        applyConfig(activity, root, dialog, state, json);
                    }
                });
            }
        }, "tfast-config").start();
    }

    private static void applyConfig(Activity activity, View root, AlertDialog dialog,
                                    DialogState state, JSONObject json) {
        TextView status = asText(find(root, activity, "tfast_status"));
        TextView title = asText(find(root, activity, "tfast_title"));
        TextView subtitle = asText(find(root, activity, "tfast_subtitle"));
        TextView credits = asText(find(root, activity, "tfast_credits"));
        View continueBtn = find(root, activity, "tfast_btn_continue");
        View updateBtn = find(root, activity, "tfast_btn_update");
        TextView continueTv = asText(continueBtn);
        TextView updateTv = asText(updateBtn);

        if (json == null) {
            if (status != null) {
                status.setText("Offline — using local defaults");
                status.setTextColor(Color.parseColor("#9B9BB0"));
            }
            return;
        }

        try {
            // Master kill-switch: hide dialog entirely
            if (json.has("enabled") && !json.optBoolean("enabled", true)) {
                try {
                    dialog.dismiss();
                } catch (Exception ignored) {
                }
                return;
            }

            state.forceUpdate = json.optBoolean("force_update", false);
            state.blockEntry = json.optBoolean("block_entry", false);
            // Alias: prevent_entry / block_app
            if (json.optBoolean("prevent_entry", false) || json.optBoolean("block_app", false)) {
                state.blockEntry = true;
            }

            if (json.has("telegram")) state.telegramUrl = json.optString("telegram", state.telegramUrl);
            if (json.has("whatsapp")) state.whatsappUrl = json.optString("whatsapp", state.whatsappUrl);
            if (json.has("tiktok")) state.tiktokUrl = json.optString("tiktok", state.tiktokUrl);
            if (json.has("update_url")) state.updateUrl = json.optString("update_url", state.updateUrl);
            if (json.has("apk_url") && state.updateUrl.equals(DEFAULT_WEBSITE)) {
                state.updateUrl = json.optString("apk_url", state.updateUrl);
            }

            if (title != null && json.has("title")) {
                title.setText(json.optString("title", title.getText().toString()));
            }
            if (subtitle != null && json.has("subtitle")) {
                subtitle.setText(json.optString("subtitle", subtitle.getText().toString()));
            }
            if (credits != null && json.has("credits")) {
                credits.setText(json.optString("credits", credits.getText().toString()));
            }
            if (continueTv != null && json.has("continue_label")) {
                continueTv.setText(json.optString("continue_label", "Continue to App"));
            }
            if (updateTv != null && json.has("update_label")) {
                updateTv.setText(json.optString("update_label", "Download Update"));
            }

            String message = json.optString("message", "");
            if (message.length() == 0) {
                message = json.optString("update_message", "");
            }

            boolean gate = state.forceUpdate || state.blockEntry;

            if (status != null) {
                if (message.length() > 0) {
                    status.setText(message);
                } else if (state.blockEntry) {
                    status.setText("Access paused — please update to continue.");
                } else if (state.forceUpdate) {
                    status.setText("A required update is available.");
                } else {
                    status.setText("You're up to date · tfastdigital.com");
                }
                status.setTextColor(gate
                        ? Color.parseColor("#FF6B35")
                        : Color.parseColor("#34D399"));
            }

            // Update button visibility
            if (updateBtn != null) {
                boolean showUpdate = gate
                        || json.optBoolean("show_update_button", false)
                        || (json.has("update_url") && gate);
                if (json.has("update_url") && (gate || json.optBoolean("show_update_button", false))) {
                    showUpdate = true;
                }
                if (json.optBoolean("show_update_button", false)) showUpdate = true;
                if (gate && state.updateUrl != null && state.updateUrl.length() > 0) {
                    showUpdate = true;
                }
                updateBtn.setVisibility(showUpdate ? View.VISIBLE : View.GONE);
            }

            // Hard gate: cannot continue into the app
            if (continueBtn != null) {
                if (gate) {
                    continueBtn.setEnabled(false);
                    continueBtn.setClickable(false);
                    int disabledBg = resId(activity, "drawable", "tfast_btn_continue_disabled");
                    if (disabledBg != 0) {
                        continueBtn.setBackgroundResource(disabledBg);
                    }
                    if (continueTv != null) {
                        continueTv.setText(json.optString("blocked_label", "Update required"));
                        continueTv.setTextColor(Color.parseColor("#6B6B80"));
                    }
                    // Optional: hide continue entirely
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

            // Optional: min client dialog version → force update if too old
            int minVer = json.optInt("min_dialog_version", 0);
            if (minVer > DIALOG_VERSION) {
                state.forceUpdate = true;
                state.blockEntry = true;
                if (status != null) {
                    status.setText(json.optString("outdated_message",
                            "This build is outdated. Please download the latest APK."));
                    status.setTextColor(Color.parseColor("#FF6B35"));
                }
                if (updateBtn != null) updateBtn.setVisibility(View.VISIBLE);
                if (continueBtn != null) {
                    continueBtn.setVisibility(View.GONE);
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
            if (status != null) {
                status.setText("Config error — local defaults active");
            }
        }
    }

    private static String httpGet(String urlStr, int timeoutMs) {
        HttpURLConnection conn = null;
        try {
            URL url = new URL(urlStr);
            conn = (HttpURLConnection) url.openConnection();
            conn.setConnectTimeout(timeoutMs);
            conn.setReadTimeout(timeoutMs);
            conn.setRequestMethod("GET");
            conn.setRequestProperty("Accept", "application/json");
            conn.setRequestProperty("User-Agent", "TfastDialog/" + DIALOG_VERSION);
            conn.setInstanceFollowRedirects(true);
            int code = conn.getResponseCode();
            InputStream in = (code >= 200 && code < 300) ? conn.getInputStream() : conn.getErrorStream();
            if (in == null) return null;
            BufferedReader br = new BufferedReader(new InputStreamReader(in, StandardCharsets.UTF_8));
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
            // Strip UTF-8 BOM if present
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

    /** Mutable remote state shared with click listeners. */
    private static final class DialogState {
        boolean enabled = true;
        boolean forceUpdate;
        boolean blockEntry;
        String telegramUrl;
        String whatsappUrl;
        String tiktokUrl;
        String updateUrl;
    }
}
