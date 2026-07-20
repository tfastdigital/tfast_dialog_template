.class public final Lcom/tfastdigital/dialog/TfastDialogHelper;
.super Ljava/lang/Object;
.source "TfastDialogHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;,
        Lcom/tfastdigital/dialog/TfastDialogHelper$UrlProvider;
    }
.end annotation


# static fields
.field private static final CONFIG_URLS:[Ljava/lang/String;

.field public static final DEFAULT_CONFIG_URL:Ljava/lang/String; = "https://raw.githubusercontent.com/tfastdigital/tfast_dialog_template/refs/heads/main/config/update.json"

.field private static final DEFAULT_TELEGRAM:Ljava/lang/String; = "https://t.me/tfasthub"

.field private static final DEFAULT_TIKTOK:Ljava/lang/String; = "https://www.tiktok.com/@tfasthub"

.field private static final DEFAULT_WEBSITE:Ljava/lang/String; = "https://tfastdigital.com"

.field private static final DEFAULT_WHATSAPP:Ljava/lang/String; = "https://whatsapp.com/channel/0029VaAYznPK5cDIXJa9nW1a"

.field public static final DIALOG_VERSION:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 53
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "https://raw.githubusercontent.com/tfastdigital/tfast_dialog_template/refs/heads/main/config/update.json"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "https://raw.githubusercontent.com/tfastdigital/tfast_dialog_template/main/config/update.json"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "https://cdn.jsdelivr.net/gh/tfastdigital/tfast_dialog_template@main/config/update.json"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "https://raw.githubusercontent.com/tfastdigital/munowatch-update-panel/refs/heads/main/dialog/update.json"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "https://raw.githubusercontent.com/tfastdigital/munowatch-update-panel/main/dialog/update.json"

    aput-object v2, v0, v1

    sput-object v0, Lcom/tfastdigital/dialog/TfastDialogHelper;->CONFIG_URLS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    return-void
.end method

.method static synthetic access$100(Landroid/view/View;Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;
    .registers 3

    .line 42
    invoke-static {p0, p1, p2}, Lcom/tfastdigital/dialog/TfastDialogHelper;->find(Landroid/view/View;Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Landroid/view/View;)Landroid/widget/TextView;
    .registers 1

    .line 42
    invoke-static {p0}, Lcom/tfastdigital/dialog/TfastDialogHelper;->asText(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 2

    .line 42
    invoke-static {p0, p1}, Lcom/tfastdigital/dialog/TfastDialogHelper;->toast(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Landroid/app/Activity;Landroid/view/View;Landroid/app/AlertDialog;Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;Ljava/lang/String;Z)V
    .registers 6

    .line 42
    invoke-static/range {p0 .. p5}, Lcom/tfastdigital/dialog/TfastDialogHelper;->fetchAndApply(Landroid/app/Activity;Landroid/view/View;Landroid/app/AlertDialog;Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$500(Ljava/lang/String;I)Ljava/lang/String;
    .registers 2

    .line 42
    invoke-static {p0, p1}, Lcom/tfastdigital/dialog/TfastDialogHelper;->httpGetFirstOk(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 1

    .line 42
    invoke-static {p0}, Lcom/tfastdigital/dialog/TfastDialogHelper;->parseJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Landroid/app/Activity;Landroid/view/View;Landroid/app/AlertDialog;Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;Lorg/json/JSONObject;Z)V
    .registers 6

    .line 42
    invoke-static/range {p0 .. p5}, Lcom/tfastdigital/dialog/TfastDialogHelper;->applyConfig(Landroid/app/Activity;Landroid/view/View;Landroid/app/AlertDialog;Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;Lorg/json/JSONObject;Z)V

    return-void
.end method

.method private static applyConfig(Landroid/app/Activity;Landroid/view/View;Landroid/app/AlertDialog;Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;Lorg/json/JSONObject;Z)V
    .registers 40

    .line 392
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    const-string v4, ")"

    const-string v5, " ("

    const-string v6, "continue_label"

    const-string v7, "credits"

    const-string v8, "subtitle"

    const-string v9, "title"

    const-string v10, "download_url"

    const-string v11, "apk_url"

    const-string v12, "update_url"

    const-string v13, "website"

    const-string v14, "tiktok"

    const-string v15, "whatsapp"

    move-object/from16 v16, v4

    const-string v4, "telegram"

    move-object/from16 v17, v5

    const-string v5, "tfast_status"

    invoke-static {v1, v0, v5}, Lcom/tfastdigital/dialog/TfastDialogHelper;->find(Landroid/view/View;Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Lcom/tfastdigital/dialog/TfastDialogHelper;->asText(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v5

    .line 393
    move-object/from16 v18, v6

    const-string v6, "tfast_title"

    invoke-static {v1, v0, v6}, Lcom/tfastdigital/dialog/TfastDialogHelper;->find(Landroid/view/View;Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Lcom/tfastdigital/dialog/TfastDialogHelper;->asText(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v6

    .line 394
    move-object/from16 v19, v7

    const-string v7, "tfast_subtitle"

    invoke-static {v1, v0, v7}, Lcom/tfastdigital/dialog/TfastDialogHelper;->find(Landroid/view/View;Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v7

    invoke-static {v7}, Lcom/tfastdigital/dialog/TfastDialogHelper;->asText(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v7

    .line 395
    move-object/from16 v20, v8

    const-string v8, "tfast_credits"

    invoke-static {v1, v0, v8}, Lcom/tfastdigital/dialog/TfastDialogHelper;->find(Landroid/view/View;Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v8

    invoke-static {v8}, Lcom/tfastdigital/dialog/TfastDialogHelper;->asText(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v8

    .line 396
    move-object/from16 v21, v8

    const-string v8, "tfast_app_info"

    invoke-static {v1, v0, v8}, Lcom/tfastdigital/dialog/TfastDialogHelper;->find(Landroid/view/View;Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v8

    invoke-static {v8}, Lcom/tfastdigital/dialog/TfastDialogHelper;->asText(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v8

    .line 397
    move-object/from16 v22, v8

    const-string v8, "tfast_btn_continue"

    move-object/from16 v23, v7

    invoke-static {v1, v0, v8}, Lcom/tfastdigital/dialog/TfastDialogHelper;->find(Landroid/view/View;Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v7

    .line 398
    move-object/from16 v24, v8

    const-string v8, "tfast_btn_update"

    invoke-static {v1, v0, v8}, Lcom/tfastdigital/dialog/TfastDialogHelper;->find(Landroid/view/View;Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v8

    .line 399
    move-object/from16 v25, v9

    const-string v9, "tfast_btn_check_update"

    invoke-static {v1, v0, v9}, Lcom/tfastdigital/dialog/TfastDialogHelper;->find(Landroid/view/View;Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 400
    invoke-static {v7}, Lcom/tfastdigital/dialog/TfastDialogHelper;->asText(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v9

    .line 401
    move-object/from16 v26, v7

    invoke-static {v8}, Lcom/tfastdigital/dialog/TfastDialogHelper;->asText(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v7

    .line 402
    move-object/from16 p1, v7

    invoke-static {v1}, Lcom/tfastdigital/dialog/TfastDialogHelper;->asText(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v7

    .line 404
    const-string v27, "#FF6B35"

    move-object/from16 v28, v7

    const/4 v7, 0x0

    if-nez v3, :cond_b1

    .line 405
    if-eqz v5, :cond_9f

    .line 406
    const-string v2, "Could not load update config. Check network, then tap Check for Updates."

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 407
    invoke-static/range {v27 .. v27}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 410
    :cond_9f
    if-eqz v8, :cond_a4

    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    .line 411
    :cond_a4
    if-eqz v1, :cond_a9

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 412
    :cond_a9
    if-eqz p5, :cond_b0

    const-string v1, "Update server unreachable \u2014 retry"

    invoke-static {v0, v1}, Lcom/tfastdigital/dialog/TfastDialogHelper;->toast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 413
    :cond_b0
    return-void

    .line 416
    :cond_b1
    invoke-static {v0, v3}, Lcom/tfastdigital/dialog/TfastDialogHelper;->resolveAppConfig(Landroid/app/Activity;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v29

    .line 417
    if-nez v29, :cond_b8

    goto :goto_ba

    :cond_b8
    move-object/from16 v3, v29

    .line 421
    :goto_ba
    :try_start_ba
    const-string v7, "enabled"

    const/4 v0, 0x1

    invoke-virtual {v3, v7, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 422
    nop

    .line 426
    const-string v0, "kill_switch"

    move/from16 v30, v7

    const/4 v7, 0x0

    invoke-virtual {v3, v0, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_e0

    const-string v0, "mode_kill_switch"

    .line 427
    invoke-virtual {v3, v0, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_e0

    const-string v0, "kill"

    .line 428
    invoke-virtual {v3, v0, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_de

    goto :goto_e0

    :cond_de
    const/4 v0, 0x0

    goto :goto_e1

    :cond_e0
    :goto_e0
    const/4 v0, 0x1

    :goto_e1
    iput-boolean v0, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->killSwitch:Z

    .line 429
    const-string v0, "force_update"

    const/4 v7, 0x0

    invoke-virtual {v3, v0, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->forceUpdate:Z

    .line 430
    const-string v0, "block_entry"

    invoke-virtual {v3, v0, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_107

    const-string v0, "prevent_entry"

    .line 431
    invoke-virtual {v3, v0, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_107

    const-string v0, "block_app"

    .line 432
    invoke-virtual {v3, v0, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_105

    goto :goto_107

    :cond_105
    const/4 v0, 0x0

    goto :goto_108

    :cond_107
    :goto_107
    const/4 v0, 0x1

    :goto_108
    iput-boolean v0, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->blockEntry:Z

    .line 434
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_118

    iget-object v0, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->telegramUrl:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->telegramUrl:Ljava/lang/String;

    .line 435
    :cond_118
    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_126

    iget-object v0, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->whatsappUrl:Ljava/lang/String;

    invoke-virtual {v3, v15, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->whatsappUrl:Ljava/lang/String;

    .line 436
    :cond_126
    invoke-virtual {v3, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_134

    iget-object v0, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->tiktokUrl:Ljava/lang/String;

    invoke-virtual {v3, v14, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->tiktokUrl:Ljava/lang/String;

    .line 437
    :cond_134
    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_142

    iget-object v0, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->websiteUrl:Ljava/lang/String;

    invoke-virtual {v3, v13, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->websiteUrl:Ljava/lang/String;

    .line 438
    :cond_142
    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_150

    iget-object v0, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->updateUrl:Ljava/lang/String;

    invoke-virtual {v3, v12, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->updateUrl:Ljava/lang/String;

    .line 439
    :cond_150
    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0
    :try_end_154
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_154} :catch_42d

    const-string v4, ""

    if-eqz v0, :cond_164

    .line 440
    :try_start_158
    invoke-virtual {v3, v11, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 441
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_164

    iput-object v0, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->updateUrl:Ljava/lang/String;

    .line 443
    :cond_164
    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_176

    .line 444
    invoke-virtual {v3, v10, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 445
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_176

    iput-object v0, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->updateUrl:Ljava/lang/String;

    .line 448
    :cond_176
    const-string v0, "app_name"

    const-string v7, "name"

    invoke-virtual {v3, v7, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 449
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_18a

    .line 450
    iput-object v0, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->appName:Ljava/lang/String;

    .line 454
    :cond_18a
    const-string v7, "min_version_code"

    const-string v10, "min_version"

    const-wide/16 v11, 0x0

    invoke-virtual {v3, v10, v11, v12}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v13

    invoke-virtual {v3, v7, v13, v14}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v13

    .line 455
    const-string v7, "latest_version_code"

    const-string v10, "version_code"

    move-object/from16 v31, v8

    move-object v15, v9

    invoke-virtual {v3, v10, v11, v12}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-virtual {v3, v7, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 456
    const-string v9, "latest_version_name"

    const-string v10, "version_name"

    .line 457
    invoke-virtual {v3, v10, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 456
    invoke-virtual {v3, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 459
    cmp-long v10, v13, v11

    if-lez v10, :cond_1ca

    iget-wide v11, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->versionCode:J

    const-wide/16 v32, 0x0

    cmp-long v10, v11, v32

    if-lez v10, :cond_1ca

    iget-wide v10, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->versionCode:J

    cmp-long v12, v10, v13

    if-gez v12, :cond_1ca

    .line 460
    const/4 v10, 0x1

    iput-boolean v10, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->forceUpdate:Z

    .line 461
    iput-boolean v10, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->blockEntry:Z

    .line 463
    :cond_1ca
    nop

    .line 464
    const-wide/16 v10, 0x0

    cmp-long v12, v7, v10

    if-lez v12, :cond_1df

    iget-wide v13, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->versionCode:J

    cmp-long v32, v13, v10

    if-lez v32, :cond_1df

    iget-wide v10, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->versionCode:J

    cmp-long v13, v10, v7

    if-gez v13, :cond_1df

    .line 465
    const/4 v10, 0x1

    goto :goto_1e0

    .line 468
    :cond_1df
    const/4 v10, 0x0

    :goto_1e0
    const-string v11, "min_dialog_version"

    const/4 v13, 0x0

    invoke-virtual {v3, v11, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    .line 469
    const/4 v13, 0x4

    if-le v11, v13, :cond_1ef

    .line 470
    const/4 v11, 0x1

    iput-boolean v11, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->forceUpdate:Z

    .line 471
    iput-boolean v11, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->blockEntry:Z

    .line 475
    :cond_1ef
    iget-boolean v11, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->killSwitch:Z

    if-eqz v11, :cond_1f8

    .line 476
    const/4 v11, 0x1

    iput-boolean v11, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->forceUpdate:Z

    .line 477
    iput-boolean v11, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->blockEntry:Z

    .line 480
    :cond_1f8
    if-eqz v6, :cond_213

    .line 481
    move-object/from16 v11, v25

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_20a

    .line 482
    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_213

    .line 483
    :cond_20a
    iget-boolean v11, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->killSwitch:Z

    if-eqz v11, :cond_213

    .line 484
    const-string v11, "Service paused"

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 487
    :cond_213
    :goto_213
    if-eqz v23, :cond_245

    .line 488
    move-object/from16 v6, v20

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_227

    .line 489
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v6, v23

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_245

    .line 490
    :cond_227
    move-object/from16 v6, v23

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_245

    .line 491
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, " \u00b7 Tfast Digital"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 494
    :cond_245
    :goto_245
    if-eqz v21, :cond_258

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_258

    .line 495
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v6, v21

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 497
    :cond_258
    if-eqz v15, :cond_26d

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_26d

    .line 498
    const-string v6, "Continue to App"

    invoke-virtual {v3, v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v6, v15

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_26e

    .line 497
    :cond_26d
    move-object v6, v15

    .line 500
    :goto_26e
    if-eqz p1, :cond_27d

    .line 501
    const-string v0, "update_label"

    const-string v11, "Download Update"

    invoke-virtual {v3, v0, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v11, p1

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 503
    :cond_27d
    if-eqz v28, :cond_28c

    .line 504
    const-string v0, "check_update_label"

    const-string v11, "Check for Updates"

    invoke-virtual {v3, v0, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v11, v28

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 507
    :cond_28c
    if-eqz v22, :cond_2ff

    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 509
    iget-object v11, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->appName:Ljava/lang/String;

    if-eqz v11, :cond_29a

    iget-object v11, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->appName:Ljava/lang/String;

    goto :goto_29c

    :cond_29a
    const-string v11, "App"

    :goto_29c
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    const-string v11, "  v"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v13, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->versionName:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v13, v17

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v14, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->versionCode:J

    invoke-virtual {v11, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v14, v16

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    if-gtz v11, :cond_2c4

    if-lez v12, :cond_2e5

    .line 512
    :cond_2c4
    const-string v11, "\nLatest: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_2d8

    const-string v11, "v"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    :cond_2d8
    if-lez v12, :cond_2e5

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    :cond_2e5
    const-string v7, "\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->packageName:Ljava/lang/String;

    if-eqz v8, :cond_2f2

    iget-object v8, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->packageName:Ljava/lang/String;

    goto :goto_2f3

    :cond_2f2
    move-object v8, v4

    :goto_2f3
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v7, v22

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 520
    :cond_2ff
    const-string v0, "message"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 521
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_311

    .line 522
    const-string v0, "update_message"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 524
    :cond_311
    iget-boolean v4, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->killSwitch:Z

    if-eqz v4, :cond_324

    .line 525
    const-string v0, "kill_message"

    const-string v4, "kill_switch_message"

    const-string v7, "This app is temporarily disabled by Tfast Digital. Open the update link for info."

    .line 526
    invoke-virtual {v3, v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 525
    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_338

    .line 528
    :cond_324
    if-eqz p5, :cond_338

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_338

    .line 529
    if-nez v10, :cond_336

    iget-boolean v0, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->forceUpdate:Z

    if-eqz v0, :cond_333

    goto :goto_336

    .line 532
    :cond_333
    const-string v0, "You are on the latest Tfast build."

    goto :goto_338

    .line 530
    :cond_336
    :goto_336
    const-string v0, "Update available \u2014 tap Download Update."

    .line 536
    :cond_338
    :goto_338
    iget-boolean v4, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->killSwitch:Z

    if-nez v4, :cond_347

    iget-boolean v4, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->forceUpdate:Z

    if-nez v4, :cond_347

    iget-boolean v4, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->blockEntry:Z

    if-eqz v4, :cond_345

    goto :goto_347

    :cond_345
    const/4 v7, 0x0

    goto :goto_348

    :cond_347
    :goto_347
    const/4 v7, 0x1

    .line 538
    :goto_348
    if-eqz v5, :cond_37c

    .line 539
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_354

    .line 540
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_369

    .line 541
    :cond_354
    if-eqz v7, :cond_35c

    .line 542
    const-string v0, "Update required to continue."

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_369

    .line 543
    :cond_35c
    if-eqz v10, :cond_364

    .line 544
    const-string v0, "A newer Tfast APK is available."

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_369

    .line 546
    :cond_364
    const-string v0, "Up to date \u00b7 tfastdigital.com"

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 548
    :goto_369
    if-nez v7, :cond_375

    if-eqz v10, :cond_36e

    goto :goto_375

    .line 550
    :cond_36e
    const-string v0, "#34D399"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_379

    .line 549
    :cond_375
    :goto_375
    invoke-static/range {v27 .. v27}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 548
    :goto_379
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 553
    :cond_37c
    if-nez v7, :cond_38e

    if-nez v10, :cond_38e

    const-string v0, "show_update_button"

    .line 555
    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_38f

    if-eqz p5, :cond_38c

    goto :goto_38f

    :cond_38c
    const/4 v0, 0x0

    goto :goto_390

    .line 553
    :cond_38e
    const/4 v4, 0x1

    .line 555
    :cond_38f
    :goto_38f
    const/4 v0, 0x1

    .line 557
    :goto_390
    const/16 v8, 0x8

    if-eqz v31, :cond_39f

    .line 558
    if-eqz v0, :cond_398

    const/4 v0, 0x0

    goto :goto_39a

    :cond_398
    const/16 v0, 0x8

    :goto_39a
    move-object/from16 v9, v31

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    .line 560
    :cond_39f
    if-eqz v1, :cond_3a5

    .line 562
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V
    :try_end_3a5
    .catch Ljava/lang/Exception; {:try_start_158 .. :try_end_3a5} :catch_42d

    .line 566
    :cond_3a5
    if-nez v30, :cond_3b1

    if-nez v7, :cond_3b1

    if-nez p5, :cond_3b1

    .line 568
    :try_start_3ab
    invoke-virtual/range {p2 .. p2}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_3ae
    .catch Ljava/lang/Exception; {:try_start_3ab .. :try_end_3ae} :catch_3af

    .line 570
    goto :goto_3b0

    .line 569
    :catch_3af
    move-exception v0

    .line 571
    :goto_3b0
    return-void

    .line 574
    :cond_3b1
    if-eqz v26, :cond_418

    .line 575
    const-string v0, "drawable"

    if-eqz v7, :cond_3f7

    .line 576
    move-object/from16 v1, v26

    const/4 v9, 0x0

    :try_start_3ba
    invoke-virtual {v1, v9}, Landroid/view/View;->setEnabled(Z)V

    .line 577
    invoke-virtual {v1, v9}, Landroid/view/View;->setClickable(Z)V

    .line 578
    const-string v9, "tfast_btn_continue_disabled"

    const/4 v11, 0x1

    move-object/from16 v4, p0

    invoke-static {v4, v0, v9}, Lcom/tfastdigital/dialog/TfastDialogHelper;->resId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 579
    if-eqz v0, :cond_3ce

    .line 580
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 582
    :cond_3ce
    if-eqz v6, :cond_3eb

    .line 583
    const-string v0, "blocked_label"

    .line 584
    iget-boolean v2, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->killSwitch:Z

    if-eqz v2, :cond_3d9

    const-string v2, "App disabled"

    goto :goto_3db

    :cond_3d9
    const-string v2, "Update required"

    .line 583
    :goto_3db
    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 585
    const-string v0, "#6B6B80"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 587
    :cond_3eb
    const-string v0, "hide_continue_when_blocked"

    invoke-virtual {v3, v0, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3f6

    .line 588
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 590
    :cond_3f6
    goto :goto_41a

    .line 591
    :cond_3f7
    const/4 v11, 0x1

    move-object/from16 v4, p0

    move-object/from16 v1, v26

    invoke-virtual {v1, v11}, Landroid/view/View;->setEnabled(Z)V

    .line 592
    invoke-virtual {v1, v11}, Landroid/view/View;->setClickable(Z)V

    .line 593
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 594
    move-object/from16 v2, v24

    invoke-static {v4, v0, v2}, Lcom/tfastdigital/dialog/TfastDialogHelper;->resId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 595
    if-eqz v0, :cond_411

    .line 596
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 598
    :cond_411
    if-eqz v6, :cond_41a

    .line 599
    const/4 v0, -0x1

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_41a

    .line 574
    :cond_418
    move-object/from16 v4, p0

    .line 604
    :cond_41a
    :goto_41a
    if-eqz p5, :cond_42c

    .line 605
    if-nez v7, :cond_427

    if-eqz v10, :cond_421

    goto :goto_427

    .line 608
    :cond_421
    const-string v0, "Up to date"

    invoke-static {v4, v0}, Lcom/tfastdigital/dialog/TfastDialogHelper;->toast(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_42c

    .line 606
    :cond_427
    :goto_427
    const-string v0, "Update available"

    invoke-static {v4, v0}, Lcom/tfastdigital/dialog/TfastDialogHelper;->toast(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_42c
    .catch Ljava/lang/Exception; {:try_start_3ba .. :try_end_42c} :catch_42d

    .line 617
    :cond_42c
    :goto_42c
    goto :goto_438

    .line 612
    :catch_42d
    move-exception v0

    .line 613
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 614
    if-eqz v5, :cond_438

    .line 615
    const-string v0, "Config error \u2014 local defaults active"

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 618
    :cond_438
    :goto_438
    return-void
.end method

.method private static applyLogo(Landroid/app/Activity;Landroid/view/View;)V
    .registers 5

    .line 269
    const-string v0, "tfast_logo"

    :try_start_2
    const-string v1, "id"

    invoke-static {p0, v1, v0}, Lcom/tfastdigital/dialog/TfastDialogHelper;->resId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 270
    const-string v2, "drawable"

    invoke-static {p0, v2, v0}, Lcom/tfastdigital/dialog/TfastDialogHelper;->resId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 271
    if-eqz v1, :cond_1f

    if-eqz p0, :cond_1f

    .line 272
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 273
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_1f

    .line 274
    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1f} :catch_20

    .line 278
    :cond_1f
    goto :goto_21

    .line 277
    :catch_20
    move-exception p0

    .line 279
    :goto_21
    return-void
.end method

.method private static asText(Landroid/view/View;)Landroid/widget/TextView;
    .registers 2

    .line 701
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_7

    check-cast p0, Landroid/widget/TextView;

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return-object p0
.end method

.method private static bindUrlButton(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Lcom/tfastdigital/dialog/TfastDialogHelper$UrlProvider;)V
    .registers 4

    .line 287
    invoke-static {p1, p0, p2}, Lcom/tfastdigital/dialog/TfastDialogHelper;->find(Landroid/view/View;Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    .line 288
    if-nez p1, :cond_7

    return-void

    .line 289
    :cond_7
    new-instance p2, Lcom/tfastdigital/dialog/TfastDialogHelper$8;

    invoke-direct {p2, p0, p3}, Lcom/tfastdigital/dialog/TfastDialogHelper$8;-><init>(Landroid/app/Activity;Lcom/tfastdigital/dialog/TfastDialogHelper$UrlProvider;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    return-void
.end method

.method private static copyJson(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .registers 5

    .line 376
    if-eqz p0, :cond_39

    if-nez p1, :cond_5

    goto :goto_39

    .line 378
    :cond_5
    :try_start_5
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 379
    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 380
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 381
    const-string v2, "apps"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "global"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "notes"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 382
    goto :goto_9

    .line 384
    :cond_2e
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_35} :catch_37

    .line 385
    goto :goto_9

    .line 387
    :cond_36
    goto :goto_38

    .line 386
    :catch_37
    move-exception p0

    .line 388
    :goto_38
    return-void

    .line 376
    :cond_39
    :goto_39
    return-void
.end method

.method private static fetchAndApply(Landroid/app/Activity;Landroid/view/View;Landroid/app/AlertDialog;Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;Ljava/lang/String;Z)V
    .registers 16

    .line 300
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 301
    new-instance v8, Ljava/lang/Thread;

    new-instance v9, Lcom/tfastdigital/dialog/TfastDialogHelper$9;

    move-object v0, v9

    move-object v1, p4

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/tfastdigital/dialog/TfastDialogHelper$9;-><init>(Ljava/lang/String;Landroid/os/Handler;Landroid/app/Activity;Landroid/view/View;Landroid/app/AlertDialog;Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;Z)V

    const-string p0, "tfast-config"

    invoke-direct {v8, v9, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 314
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 315
    return-void
.end method

.method private static fillAppInfo(Landroid/app/Activity;Landroid/view/View;Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;)V
    .registers 9

    .line 205
    const-string v0, "tfast_app_info"

    :try_start_2
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 206
    iput-object v1, p2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->packageName:Ljava/lang/String;

    .line 207
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 208
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 209
    if-eqz v4, :cond_1c

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1d

    :cond_1c
    move-object v4, v1

    :goto_1d
    iput-object v4, p2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->appName:Ljava/lang/String;

    .line 211
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x21

    if-lt v4, v5, :cond_30

    .line 212
    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    goto :goto_34

    .line 214
    :cond_30
    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 216
    :goto_34
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v3, :cond_3b

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    goto :goto_3d

    :cond_3b
    const-string v3, "?"

    :goto_3d
    iput-object v3, p2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->versionName:Ljava/lang/String;

    .line 217
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_4a

    invoke-virtual {v2}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v2

    goto :goto_4d

    :cond_4a
    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long v2, v2

    .line 218
    :goto_4d
    iput-wide v2, p2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->versionCode:J

    .line 220
    invoke-static {p1, p0, v0}, Lcom/tfastdigital/dialog/TfastDialogHelper;->find(Landroid/view/View;Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/tfastdigital/dialog/TfastDialogHelper;->asText(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v2

    .line 221
    if-eqz v2, :cond_8d

    .line 222
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->appName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  v"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->versionName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->versionCode:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    :cond_8d
    const-string v1, "tfast_subtitle"

    invoke-static {p1, p0, v1}, Lcom/tfastdigital/dialog/TfastDialogHelper;->find(Landroid/view/View;Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/tfastdigital/dialog/TfastDialogHelper;->asText(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v1

    .line 226
    if-eqz v1, :cond_9b

    iget-boolean p0, p2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->checkUpdateMode:Z
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9b} :catch_9c

    .line 234
    :cond_9b
    goto :goto_ae

    .line 229
    :catch_9c
    move-exception p2

    .line 230
    invoke-static {p1, p0, v0}, Lcom/tfastdigital/dialog/TfastDialogHelper;->find(Landroid/view/View;Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/tfastdigital/dialog/TfastDialogHelper;->asText(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object p1

    .line 231
    if-eqz p1, :cond_ae

    .line 232
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    :cond_ae
    :goto_ae
    return-void
.end method

.method private static find(Landroid/view/View;Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;
    .registers 4

    .line 695
    const-string v0, "id"

    invoke-static {p1, v0, p2}, Lcom/tfastdigital/dialog/TfastDialogHelper;->resId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 696
    if-nez p1, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 697
    :cond_a
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private static httpGet(Ljava/lang/String;I)Ljava/lang/String;
    .registers 6

    .line 636
    nop

    .line 639
    nop

    .line 640
    const/4 v0, 0x0

    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 641
    const/16 v3, 0x3f

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_27

    .line 642
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v3, "&t="

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3e

    .line 644
    :cond_27
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v3, "?t="

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 646
    :goto_3e
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 647
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_49} :catch_da
    .catchall {:try_start_3 .. :try_end_49} :catchall_d3

    .line 648
    :try_start_49
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 649
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 650
    const-string p1, "GET"

    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 651
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 652
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    .line 653
    const-string p1, "Accept"

    const-string v1, "application/json,text/plain,*/*"

    invoke-virtual {p0, p1, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    const-string p1, "Cache-Control"

    const-string v1, "no-cache, no-store"

    invoke-virtual {p0, p1, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    const-string p1, "Pragma"

    const-string v1, "no-cache"

    invoke-virtual {p0, p1, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    const-string p1, "User-Agent"

    const-string v1, "Mozilla/5.0 (Linux; Android 13) TfastDialog/4"

    invoke-virtual {p0, p1, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 659
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    .line 660
    const/16 v1, 0xc8

    if-lt p1, v1, :cond_c6

    const/16 v1, 0x12c

    if-lt p1, v1, :cond_88

    goto :goto_c6

    .line 663
    :cond_88
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_8c} :catch_d1
    .catchall {:try_start_49 .. :try_end_8c} :catchall_cd

    .line 664
    if-nez p1, :cond_94

    .line 677
    if-eqz p0, :cond_93

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 664
    :cond_93
    return-object v0

    .line 665
    :cond_94
    :try_start_94
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    const-string v3, "UTF-8"

    .line 666
    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 667
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 669
    :goto_a9
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b9

    .line 670
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_a9

    .line 672
    :cond_b9
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 673
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_c0
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_c0} :catch_d1
    .catchall {:try_start_94 .. :try_end_c0} :catchall_cd

    .line 677
    if-eqz p0, :cond_c5

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 673
    :cond_c5
    return-object p1

    .line 661
    :cond_c6
    :goto_c6
    nop

    .line 677
    if-eqz p0, :cond_cc

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 661
    :cond_cc
    return-object v0

    .line 677
    :catchall_cd
    move-exception p1

    move-object v0, p0

    move-object p0, p1

    goto :goto_d4

    .line 674
    :catch_d1
    move-exception p1

    goto :goto_dc

    .line 677
    :catchall_d3
    move-exception p0

    :goto_d4
    if-eqz v0, :cond_d9

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 678
    :cond_d9
    throw p0

    .line 674
    :catch_da
    move-exception p0

    move-object p0, v0

    .line 675
    :goto_dc
    nop

    .line 677
    if-eqz p0, :cond_e2

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 675
    :cond_e2
    return-object v0
.end method

.method private static httpGetFirstOk(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    .line 319
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 320
    if-eqz p0, :cond_10

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_10

    .line 321
    invoke-virtual {v0, p0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 323
    :cond_10
    const/4 p0, 0x0

    :goto_11
    sget-object v1, Lcom/tfastdigital/dialog/TfastDialogHelper;->CONFIG_URLS:[Ljava/lang/String;

    array-length v1, v1

    if-ge p0, v1, :cond_20

    .line 324
    sget-object v1, Lcom/tfastdigital/dialog/TfastDialogHelper;->CONFIG_URLS:[Ljava/lang/String;

    aget-object v1, v1, p0

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 323
    add-int/lit8 p0, p0, 0x1

    goto :goto_11

    .line 326
    :cond_20
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_24
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 327
    invoke-static {v0, p1}, Lcom/tfastdigital/dialog/TfastDialogHelper;->httpGet(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 328
    if-eqz v0, :cond_4e

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_4e

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 329
    return-object v0

    .line 331
    :cond_4e
    goto :goto_24

    .line 332
    :cond_4f
    const/4 p0, 0x0

    return-object p0
.end method

.method public static openUrl(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 713
    if-eqz p0, :cond_24

    if-eqz p1, :cond_24

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_24

    .line 715
    :cond_b
    :try_start_b
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 716
    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 717
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1e} :catch_1f

    .line 720
    goto :goto_23

    .line 718
    :catch_1f
    move-exception p0

    .line 719
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 721
    :goto_23
    return-void

    .line 713
    :cond_24
    :goto_24
    return-void
.end method

.method private static parseJson(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 3

    .line 682
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 684
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 685
    const-string v1, "\ufeff"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 686
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 688
    :cond_15
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1a} :catch_1b

    return-object v1

    .line 689
    :catch_1b
    move-exception p0

    .line 690
    return-object v0
.end method

.method private static resId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .line 706
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p2, p1, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return p0

    .line 707
    :catch_d
    move-exception p0

    .line 708
    const/4 p0, 0x0

    return p0
.end method

.method private static resolveAppConfig(Landroid/app/Activity;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 7

    .line 347
    const-string v0, "default"

    const-string v1, "apps"

    const-string v2, "global"

    if-nez p1, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 349
    :cond_a
    :try_start_a
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 351
    invoke-static {p1, v3}, Lcom/tfastdigital/dialog/TfastDialogHelper;->copyJson(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 353
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lorg/json/JSONObject;

    if-eqz v4, :cond_27

    .line 354
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/tfastdigital/dialog/TfastDialogHelper;->copyJson(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 357
    :cond_27
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_67

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/json/JSONObject;

    if-eqz v2, :cond_67

    .line 358
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 359
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/json/JSONObject;

    if-eqz v2, :cond_4e

    .line 360
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/tfastdigital/dialog/TfastDialogHelper;->copyJson(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 362
    :cond_4e
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 363
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_67

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_67

    .line 364
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p0, v3}, Lcom/tfastdigital/dialog/TfastDialogHelper;->copyJson(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_67} :catch_68

    .line 369
    :cond_67
    return-object v3

    .line 370
    :catch_68
    move-exception p0

    .line 371
    return-object p1
.end method

.method public static show(Landroid/app/Activity;)V
    .registers 4

    .line 72
    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "https://raw.githubusercontent.com/tfastdigital/tfast_dialog_template/refs/heads/main/config/update.json"

    invoke-static {p0, v2, v0, v1}, Lcom/tfastdigital/dialog/TfastDialogHelper;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;Z)V

    .line 73
    return-void
.end method

.method public static show(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 4

    .line 76
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/tfastdigital/dialog/TfastDialogHelper;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;Z)V

    .line 77
    return-void
.end method

.method public static show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 4

    .line 80
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/tfastdigital/dialog/TfastDialogHelper;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;Z)V

    .line 81
    return-void
.end method

.method public static show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;Z)V
    .registers 15

    .line 96
    const-string v0, "https://tfastdigital.com"

    if-eqz p0, :cond_c2

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_c

    goto/16 :goto_c2

    .line 100
    :cond_c
    :try_start_c
    const-string v1, "layout"

    const-string v2, "tfast_brand_dialog"

    invoke-static {p0, v1, v2}, Lcom/tfastdigital/dialog/TfastDialogHelper;->resId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 101
    if-nez v1, :cond_1c

    .line 102
    const-string p1, "Tfast dialog layout missing"

    invoke-static {p0, p1}, Lcom/tfastdigital/dialog/TfastDialogHelper;->toast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 103
    return-void

    .line 106
    :cond_1c
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 107
    new-instance v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;

    invoke-direct {v2, v3}, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;-><init>(Lcom/tfastdigital/dialog/TfastDialogHelper$1;)V

    .line 108
    const-string v3, "https://t.me/tfasthub"

    iput-object v3, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->telegramUrl:Ljava/lang/String;

    .line 109
    const-string v3, "https://whatsapp.com/channel/0029VaAYznPK5cDIXJa9nW1a"

    iput-object v3, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->whatsappUrl:Ljava/lang/String;

    .line 110
    const-string v3, "https://www.tiktok.com/@tfasthub"

    iput-object v3, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->tiktokUrl:Ljava/lang/String;

    .line 111
    iput-object v0, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->updateUrl:Ljava/lang/String;

    .line 112
    iput-object v0, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->websiteUrl:Ljava/lang/String;

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->blockEntry:Z

    .line 114
    iput-boolean v0, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->forceUpdate:Z

    .line 115
    iput-boolean v0, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->killSwitch:Z

    .line 116
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->enabled:Z

    .line 117
    iput-boolean p3, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->checkUpdateMode:Z

    .line 119
    invoke-static {p0, v1, v2}, Lcom/tfastdigital/dialog/TfastDialogHelper;->fillAppInfo(Landroid/app/Activity;Landroid/view/View;Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;)V

    .line 120
    invoke-static {p0, v1, v2}, Lcom/tfastdigital/dialog/TfastDialogHelper;->wireSocial(Landroid/app/Activity;Landroid/view/View;Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;)V

    .line 121
    invoke-static {p0, v1}, Lcom/tfastdigital/dialog/TfastDialogHelper;->applyLogo(Landroid/app/Activity;Landroid/view/View;)V

    .line 123
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 124
    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 125
    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 126
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 128
    const-string v3, "tfast_btn_continue"

    invoke-static {v1, p0, v3}, Lcom/tfastdigital/dialog/TfastDialogHelper;->find(Landroid/view/View;Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 129
    const-string v4, "tfast_btn_update"

    invoke-static {v1, p0, v4}, Lcom/tfastdigital/dialog/TfastDialogHelper;->find(Landroid/view/View;Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    .line 130
    const-string v5, "tfast_btn_check_update"

    invoke-static {v1, p0, v5}, Lcom/tfastdigital/dialog/TfastDialogHelper;->find(Landroid/view/View;Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v10

    .line 132
    if-eqz v3, :cond_7a

    .line 133
    new-instance v5, Lcom/tfastdigital/dialog/TfastDialogHelper$1;

    invoke-direct {v5, v2, v0, p2}, Lcom/tfastdigital/dialog/TfastDialogHelper$1;-><init>(Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;Landroid/app/AlertDialog;Ljava/lang/Runnable;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    :cond_7a
    if-eqz v4, :cond_84

    .line 154
    new-instance p2, Lcom/tfastdigital/dialog/TfastDialogHelper$2;

    invoke-direct {p2, v2, p0}, Lcom/tfastdigital/dialog/TfastDialogHelper$2;-><init>(Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;Landroid/app/Activity;)V

    invoke-virtual {v4, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    :cond_84
    if-eqz v10, :cond_94

    .line 167
    new-instance p2, Lcom/tfastdigital/dialog/TfastDialogHelper$3;

    move-object v4, p2

    move-object v5, v1

    move-object v6, p0

    move-object v7, p1

    move-object v8, v0

    move-object v9, v2

    invoke-direct/range {v4 .. v9}, Lcom/tfastdigital/dialog/TfastDialogHelper$3;-><init>(Landroid/view/View;Landroid/app/Activity;Ljava/lang/String;Landroid/app/AlertDialog;Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;)V

    invoke-virtual {v10, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_94} :catch_bd

    .line 184
    :cond_94
    :try_start_94
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 185
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    .line 186
    if-eqz p2, :cond_a3

    .line 187
    const v3, 0x106000d

    invoke-virtual {p2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_a3} :catch_b8

    .line 192
    :cond_a3
    nop

    .line 194
    if-eqz p1, :cond_ac

    :try_start_a6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_ae

    .line 195
    :cond_ac
    const-string p1, "https://raw.githubusercontent.com/tfastdigital/tfast_dialog_template/refs/heads/main/config/update.json"

    :cond_ae
    move-object v8, p1

    .line 196
    move-object v4, p0

    move-object v5, v1

    move-object v6, v0

    move-object v7, v2

    move v9, p3

    invoke-static/range {v4 .. v9}, Lcom/tfastdigital/dialog/TfastDialogHelper;->fetchAndApply(Landroid/app/Activity;Landroid/view/View;Landroid/app/AlertDialog;Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;Ljava/lang/String;Z)V

    .line 200
    goto :goto_c1

    .line 189
    :catch_b8
    move-exception p0

    .line 190
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_bc} :catch_bd

    .line 191
    return-void

    .line 198
    :catch_bd
    move-exception p0

    .line 199
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 201
    :goto_c1
    return-void

    .line 97
    :cond_c2
    :goto_c2
    return-void
.end method

.method public static showCheckUpdate(Landroid/app/Activity;)V
    .registers 4

    .line 87
    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "https://raw.githubusercontent.com/tfastdigital/tfast_dialog_template/refs/heads/main/config/update.json"

    invoke-static {p0, v2, v0, v1}, Lcom/tfastdigital/dialog/TfastDialogHelper;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;Z)V

    .line 88
    return-void
.end method

.method public static showCheckUpdate(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 4

    .line 91
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/tfastdigital/dialog/TfastDialogHelper;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;Z)V

    .line 92
    return-void
.end method

.method private static toast(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 3

    .line 622
    :try_start_0
    new-instance v0, Lcom/tfastdigital/dialog/TfastDialogHelper$10;

    invoke-direct {v0, p0, p1}, Lcom/tfastdigital/dialog/TfastDialogHelper$10;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    .line 632
    goto :goto_a

    .line 631
    :catch_9
    move-exception p0

    .line 633
    :goto_a
    return-void
.end method

.method private static wireSocial(Landroid/app/Activity;Landroid/view/View;Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;)V
    .registers 5

    .line 238
    new-instance v0, Lcom/tfastdigital/dialog/TfastDialogHelper$4;

    invoke-direct {v0, p2}, Lcom/tfastdigital/dialog/TfastDialogHelper$4;-><init>(Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;)V

    const-string v1, "tfast_btn_telegram"

    invoke-static {p0, p1, v1, v0}, Lcom/tfastdigital/dialog/TfastDialogHelper;->bindUrlButton(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Lcom/tfastdigital/dialog/TfastDialogHelper$UrlProvider;)V

    .line 244
    new-instance v0, Lcom/tfastdigital/dialog/TfastDialogHelper$5;

    invoke-direct {v0, p2}, Lcom/tfastdigital/dialog/TfastDialogHelper$5;-><init>(Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;)V

    const-string v1, "tfast_btn_whatsapp"

    invoke-static {p0, p1, v1, v0}, Lcom/tfastdigital/dialog/TfastDialogHelper;->bindUrlButton(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Lcom/tfastdigital/dialog/TfastDialogHelper$UrlProvider;)V

    .line 250
    new-instance v0, Lcom/tfastdigital/dialog/TfastDialogHelper$6;

    invoke-direct {v0, p2}, Lcom/tfastdigital/dialog/TfastDialogHelper$6;-><init>(Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;)V

    const-string v1, "tfast_btn_tiktok"

    invoke-static {p0, p1, v1, v0}, Lcom/tfastdigital/dialog/TfastDialogHelper;->bindUrlButton(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Lcom/tfastdigital/dialog/TfastDialogHelper$UrlProvider;)V

    .line 256
    const-string v0, "tfast_credits"

    invoke-static {p1, p0, v0}, Lcom/tfastdigital/dialog/TfastDialogHelper;->find(Landroid/view/View;Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    .line 257
    if-eqz p1, :cond_2e

    .line 258
    new-instance v0, Lcom/tfastdigital/dialog/TfastDialogHelper$7;

    invoke-direct {v0, p0, p2}, Lcom/tfastdigital/dialog/TfastDialogHelper$7;-><init>(Landroid/app/Activity;Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    :cond_2e
    return-void
.end method
