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
.field public static final DEFAULT_CONFIG_URL:Ljava/lang/String; = "https://raw.githubusercontent.com/tfastdigital/tfast_dialog_template/main/config/update.json"

.field private static final DEFAULT_TELEGRAM:Ljava/lang/String; = "https://t.me/tfasthub"

.field private static final DEFAULT_TIKTOK:Ljava/lang/String; = "https://www.tiktok.com/@tfasthub"

.field private static final DEFAULT_WEBSITE:Ljava/lang/String; = "https://tfastdigital.com"

.field private static final DEFAULT_WHATSAPP:Ljava/lang/String; = "https://whatsapp.com/channel/0029VaAYznPK5cDIXJa9nW1a"

.field public static final DIALOG_VERSION:I = 0x3


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
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
    invoke-static {p0, p1}, Lcom/tfastdigital/dialog/TfastDialogHelper;->httpGet(Ljava/lang/String;I)Ljava/lang/String;

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
    .registers 39

    .line 362
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

    .line 363
    move-object/from16 v18, v6

    const-string v6, "tfast_title"

    invoke-static {v1, v0, v6}, Lcom/tfastdigital/dialog/TfastDialogHelper;->find(Landroid/view/View;Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Lcom/tfastdigital/dialog/TfastDialogHelper;->asText(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v6

    .line 364
    move-object/from16 v19, v7

    const-string v7, "tfast_subtitle"

    invoke-static {v1, v0, v7}, Lcom/tfastdigital/dialog/TfastDialogHelper;->find(Landroid/view/View;Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v7

    invoke-static {v7}, Lcom/tfastdigital/dialog/TfastDialogHelper;->asText(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v7

    .line 365
    move-object/from16 v20, v8

    const-string v8, "tfast_credits"

    invoke-static {v1, v0, v8}, Lcom/tfastdigital/dialog/TfastDialogHelper;->find(Landroid/view/View;Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v8

    invoke-static {v8}, Lcom/tfastdigital/dialog/TfastDialogHelper;->asText(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v8

    .line 366
    move-object/from16 v21, v8

    const-string v8, "tfast_app_info"

    invoke-static {v1, v0, v8}, Lcom/tfastdigital/dialog/TfastDialogHelper;->find(Landroid/view/View;Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v8

    invoke-static {v8}, Lcom/tfastdigital/dialog/TfastDialogHelper;->asText(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v8

    .line 367
    move-object/from16 v22, v8

    const-string v8, "tfast_btn_continue"

    move-object/from16 v23, v7

    invoke-static {v1, v0, v8}, Lcom/tfastdigital/dialog/TfastDialogHelper;->find(Landroid/view/View;Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v7

    .line 368
    move-object/from16 v24, v8

    const-string v8, "tfast_btn_update"

    invoke-static {v1, v0, v8}, Lcom/tfastdigital/dialog/TfastDialogHelper;->find(Landroid/view/View;Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v8

    .line 369
    move-object/from16 v25, v9

    const-string v9, "tfast_btn_check_update"

    invoke-static {v1, v0, v9}, Lcom/tfastdigital/dialog/TfastDialogHelper;->find(Landroid/view/View;Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 370
    invoke-static {v7}, Lcom/tfastdigital/dialog/TfastDialogHelper;->asText(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v9

    .line 371
    move-object/from16 v26, v7

    invoke-static {v8}, Lcom/tfastdigital/dialog/TfastDialogHelper;->asText(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v7

    .line 372
    move-object/from16 p1, v7

    invoke-static {v1}, Lcom/tfastdigital/dialog/TfastDialogHelper;->asText(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v7

    .line 374
    move-object/from16 v27, v7

    const/4 v7, 0x0

    if-nez v3, :cond_b1

    .line 375
    if-eqz v5, :cond_9f

    .line 376
    const-string v2, "Offline \u2014 local defaults. Tap Check Update to retry."

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    const-string v2, "#9B9BB0"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 380
    :cond_9f
    if-eqz v8, :cond_a4

    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    .line 381
    :cond_a4
    if-eqz v1, :cond_a9

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 382
    :cond_a9
    if-eqz p5, :cond_b0

    const-string v1, "Offline \u2014 could not reach Tfast update server"

    invoke-static {v0, v1}, Lcom/tfastdigital/dialog/TfastDialogHelper;->toast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 383
    :cond_b0
    return-void

    .line 386
    :cond_b1
    invoke-static {v0, v3}, Lcom/tfastdigital/dialog/TfastDialogHelper;->resolveAppConfig(Landroid/app/Activity;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v28

    .line 387
    if-nez v28, :cond_b8

    goto :goto_ba

    :cond_b8
    move-object/from16 v3, v28

    .line 391
    :goto_ba
    :try_start_ba
    const-string v7, "enabled"

    const/4 v0, 0x1

    invoke-virtual {v3, v7, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 392
    nop

    .line 396
    const-string v0, "kill_switch"

    move/from16 v29, v7

    const/4 v7, 0x0

    invoke-virtual {v3, v0, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_e0

    const-string v0, "mode_kill_switch"

    .line 397
    invoke-virtual {v3, v0, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_e0

    const-string v0, "kill"

    .line 398
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

    .line 399
    const-string v0, "force_update"

    const/4 v7, 0x0

    invoke-virtual {v3, v0, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->forceUpdate:Z

    .line 400
    const-string v0, "block_entry"

    invoke-virtual {v3, v0, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_107

    const-string v0, "prevent_entry"

    .line 401
    invoke-virtual {v3, v0, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_107

    const-string v0, "block_app"

    .line 402
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

    .line 404
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_118

    iget-object v0, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->telegramUrl:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->telegramUrl:Ljava/lang/String;

    .line 405
    :cond_118
    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_126

    iget-object v0, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->whatsappUrl:Ljava/lang/String;

    invoke-virtual {v3, v15, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->whatsappUrl:Ljava/lang/String;

    .line 406
    :cond_126
    invoke-virtual {v3, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_134

    iget-object v0, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->tiktokUrl:Ljava/lang/String;

    invoke-virtual {v3, v14, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->tiktokUrl:Ljava/lang/String;

    .line 407
    :cond_134
    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_142

    iget-object v0, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->websiteUrl:Ljava/lang/String;

    invoke-virtual {v3, v13, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->websiteUrl:Ljava/lang/String;

    .line 408
    :cond_142
    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_150

    iget-object v0, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->updateUrl:Ljava/lang/String;

    invoke-virtual {v3, v12, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->updateUrl:Ljava/lang/String;

    .line 409
    :cond_150
    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0
    :try_end_154
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_154} :catch_42f

    const-string v4, ""

    if-eqz v0, :cond_164

    .line 410
    :try_start_158
    invoke-virtual {v3, v11, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 411
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_164

    iput-object v0, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->updateUrl:Ljava/lang/String;

    .line 413
    :cond_164
    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_176

    .line 414
    invoke-virtual {v3, v10, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 415
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_176

    iput-object v0, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->updateUrl:Ljava/lang/String;

    .line 418
    :cond_176
    const-string v0, "app_name"

    const-string v7, "name"

    invoke-virtual {v3, v7, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 419
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_18a

    .line 420
    iput-object v0, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->appName:Ljava/lang/String;

    .line 424
    :cond_18a
    const-string v7, "min_version_code"

    const-string v10, "min_version"

    const-wide/16 v11, 0x0

    invoke-virtual {v3, v10, v11, v12}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v13

    invoke-virtual {v3, v7, v13, v14}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v13

    .line 425
    const-string v7, "latest_version_code"

    const-string v10, "version_code"

    move-object/from16 v30, v8

    move-object v15, v9

    invoke-virtual {v3, v10, v11, v12}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-virtual {v3, v7, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 426
    const-string v9, "latest_version_name"

    const-string v10, "version_name"

    .line 427
    invoke-virtual {v3, v10, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 426
    invoke-virtual {v3, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 429
    cmp-long v10, v13, v11

    if-lez v10, :cond_1ca

    iget-wide v11, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->versionCode:J

    const-wide/16 v31, 0x0

    cmp-long v10, v11, v31

    if-lez v10, :cond_1ca

    iget-wide v10, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->versionCode:J

    cmp-long v12, v10, v13

    if-gez v12, :cond_1ca

    .line 430
    const/4 v10, 0x1

    iput-boolean v10, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->forceUpdate:Z

    .line 431
    iput-boolean v10, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->blockEntry:Z

    .line 433
    :cond_1ca
    nop

    .line 434
    const-wide/16 v10, 0x0

    cmp-long v12, v7, v10

    if-lez v12, :cond_1df

    iget-wide v13, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->versionCode:J

    cmp-long v31, v13, v10

    if-lez v31, :cond_1df

    iget-wide v10, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->versionCode:J

    cmp-long v13, v10, v7

    if-gez v13, :cond_1df

    .line 435
    const/4 v10, 0x1

    goto :goto_1e0

    .line 438
    :cond_1df
    const/4 v10, 0x0

    :goto_1e0
    const-string v11, "min_dialog_version"

    const/4 v13, 0x0

    invoke-virtual {v3, v11, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    .line 439
    const/4 v13, 0x3

    if-le v11, v13, :cond_1ef

    .line 440
    const/4 v11, 0x1

    iput-boolean v11, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->forceUpdate:Z

    .line 441
    iput-boolean v11, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->blockEntry:Z

    .line 445
    :cond_1ef
    iget-boolean v11, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->killSwitch:Z

    if-eqz v11, :cond_1f8

    .line 446
    const/4 v11, 0x1

    iput-boolean v11, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->forceUpdate:Z

    .line 447
    iput-boolean v11, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->blockEntry:Z

    .line 450
    :cond_1f8
    if-eqz v6, :cond_213

    .line 451
    move-object/from16 v11, v25

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_20a

    .line 452
    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_213

    .line 453
    :cond_20a
    iget-boolean v11, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->killSwitch:Z

    if-eqz v11, :cond_213

    .line 454
    const-string v11, "Service paused"

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 457
    :cond_213
    :goto_213
    if-eqz v23, :cond_245

    .line 458
    move-object/from16 v6, v20

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_227

    .line 459
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v6, v23

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_245

    .line 460
    :cond_227
    move-object/from16 v6, v23

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_245

    .line 461
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

    .line 464
    :cond_245
    :goto_245
    if-eqz v21, :cond_258

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_258

    .line 465
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v6, v21

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 467
    :cond_258
    if-eqz v15, :cond_26d

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_26d

    .line 468
    const-string v6, "Continue to App"

    invoke-virtual {v3, v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v6, v15

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_26e

    .line 467
    :cond_26d
    move-object v6, v15

    .line 470
    :goto_26e
    if-eqz p1, :cond_27d

    .line 471
    const-string v0, "update_label"

    const-string v11, "Download Update"

    invoke-virtual {v3, v0, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v11, p1

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 473
    :cond_27d
    if-eqz v27, :cond_28c

    .line 474
    const-string v0, "check_update_label"

    const-string v11, "Check for Updates"

    invoke-virtual {v3, v0, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v11, v27

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 477
    :cond_28c
    if-eqz v22, :cond_2ff

    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 479
    iget-object v11, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->appName:Ljava/lang/String;

    if-eqz v11, :cond_29a

    iget-object v11, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->appName:Ljava/lang/String;

    goto :goto_29c

    :cond_29a
    const-string v11, "App"

    :goto_29c
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
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

    .line 481
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    if-gtz v11, :cond_2c4

    if-lez v12, :cond_2e5

    .line 482
    :cond_2c4
    const-string v11, "\nLatest: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_2d8

    const-string v11, "v"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    :cond_2d8
    if-lez v12, :cond_2e5

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
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

    .line 487
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v7, v22

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 490
    :cond_2ff
    const-string v0, "message"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 491
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_311

    .line 492
    const-string v0, "update_message"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 494
    :cond_311
    iget-boolean v4, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->killSwitch:Z

    if-eqz v4, :cond_324

    .line 495
    const-string v0, "kill_message"

    const-string v4, "kill_switch_message"

    const-string v7, "This app is temporarily disabled by Tfast Digital. Open the update link for info."

    .line 496
    invoke-virtual {v3, v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 495
    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_338

    .line 498
    :cond_324
    if-eqz p5, :cond_338

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_338

    .line 499
    if-nez v10, :cond_336

    iget-boolean v0, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->forceUpdate:Z

    if-eqz v0, :cond_333

    goto :goto_336

    .line 502
    :cond_333
    const-string v0, "You are on the latest Tfast build."

    goto :goto_338

    .line 500
    :cond_336
    :goto_336
    const-string v0, "Update available \u2014 tap Download Update."

    .line 506
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

    .line 508
    :goto_348
    if-eqz v5, :cond_37e

    .line 509
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_354

    .line 510
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_369

    .line 511
    :cond_354
    if-eqz v7, :cond_35c

    .line 512
    const-string v0, "Update required to continue."

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_369

    .line 513
    :cond_35c
    if-eqz v10, :cond_364

    .line 514
    const-string v0, "A newer Tfast APK is available."

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_369

    .line 516
    :cond_364
    const-string v0, "Up to date \u00b7 tfastdigital.com"

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 518
    :goto_369
    if-nez v7, :cond_375

    if-eqz v10, :cond_36e

    goto :goto_375

    .line 520
    :cond_36e
    const-string v0, "#34D399"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_37b

    .line 519
    :cond_375
    :goto_375
    const-string v0, "#FF6B35"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 518
    :goto_37b
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 523
    :cond_37e
    if-nez v7, :cond_390

    if-nez v10, :cond_390

    const-string v0, "show_update_button"

    .line 525
    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_391

    if-eqz p5, :cond_38e

    goto :goto_391

    :cond_38e
    const/4 v0, 0x0

    goto :goto_392

    .line 523
    :cond_390
    const/4 v4, 0x1

    .line 525
    :cond_391
    :goto_391
    const/4 v0, 0x1

    .line 527
    :goto_392
    const/16 v8, 0x8

    if-eqz v30, :cond_3a1

    .line 528
    if-eqz v0, :cond_39a

    const/4 v0, 0x0

    goto :goto_39c

    :cond_39a
    const/16 v0, 0x8

    :goto_39c
    move-object/from16 v9, v30

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    .line 530
    :cond_3a1
    if-eqz v1, :cond_3a7

    .line 532
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V
    :try_end_3a7
    .catch Ljava/lang/Exception; {:try_start_158 .. :try_end_3a7} :catch_42f

    .line 536
    :cond_3a7
    if-nez v29, :cond_3b3

    if-nez v7, :cond_3b3

    if-nez p5, :cond_3b3

    .line 538
    :try_start_3ad
    invoke-virtual/range {p2 .. p2}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_3b0
    .catch Ljava/lang/Exception; {:try_start_3ad .. :try_end_3b0} :catch_3b1

    .line 540
    goto :goto_3b2

    .line 539
    :catch_3b1
    move-exception v0

    .line 541
    :goto_3b2
    return-void

    .line 544
    :cond_3b3
    if-eqz v26, :cond_41a

    .line 545
    const-string v0, "drawable"

    if-eqz v7, :cond_3f9

    .line 546
    move-object/from16 v1, v26

    const/4 v9, 0x0

    :try_start_3bc
    invoke-virtual {v1, v9}, Landroid/view/View;->setEnabled(Z)V

    .line 547
    invoke-virtual {v1, v9}, Landroid/view/View;->setClickable(Z)V

    .line 548
    const-string v9, "tfast_btn_continue_disabled"

    const/4 v11, 0x1

    move-object/from16 v4, p0

    invoke-static {v4, v0, v9}, Lcom/tfastdigital/dialog/TfastDialogHelper;->resId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 549
    if-eqz v0, :cond_3d0

    .line 550
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 552
    :cond_3d0
    if-eqz v6, :cond_3ed

    .line 553
    const-string v0, "blocked_label"

    .line 554
    iget-boolean v2, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->killSwitch:Z

    if-eqz v2, :cond_3db

    const-string v2, "App disabled"

    goto :goto_3dd

    :cond_3db
    const-string v2, "Update required"

    .line 553
    :goto_3dd
    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 555
    const-string v0, "#6B6B80"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 557
    :cond_3ed
    const-string v0, "hide_continue_when_blocked"

    invoke-virtual {v3, v0, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3f8

    .line 558
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 560
    :cond_3f8
    goto :goto_41c

    .line 561
    :cond_3f9
    const/4 v11, 0x1

    move-object/from16 v4, p0

    move-object/from16 v1, v26

    invoke-virtual {v1, v11}, Landroid/view/View;->setEnabled(Z)V

    .line 562
    invoke-virtual {v1, v11}, Landroid/view/View;->setClickable(Z)V

    .line 563
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 564
    move-object/from16 v2, v24

    invoke-static {v4, v0, v2}, Lcom/tfastdigital/dialog/TfastDialogHelper;->resId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 565
    if-eqz v0, :cond_413

    .line 566
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 568
    :cond_413
    if-eqz v6, :cond_41c

    .line 569
    const/4 v0, -0x1

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_41c

    .line 544
    :cond_41a
    move-object/from16 v4, p0

    .line 574
    :cond_41c
    :goto_41c
    if-eqz p5, :cond_42e

    .line 575
    if-nez v7, :cond_429

    if-eqz v10, :cond_423

    goto :goto_429

    .line 578
    :cond_423
    const-string v0, "Up to date"

    invoke-static {v4, v0}, Lcom/tfastdigital/dialog/TfastDialogHelper;->toast(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_42e

    .line 576
    :cond_429
    :goto_429
    const-string v0, "Update available"

    invoke-static {v4, v0}, Lcom/tfastdigital/dialog/TfastDialogHelper;->toast(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_42e
    .catch Ljava/lang/Exception; {:try_start_3bc .. :try_end_42e} :catch_42f

    .line 587
    :cond_42e
    :goto_42e
    goto :goto_43a

    .line 582
    :catch_42f
    move-exception v0

    .line 583
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 584
    if-eqz v5, :cond_43a

    .line 585
    const-string v0, "Config error \u2014 local defaults active"

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 588
    :cond_43a
    :goto_43a
    return-void
.end method

.method private static applyLogo(Landroid/app/Activity;Landroid/view/View;)V
    .registers 5

    .line 257
    const-string v0, "tfast_logo"

    :try_start_2
    const-string v1, "id"

    invoke-static {p0, v1, v0}, Lcom/tfastdigital/dialog/TfastDialogHelper;->resId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 258
    const-string v2, "drawable"

    invoke-static {p0, v2, v0}, Lcom/tfastdigital/dialog/TfastDialogHelper;->resId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 259
    if-eqz v1, :cond_1f

    if-eqz p0, :cond_1f

    .line 260
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 261
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_1f

    .line 262
    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1f} :catch_20

    .line 266
    :cond_1f
    goto :goto_21

    .line 265
    :catch_20
    move-exception p0

    .line 267
    :goto_21
    return-void
.end method

.method private static asText(Landroid/view/View;)Landroid/widget/TextView;
    .registers 2

    .line 655
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

    .line 275
    invoke-static {p1, p0, p2}, Lcom/tfastdigital/dialog/TfastDialogHelper;->find(Landroid/view/View;Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    .line 276
    if-nez p1, :cond_7

    return-void

    .line 277
    :cond_7
    new-instance p2, Lcom/tfastdigital/dialog/TfastDialogHelper$8;

    invoke-direct {p2, p0, p3}, Lcom/tfastdigital/dialog/TfastDialogHelper$8;-><init>(Landroid/app/Activity;Lcom/tfastdigital/dialog/TfastDialogHelper$UrlProvider;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    return-void
.end method

.method private static copyJson(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .registers 5

    .line 346
    if-eqz p0, :cond_39

    if-nez p1, :cond_5

    goto :goto_39

    .line 348
    :cond_5
    :try_start_5
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 349
    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 350
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 351
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

    .line 352
    goto :goto_9

    .line 354
    :cond_2e
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_35} :catch_37

    .line 355
    goto :goto_9

    .line 357
    :cond_36
    goto :goto_38

    .line 356
    :catch_37
    move-exception p0

    .line 358
    :goto_38
    return-void

    .line 346
    :cond_39
    :goto_39
    return-void
.end method

.method private static fetchAndApply(Landroid/app/Activity;Landroid/view/View;Landroid/app/AlertDialog;Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;Ljava/lang/String;Z)V
    .registers 16

    .line 288
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 289
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

    .line 302
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 303
    return-void
.end method

.method private static fillAppInfo(Landroid/app/Activity;Landroid/view/View;Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;)V
    .registers 9

    .line 193
    const-string v0, "tfast_app_info"

    :try_start_2
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 194
    iput-object v1, p2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->packageName:Ljava/lang/String;

    .line 195
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 196
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 197
    if-eqz v4, :cond_1c

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1d

    :cond_1c
    move-object v4, v1

    :goto_1d
    iput-object v4, p2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->appName:Ljava/lang/String;

    .line 199
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x21

    if-lt v4, v5, :cond_30

    .line 200
    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    goto :goto_34

    .line 202
    :cond_30
    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 204
    :goto_34
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v3, :cond_3b

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    goto :goto_3d

    :cond_3b
    const-string v3, "?"

    :goto_3d
    iput-object v3, p2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->versionName:Ljava/lang/String;

    .line 205
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_4a

    invoke-virtual {v2}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v2

    goto :goto_4d

    :cond_4a
    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long v2, v2

    .line 206
    :goto_4d
    iput-wide v2, p2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->versionCode:J

    .line 208
    invoke-static {p1, p0, v0}, Lcom/tfastdigital/dialog/TfastDialogHelper;->find(Landroid/view/View;Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/tfastdigital/dialog/TfastDialogHelper;->asText(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v2

    .line 209
    if-eqz v2, :cond_8d

    .line 210
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

    .line 213
    :cond_8d
    const-string v1, "tfast_subtitle"

    invoke-static {p1, p0, v1}, Lcom/tfastdigital/dialog/TfastDialogHelper;->find(Landroid/view/View;Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/tfastdigital/dialog/TfastDialogHelper;->asText(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v1

    .line 214
    if-eqz v1, :cond_9b

    iget-boolean p0, p2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->checkUpdateMode:Z
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9b} :catch_9c

    .line 222
    :cond_9b
    goto :goto_ae

    .line 217
    :catch_9c
    move-exception p2

    .line 218
    invoke-static {p1, p0, v0}, Lcom/tfastdigital/dialog/TfastDialogHelper;->find(Landroid/view/View;Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/tfastdigital/dialog/TfastDialogHelper;->asText(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object p1

    .line 219
    if-eqz p1, :cond_ae

    .line 220
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    :cond_ae
    :goto_ae
    return-void
.end method

.method private static find(Landroid/view/View;Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;
    .registers 4

    .line 649
    const-string v0, "id"

    invoke-static {p1, v0, p2}, Lcom/tfastdigital/dialog/TfastDialogHelper;->resId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 650
    if-nez p1, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 651
    :cond_a
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private static httpGet(Ljava/lang/String;I)Ljava/lang/String;
    .registers 6

    .line 606
    nop

    .line 608
    const/4 v0, 0x0

    :try_start_2
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 609
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_d} :catch_85
    .catchall {:try_start_2 .. :try_end_d} :catchall_7e

    .line 610
    :try_start_d
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 611
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 612
    const-string p1, "GET"

    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 613
    const-string p1, "Accept"

    const-string v1, "application/json"

    invoke-virtual {p0, p1, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    const-string p1, "User-Agent"

    const-string v1, "TfastDialog/3"

    invoke-virtual {p0, p1, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 616
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    .line 617
    const/16 v1, 0xc8

    if-lt p1, v1, :cond_3b

    const/16 v1, 0x12c

    if-ge p1, v1, :cond_3b

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    goto :goto_3f

    :cond_3b
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_3f} :catch_7c
    .catchall {:try_start_d .. :try_end_3f} :catchall_79

    .line 618
    :goto_3f
    if-nez p1, :cond_47

    .line 631
    if-eqz p0, :cond_46

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 618
    :cond_46
    return-object v0

    .line 619
    :cond_47
    :try_start_47
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    const-string v3, "UTF-8"

    .line 620
    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 621
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 623
    :goto_5c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6c

    .line 624
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5c

    .line 626
    :cond_6c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 627
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_73} :catch_7c
    .catchall {:try_start_47 .. :try_end_73} :catchall_79

    .line 631
    if-eqz p0, :cond_78

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 627
    :cond_78
    return-object p1

    .line 631
    :catchall_79
    move-exception p1

    move-object v0, p0

    goto :goto_7f

    .line 628
    :catch_7c
    move-exception p1

    goto :goto_87

    .line 631
    :catchall_7e
    move-exception p1

    :goto_7f
    if-eqz v0, :cond_84

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 632
    :cond_84
    throw p1

    .line 628
    :catch_85
    move-exception p0

    move-object p0, v0

    .line 629
    :goto_87
    nop

    .line 631
    if-eqz p0, :cond_8d

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 629
    :cond_8d
    return-object v0
.end method

.method public static openUrl(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 667
    if-eqz p0, :cond_24

    if-eqz p1, :cond_24

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_24

    .line 669
    :cond_b
    :try_start_b
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 670
    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 671
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1e} :catch_1f

    .line 674
    goto :goto_23

    .line 672
    :catch_1f
    move-exception p0

    .line 673
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 675
    :goto_23
    return-void

    .line 667
    :cond_24
    :goto_24
    return-void
.end method

.method private static parseJson(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 3

    .line 636
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 638
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 639
    const-string v1, "\ufeff"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 640
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 642
    :cond_15
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1a} :catch_1b

    return-object v1

    .line 643
    :catch_1b
    move-exception p0

    .line 644
    return-object v0
.end method

.method private static resId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .line 660
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

    .line 661
    :catch_d
    move-exception p0

    .line 662
    const/4 p0, 0x0

    return p0
.end method

.method private static resolveAppConfig(Landroid/app/Activity;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 7

    .line 317
    const-string v0, "default"

    const-string v1, "apps"

    const-string v2, "global"

    if-nez p1, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 319
    :cond_a
    :try_start_a
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 321
    invoke-static {p1, v3}, Lcom/tfastdigital/dialog/TfastDialogHelper;->copyJson(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 323
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lorg/json/JSONObject;

    if-eqz v4, :cond_27

    .line 324
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/tfastdigital/dialog/TfastDialogHelper;->copyJson(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 327
    :cond_27
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_67

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/json/JSONObject;

    if-eqz v2, :cond_67

    .line 328
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 329
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/json/JSONObject;

    if-eqz v2, :cond_4e

    .line 330
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/tfastdigital/dialog/TfastDialogHelper;->copyJson(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 332
    :cond_4e
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 333
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_67

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_67

    .line 334
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p0, v3}, Lcom/tfastdigital/dialog/TfastDialogHelper;->copyJson(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_67} :catch_68

    .line 339
    :cond_67
    return-object v3

    .line 340
    :catch_68
    move-exception p0

    .line 341
    return-object p1
.end method

.method public static show(Landroid/app/Activity;)V
    .registers 4

    .line 60
    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "https://raw.githubusercontent.com/tfastdigital/tfast_dialog_template/main/config/update.json"

    invoke-static {p0, v2, v0, v1}, Lcom/tfastdigital/dialog/TfastDialogHelper;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;Z)V

    .line 61
    return-void
.end method

.method public static show(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 4

    .line 64
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/tfastdigital/dialog/TfastDialogHelper;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;Z)V

    .line 65
    return-void
.end method

.method public static show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 4

    .line 68
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/tfastdigital/dialog/TfastDialogHelper;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;Z)V

    .line 69
    return-void
.end method

.method public static show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;Z)V
    .registers 15

    .line 84
    const-string v0, "https://tfastdigital.com"

    if-eqz p0, :cond_c2

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_c

    goto/16 :goto_c2

    .line 88
    :cond_c
    :try_start_c
    const-string v1, "layout"

    const-string v2, "tfast_brand_dialog"

    invoke-static {p0, v1, v2}, Lcom/tfastdigital/dialog/TfastDialogHelper;->resId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 89
    if-nez v1, :cond_1c

    .line 90
    const-string p1, "Tfast dialog layout missing"

    invoke-static {p0, p1}, Lcom/tfastdigital/dialog/TfastDialogHelper;->toast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 91
    return-void

    .line 94
    :cond_1c
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 95
    new-instance v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;

    invoke-direct {v2, v3}, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;-><init>(Lcom/tfastdigital/dialog/TfastDialogHelper$1;)V

    .line 96
    const-string v3, "https://t.me/tfasthub"

    iput-object v3, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->telegramUrl:Ljava/lang/String;

    .line 97
    const-string v3, "https://whatsapp.com/channel/0029VaAYznPK5cDIXJa9nW1a"

    iput-object v3, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->whatsappUrl:Ljava/lang/String;

    .line 98
    const-string v3, "https://www.tiktok.com/@tfasthub"

    iput-object v3, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->tiktokUrl:Ljava/lang/String;

    .line 99
    iput-object v0, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->updateUrl:Ljava/lang/String;

    .line 100
    iput-object v0, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->websiteUrl:Ljava/lang/String;

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->blockEntry:Z

    .line 102
    iput-boolean v0, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->forceUpdate:Z

    .line 103
    iput-boolean v0, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->killSwitch:Z

    .line 104
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->enabled:Z

    .line 105
    iput-boolean p3, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->checkUpdateMode:Z

    .line 107
    invoke-static {p0, v1, v2}, Lcom/tfastdigital/dialog/TfastDialogHelper;->fillAppInfo(Landroid/app/Activity;Landroid/view/View;Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;)V

    .line 108
    invoke-static {p0, v1, v2}, Lcom/tfastdigital/dialog/TfastDialogHelper;->wireSocial(Landroid/app/Activity;Landroid/view/View;Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;)V

    .line 109
    invoke-static {p0, v1}, Lcom/tfastdigital/dialog/TfastDialogHelper;->applyLogo(Landroid/app/Activity;Landroid/view/View;)V

    .line 111
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 112
    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 113
    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 114
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 116
    const-string v3, "tfast_btn_continue"

    invoke-static {v1, p0, v3}, Lcom/tfastdigital/dialog/TfastDialogHelper;->find(Landroid/view/View;Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 117
    const-string v4, "tfast_btn_update"

    invoke-static {v1, p0, v4}, Lcom/tfastdigital/dialog/TfastDialogHelper;->find(Landroid/view/View;Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    .line 118
    const-string v5, "tfast_btn_check_update"

    invoke-static {v1, p0, v5}, Lcom/tfastdigital/dialog/TfastDialogHelper;->find(Landroid/view/View;Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v10

    .line 120
    if-eqz v3, :cond_7a

    .line 121
    new-instance v5, Lcom/tfastdigital/dialog/TfastDialogHelper$1;

    invoke-direct {v5, v2, v0, p2}, Lcom/tfastdigital/dialog/TfastDialogHelper$1;-><init>(Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;Landroid/app/AlertDialog;Ljava/lang/Runnable;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    :cond_7a
    if-eqz v4, :cond_84

    .line 142
    new-instance p2, Lcom/tfastdigital/dialog/TfastDialogHelper$2;

    invoke-direct {p2, v2, p0}, Lcom/tfastdigital/dialog/TfastDialogHelper$2;-><init>(Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;Landroid/app/Activity;)V

    invoke-virtual {v4, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    :cond_84
    if-eqz v10, :cond_94

    .line 155
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

    .line 172
    :cond_94
    :try_start_94
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 173
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    .line 174
    if-eqz p2, :cond_a3

    .line 175
    const v3, 0x106000d

    invoke-virtual {p2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_a3} :catch_b8

    .line 180
    :cond_a3
    nop

    .line 182
    if-eqz p1, :cond_ac

    :try_start_a6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_ae

    .line 183
    :cond_ac
    const-string p1, "https://raw.githubusercontent.com/tfastdigital/tfast_dialog_template/main/config/update.json"

    :cond_ae
    move-object v8, p1

    .line 184
    move-object v4, p0

    move-object v5, v1

    move-object v6, v0

    move-object v7, v2

    move v9, p3

    invoke-static/range {v4 .. v9}, Lcom/tfastdigital/dialog/TfastDialogHelper;->fetchAndApply(Landroid/app/Activity;Landroid/view/View;Landroid/app/AlertDialog;Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;Ljava/lang/String;Z)V

    .line 188
    goto :goto_c1

    .line 177
    :catch_b8
    move-exception p0

    .line 178
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_bc} :catch_bd

    .line 179
    return-void

    .line 186
    :catch_bd
    move-exception p0

    .line 187
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 189
    :goto_c1
    return-void

    .line 85
    :cond_c2
    :goto_c2
    return-void
.end method

.method public static showCheckUpdate(Landroid/app/Activity;)V
    .registers 4

    .line 75
    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "https://raw.githubusercontent.com/tfastdigital/tfast_dialog_template/main/config/update.json"

    invoke-static {p0, v2, v0, v1}, Lcom/tfastdigital/dialog/TfastDialogHelper;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;Z)V

    .line 76
    return-void
.end method

.method public static showCheckUpdate(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 4

    .line 79
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/tfastdigital/dialog/TfastDialogHelper;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;Z)V

    .line 80
    return-void
.end method

.method private static toast(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 3

    .line 592
    :try_start_0
    new-instance v0, Lcom/tfastdigital/dialog/TfastDialogHelper$10;

    invoke-direct {v0, p0, p1}, Lcom/tfastdigital/dialog/TfastDialogHelper$10;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    .line 602
    goto :goto_a

    .line 601
    :catch_9
    move-exception p0

    .line 603
    :goto_a
    return-void
.end method

.method private static wireSocial(Landroid/app/Activity;Landroid/view/View;Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;)V
    .registers 5

    .line 226
    new-instance v0, Lcom/tfastdigital/dialog/TfastDialogHelper$4;

    invoke-direct {v0, p2}, Lcom/tfastdigital/dialog/TfastDialogHelper$4;-><init>(Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;)V

    const-string v1, "tfast_btn_telegram"

    invoke-static {p0, p1, v1, v0}, Lcom/tfastdigital/dialog/TfastDialogHelper;->bindUrlButton(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Lcom/tfastdigital/dialog/TfastDialogHelper$UrlProvider;)V

    .line 232
    new-instance v0, Lcom/tfastdigital/dialog/TfastDialogHelper$5;

    invoke-direct {v0, p2}, Lcom/tfastdigital/dialog/TfastDialogHelper$5;-><init>(Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;)V

    const-string v1, "tfast_btn_whatsapp"

    invoke-static {p0, p1, v1, v0}, Lcom/tfastdigital/dialog/TfastDialogHelper;->bindUrlButton(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Lcom/tfastdigital/dialog/TfastDialogHelper$UrlProvider;)V

    .line 238
    new-instance v0, Lcom/tfastdigital/dialog/TfastDialogHelper$6;

    invoke-direct {v0, p2}, Lcom/tfastdigital/dialog/TfastDialogHelper$6;-><init>(Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;)V

    const-string v1, "tfast_btn_tiktok"

    invoke-static {p0, p1, v1, v0}, Lcom/tfastdigital/dialog/TfastDialogHelper;->bindUrlButton(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Lcom/tfastdigital/dialog/TfastDialogHelper$UrlProvider;)V

    .line 244
    const-string v0, "tfast_credits"

    invoke-static {p1, p0, v0}, Lcom/tfastdigital/dialog/TfastDialogHelper;->find(Landroid/view/View;Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    .line 245
    if-eqz p1, :cond_2e

    .line 246
    new-instance v0, Lcom/tfastdigital/dialog/TfastDialogHelper$7;

    invoke-direct {v0, p0, p2}, Lcom/tfastdigital/dialog/TfastDialogHelper$7;-><init>(Landroid/app/Activity;Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    :cond_2e
    return-void
.end method
