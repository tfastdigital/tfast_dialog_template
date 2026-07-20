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

.field public static final DIALOG_VERSION:I = 0x2


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;I)Ljava/lang/String;
    .registers 2

    .line 39
    invoke-static {p0, p1}, Lcom/tfastdigital/dialog/TfastDialogHelper;->httpGet(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 1

    .line 39
    invoke-static {p0}, Lcom/tfastdigital/dialog/TfastDialogHelper;->parseJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Landroid/app/Activity;Landroid/view/View;Landroid/app/AlertDialog;Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;Lorg/json/JSONObject;)V
    .registers 5

    .line 39
    invoke-static {p0, p1, p2, p3, p4}, Lcom/tfastdigital/dialog/TfastDialogHelper;->applyConfig(Landroid/app/Activity;Landroid/view/View;Landroid/app/AlertDialog;Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;Lorg/json/JSONObject;)V

    return-void
.end method

.method private static applyConfig(Landroid/app/Activity;Landroid/view/View;Landroid/app/AlertDialog;Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;Lorg/json/JSONObject;)V
    .registers 30

    .line 239
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    const-string v4, ""

    const-string v5, "update_label"

    const-string v6, "continue_label"

    const-string v7, "credits"

    const-string v8, "subtitle"

    const-string v9, "title"

    const-string v10, "apk_url"

    const-string v11, "tiktok"

    const-string v12, "whatsapp"

    const-string v13, "telegram"

    const-string v14, "enabled"

    const-string v15, "update_url"

    move-object/from16 v16, v4

    const-string v4, "tfast_status"

    invoke-static {v1, v0, v4}, Lcom/tfastdigital/dialog/TfastDialogHelper;->find(Landroid/view/View;Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lcom/tfastdigital/dialog/TfastDialogHelper;->asText(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v4

    .line 240
    move-object/from16 v17, v5

    const-string v5, "tfast_title"

    invoke-static {v1, v0, v5}, Lcom/tfastdigital/dialog/TfastDialogHelper;->find(Landroid/view/View;Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Lcom/tfastdigital/dialog/TfastDialogHelper;->asText(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v5

    .line 241
    move-object/from16 v18, v6

    const-string v6, "tfast_subtitle"

    invoke-static {v1, v0, v6}, Lcom/tfastdigital/dialog/TfastDialogHelper;->find(Landroid/view/View;Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Lcom/tfastdigital/dialog/TfastDialogHelper;->asText(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v6

    .line 242
    move-object/from16 v19, v7

    const-string v7, "tfast_credits"

    invoke-static {v1, v0, v7}, Lcom/tfastdigital/dialog/TfastDialogHelper;->find(Landroid/view/View;Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v7

    invoke-static {v7}, Lcom/tfastdigital/dialog/TfastDialogHelper;->asText(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v7

    .line 243
    move-object/from16 v20, v7

    const-string v7, "tfast_btn_continue"

    move-object/from16 v21, v8

    invoke-static {v1, v0, v7}, Lcom/tfastdigital/dialog/TfastDialogHelper;->find(Landroid/view/View;Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v8

    .line 244
    move-object/from16 v22, v7

    const-string v7, "tfast_btn_update"

    invoke-static {v1, v0, v7}, Lcom/tfastdigital/dialog/TfastDialogHelper;->find(Landroid/view/View;Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 245
    invoke-static {v8}, Lcom/tfastdigital/dialog/TfastDialogHelper;->asText(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v7

    .line 246
    invoke-static {v1}, Lcom/tfastdigital/dialog/TfastDialogHelper;->asText(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v0

    .line 248
    if-nez v3, :cond_7d

    .line 249
    if-eqz v4, :cond_7c

    .line 250
    const-string v0, "Offline \u2014 using local defaults"

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    const-string v0, "#9B9BB0"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 253
    :cond_7c
    return-void

    .line 258
    :cond_7d
    :try_start_7d
    invoke-virtual {v3, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v23

    move-object/from16 v24, v8

    const/4 v8, 0x1

    if-eqz v23, :cond_92

    invoke-virtual {v3, v14, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v14
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_8a} :catch_2a3

    if-nez v14, :cond_92

    .line 260
    :try_start_8c
    invoke-virtual/range {p2 .. p2}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_8f} :catch_90

    .line 262
    goto :goto_91

    .line 261
    :catch_90
    move-exception v0

    .line 263
    :goto_91
    return-void

    .line 266
    :cond_92
    :try_start_92
    const-string v14, "force_update"

    const/4 v8, 0x0

    invoke-virtual {v3, v14, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v14

    iput-boolean v14, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->forceUpdate:Z

    .line 267
    const-string v14, "block_entry"

    invoke-virtual {v3, v14, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v14

    iput-boolean v14, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->blockEntry:Z

    .line 269
    const-string v14, "prevent_entry"

    invoke-virtual {v3, v14, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v14

    if-nez v14, :cond_b3

    const-string v14, "block_app"

    invoke-virtual {v3, v14, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v14

    if-eqz v14, :cond_b6

    .line 270
    :cond_b3
    const/4 v14, 0x1

    iput-boolean v14, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->blockEntry:Z

    .line 273
    :cond_b6
    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_c4

    iget-object v14, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->telegramUrl:Ljava/lang/String;

    invoke-virtual {v3, v13, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->telegramUrl:Ljava/lang/String;

    .line 274
    :cond_c4
    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_d2

    iget-object v13, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->whatsappUrl:Ljava/lang/String;

    invoke-virtual {v3, v12, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->whatsappUrl:Ljava/lang/String;

    .line 275
    :cond_d2
    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_e0

    iget-object v12, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->tiktokUrl:Ljava/lang/String;

    invoke-virtual {v3, v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->tiktokUrl:Ljava/lang/String;

    .line 276
    :cond_e0
    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_ee

    iget-object v11, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->updateUrl:Ljava/lang/String;

    invoke-virtual {v3, v15, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->updateUrl:Ljava/lang/String;

    .line 277
    :cond_ee
    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_106

    iget-object v11, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->updateUrl:Ljava/lang/String;

    const-string v12, "https://tfastdigital.com"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_106

    .line 278
    iget-object v11, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->updateUrl:Ljava/lang/String;

    invoke-virtual {v3, v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->updateUrl:Ljava/lang/String;

    .line 281
    :cond_106
    if-eqz v5, :cond_11d

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_11d

    .line 282
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    :cond_11d
    if-eqz v6, :cond_136

    move-object/from16 v5, v21

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_136

    .line 285
    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v5, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    :cond_136
    if-eqz v20, :cond_151

    move-object/from16 v5, v19

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_151

    .line 288
    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v6, v20

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    :cond_151
    if-eqz v7, :cond_164

    move-object/from16 v5, v18

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_164

    .line 291
    const-string v6, "Continue to App"

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    :cond_164
    if-eqz v0, :cond_177

    move-object/from16 v5, v17

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_177

    .line 294
    const-string v6, "Download Update"

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    :cond_177
    const-string v0, "message"

    move-object/from16 v5, v16

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 298
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_18b

    .line 299
    const-string v0, "update_message"

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 302
    :cond_18b
    iget-boolean v5, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->forceUpdate:Z

    if-nez v5, :cond_196

    iget-boolean v5, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->blockEntry:Z
    :try_end_191
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_191} :catch_2a3

    if-eqz v5, :cond_194

    goto :goto_196

    :cond_194
    const/4 v5, 0x0

    goto :goto_197

    :cond_196
    :goto_196
    const/4 v5, 0x1

    .line 304
    :goto_197
    const-string v6, "#FF6B35"

    if-eqz v4, :cond_1ce

    .line 305
    :try_start_19b
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_1a5

    .line 306
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1be

    .line 307
    :cond_1a5
    iget-boolean v0, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->blockEntry:Z

    if-eqz v0, :cond_1af

    .line 308
    const-string v0, "Access paused \u2014 please update to continue."

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1be

    .line 309
    :cond_1af
    iget-boolean v0, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->forceUpdate:Z

    if-eqz v0, :cond_1b9

    .line 310
    const-string v0, "A required update is available."

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1be

    .line 312
    :cond_1b9
    const-string v0, "You\'re up to date \u00b7 tfastdigital.com"

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    :goto_1be
    if-eqz v5, :cond_1c5

    .line 315
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_1cb

    .line 316
    :cond_1c5
    const-string v0, "#34D399"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 314
    :goto_1cb
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_1ce
    .catch Ljava/lang/Exception; {:try_start_19b .. :try_end_1ce} :catch_2a3

    .line 320
    :cond_1ce
    const/16 v0, 0x8

    if-eqz v1, :cond_216

    .line 321
    const-string v9, "show_update_button"

    if-nez v5, :cond_1e7

    .line 322
    :try_start_1d6
    invoke-virtual {v3, v9, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-nez v10, :cond_1e7

    .line 323
    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1e5

    if-eqz v5, :cond_1e5

    goto :goto_1e7

    :cond_1e5
    const/4 v10, 0x0

    goto :goto_1e8

    :cond_1e7
    :goto_1e7
    const/4 v10, 0x1

    .line 324
    :goto_1e8
    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1f7

    if-nez v5, :cond_1f6

    invoke-virtual {v3, v9, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_1f7

    .line 325
    :cond_1f6
    const/4 v10, 0x1

    .line 327
    :cond_1f7
    invoke-virtual {v3, v9, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_1fe

    const/4 v10, 0x1

    .line 328
    :cond_1fe
    if-eqz v5, :cond_20d

    iget-object v9, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->updateUrl:Ljava/lang/String;

    if-eqz v9, :cond_20d

    iget-object v9, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->updateUrl:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_20d

    .line 329
    const/4 v10, 0x1

    .line 331
    :cond_20d
    if-eqz v10, :cond_211

    const/4 v9, 0x0

    goto :goto_213

    :cond_211
    const/16 v9, 0x8

    :goto_213
    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V
    :try_end_216
    .catch Ljava/lang/Exception; {:try_start_1d6 .. :try_end_216} :catch_2a3

    .line 335
    :cond_216
    if-eqz v24, :cond_274

    .line 336
    const-string v9, "drawable"

    if-eqz v5, :cond_254

    .line 337
    move-object/from16 v5, v24

    :try_start_21e
    invoke-virtual {v5, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 338
    invoke-virtual {v5, v8}, Landroid/view/View;->setClickable(Z)V

    .line 339
    const-string v10, "tfast_btn_continue_disabled"

    move-object/from16 v11, p0

    invoke-static {v11, v9, v10}, Lcom/tfastdigital/dialog/TfastDialogHelper;->resId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 340
    if-eqz v9, :cond_231

    .line 341
    invoke-virtual {v5, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 343
    :cond_231
    if-eqz v7, :cond_247

    .line 344
    const-string v9, "blocked_label"

    const-string v10, "Update required"

    invoke-virtual {v3, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    const-string v9, "#6B6B80"

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 348
    :cond_247
    const-string v7, "hide_continue_when_blocked"

    const/4 v9, 0x1

    invoke-virtual {v3, v7, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_253

    .line 349
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 351
    :cond_253
    goto :goto_276

    .line 352
    :cond_254
    move-object/from16 v11, p0

    move-object/from16 v5, v24

    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Landroid/view/View;->setEnabled(Z)V

    .line 353
    invoke-virtual {v5, v10}, Landroid/view/View;->setClickable(Z)V

    .line 354
    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 355
    move-object/from16 v10, v22

    invoke-static {v11, v9, v10}, Lcom/tfastdigital/dialog/TfastDialogHelper;->resId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 356
    if-eqz v9, :cond_26d

    .line 357
    invoke-virtual {v5, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 359
    :cond_26d
    if-eqz v7, :cond_276

    .line 360
    const/4 v9, -0x1

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_276

    .line 335
    :cond_274
    move-object/from16 v5, v24

    .line 366
    :cond_276
    :goto_276
    const-string v7, "min_dialog_version"

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 367
    const/4 v9, 0x2

    if-le v7, v9, :cond_2a2

    .line 368
    const/4 v7, 0x1

    iput-boolean v7, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->forceUpdate:Z

    .line 369
    iput-boolean v7, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->blockEntry:Z

    .line 370
    if-eqz v4, :cond_298

    .line 371
    const-string v2, "outdated_message"

    const-string v7, "This build is outdated. Please download the latest APK."

    invoke-virtual {v3, v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 373
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 375
    :cond_298
    if-eqz v1, :cond_29d

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 376
    :cond_29d
    if-eqz v5, :cond_2a2

    .line 377
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V
    :try_end_2a2
    .catch Ljava/lang/Exception; {:try_start_21e .. :try_end_2a2} :catch_2a3

    .line 386
    :cond_2a2
    goto :goto_2ae

    .line 381
    :catch_2a3
    move-exception v0

    .line 382
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 383
    if-eqz v4, :cond_2ae

    .line 384
    const-string v0, "Config error \u2014 local defaults active"

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 387
    :cond_2ae
    :goto_2ae
    return-void
.end method

.method private static applyLogo(Landroid/app/Activity;Landroid/view/View;)V
    .registers 5

    .line 189
    const-string v0, "tfast_logo"

    :try_start_2
    const-string v1, "id"

    invoke-static {p0, v1, v0}, Lcom/tfastdigital/dialog/TfastDialogHelper;->resId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 190
    const-string v2, "drawable"

    invoke-static {p0, v2, v0}, Lcom/tfastdigital/dialog/TfastDialogHelper;->resId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 191
    if-eqz v1, :cond_1f

    if-eqz p0, :cond_1f

    .line 192
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 193
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_1f

    .line 194
    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1f} :catch_20

    .line 198
    :cond_1f
    goto :goto_21

    .line 197
    :catch_20
    move-exception p0

    .line 199
    :goto_21
    return-void
.end method

.method private static asText(Landroid/view/View;)Landroid/widget/TextView;
    .registers 2

    .line 439
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

    .line 207
    invoke-static {p1, p0, p2}, Lcom/tfastdigital/dialog/TfastDialogHelper;->find(Landroid/view/View;Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    .line 208
    if-nez p1, :cond_7

    return-void

    .line 209
    :cond_7
    new-instance p2, Lcom/tfastdigital/dialog/TfastDialogHelper$7;

    invoke-direct {p2, p0, p3}, Lcom/tfastdigital/dialog/TfastDialogHelper$7;-><init>(Landroid/app/Activity;Lcom/tfastdigital/dialog/TfastDialogHelper$UrlProvider;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    return-void
.end method

.method private static fetchAndApply(Landroid/app/Activity;Landroid/view/View;Landroid/app/AlertDialog;Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;Ljava/lang/String;)V
    .registers 14

    .line 220
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 221
    new-instance v7, Ljava/lang/Thread;

    new-instance v8, Lcom/tfastdigital/dialog/TfastDialogHelper$8;

    move-object v0, v8

    move-object v1, p4

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/tfastdigital/dialog/TfastDialogHelper$8;-><init>(Ljava/lang/String;Landroid/os/Handler;Landroid/app/Activity;Landroid/view/View;Landroid/app/AlertDialog;Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;)V

    const-string p0, "tfast-config"

    invoke-direct {v7, v8, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 234
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 235
    return-void
.end method

.method private static find(Landroid/view/View;Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;
    .registers 4

    .line 433
    const-string v0, "id"

    invoke-static {p1, v0, p2}, Lcom/tfastdigital/dialog/TfastDialogHelper;->resId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 434
    if-nez p1, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 435
    :cond_a
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private static httpGet(Ljava/lang/String;I)Ljava/lang/String;
    .registers 6

    .line 390
    nop

    .line 392
    const/4 v0, 0x0

    :try_start_2
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 393
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_d} :catch_81
    .catchall {:try_start_2 .. :try_end_d} :catchall_7a

    .line 394
    :try_start_d
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 395
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 396
    const-string p1, "GET"

    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 397
    const-string p1, "Accept"

    const-string v1, "application/json"

    invoke-virtual {p0, p1, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    const-string p1, "User-Agent"

    const-string v1, "TfastDialog/2"

    invoke-virtual {p0, p1, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 400
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    .line 401
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
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_3f} :catch_78
    .catchall {:try_start_d .. :try_end_3f} :catchall_75

    .line 402
    :goto_3f
    if-nez p1, :cond_47

    .line 414
    if-eqz p0, :cond_46

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 402
    :cond_46
    return-object v0

    .line 403
    :cond_47
    :try_start_47
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, p1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 404
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 406
    :goto_58
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_68

    .line 407
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_58

    .line 409
    :cond_68
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 410
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_6f} :catch_78
    .catchall {:try_start_47 .. :try_end_6f} :catchall_75

    .line 414
    if-eqz p0, :cond_74

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 410
    :cond_74
    return-object p1

    .line 414
    :catchall_75
    move-exception p1

    move-object v0, p0

    goto :goto_7b

    .line 411
    :catch_78
    move-exception p1

    goto :goto_83

    .line 414
    :catchall_7a
    move-exception p1

    :goto_7b
    if-eqz v0, :cond_80

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 415
    :cond_80
    throw p1

    .line 411
    :catch_81
    move-exception p0

    move-object p0, v0

    .line 412
    :goto_83
    nop

    .line 414
    if-eqz p0, :cond_89

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 412
    :cond_89
    return-object v0
.end method

.method public static openUrl(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 451
    if-eqz p0, :cond_24

    if-eqz p1, :cond_24

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_24

    .line 453
    :cond_b
    :try_start_b
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 454
    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 455
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1e} :catch_1f

    .line 458
    goto :goto_23

    .line 456
    :catch_1f
    move-exception p0

    .line 457
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 459
    :goto_23
    return-void

    .line 451
    :cond_24
    :goto_24
    return-void
.end method

.method private static parseJson(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 3

    .line 419
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 421
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 423
    const-string v1, "\ufeff"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 424
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 426
    :cond_15
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1a} :catch_1b

    return-object v1

    .line 427
    :catch_1b
    move-exception p0

    .line 428
    return-object v0
.end method

.method private static resId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .line 444
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

    .line 445
    :catch_d
    move-exception p0

    .line 446
    const/4 p0, 0x0

    return p0
.end method

.method public static show(Landroid/app/Activity;)V
    .registers 3

    .line 59
    const-string v0, "https://raw.githubusercontent.com/tfastdigital/tfast_dialog_template/main/config/update.json"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/tfastdigital/dialog/TfastDialogHelper;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 60
    return-void
.end method

.method public static show(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 3

    .line 64
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/tfastdigital/dialog/TfastDialogHelper;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 65
    return-void
.end method

.method public static show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 9

    .line 73
    if-eqz p0, :cond_99

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_99

    .line 77
    :cond_a
    :try_start_a
    const-string v0, "layout"

    const-string v1, "tfast_brand_dialog"

    invoke-static {p0, v0, v1}, Lcom/tfastdigital/dialog/TfastDialogHelper;->resId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 78
    if-nez v0, :cond_15

    .line 80
    return-void

    .line 83
    :cond_15
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 84
    new-instance v1, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;

    invoke-direct {v1, v2}, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;-><init>(Lcom/tfastdigital/dialog/TfastDialogHelper$1;)V

    .line 85
    const-string v2, "https://t.me/tfasthub"

    iput-object v2, v1, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->telegramUrl:Ljava/lang/String;

    .line 86
    const-string v2, "https://whatsapp.com/channel/0029VaAYznPK5cDIXJa9nW1a"

    iput-object v2, v1, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->whatsappUrl:Ljava/lang/String;

    .line 87
    const-string v2, "https://www.tiktok.com/@tfasthub"

    iput-object v2, v1, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->tiktokUrl:Ljava/lang/String;

    .line 88
    const-string v2, "https://tfastdigital.com"

    iput-object v2, v1, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->updateUrl:Ljava/lang/String;

    .line 89
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->blockEntry:Z

    .line 90
    iput-boolean v2, v1, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->forceUpdate:Z

    .line 91
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->enabled:Z

    .line 93
    invoke-static {p0, v0, v1}, Lcom/tfastdigital/dialog/TfastDialogHelper;->wireSocial(Landroid/app/Activity;Landroid/view/View;Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;)V

    .line 94
    invoke-static {p0, v0}, Lcom/tfastdigital/dialog/TfastDialogHelper;->applyLogo(Landroid/app/Activity;Landroid/view/View;)V

    .line 96
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 97
    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 98
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 99
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 101
    const-string v3, "tfast_btn_continue"

    invoke-static {v0, p0, v3}, Lcom/tfastdigital/dialog/TfastDialogHelper;->find(Landroid/view/View;Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 102
    const-string v4, "tfast_btn_update"

    invoke-static {v0, p0, v4}, Lcom/tfastdigital/dialog/TfastDialogHelper;->find(Landroid/view/View;Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    .line 104
    if-eqz v3, :cond_66

    .line 105
    new-instance v5, Lcom/tfastdigital/dialog/TfastDialogHelper$1;

    invoke-direct {v5, v1, v2, p2}, Lcom/tfastdigital/dialog/TfastDialogHelper$1;-><init>(Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;Landroid/app/AlertDialog;Ljava/lang/Runnable;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    :cond_66
    if-eqz v4, :cond_70

    .line 126
    new-instance p2, Lcom/tfastdigital/dialog/TfastDialogHelper$2;

    invoke-direct {p2, p0, v1}, Lcom/tfastdigital/dialog/TfastDialogHelper$2;-><init>(Landroid/app/Activity;Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;)V

    invoke-virtual {v4, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_70} :catch_94

    .line 136
    :cond_70
    :try_start_70
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 137
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    .line 138
    if-eqz p2, :cond_7f

    .line 139
    const v3, 0x106000d

    invoke-virtual {p2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_7f} :catch_8f

    .line 144
    :cond_7f
    nop

    .line 147
    if-eqz p1, :cond_88

    :try_start_82
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_8a

    .line 148
    :cond_88
    const-string p1, "https://raw.githubusercontent.com/tfastdigital/tfast_dialog_template/main/config/update.json"

    :cond_8a
    nop

    .line 149
    invoke-static {p0, v0, v2, v1, p1}, Lcom/tfastdigital/dialog/TfastDialogHelper;->fetchAndApply(Landroid/app/Activity;Landroid/view/View;Landroid/app/AlertDialog;Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;Ljava/lang/String;)V

    .line 153
    goto :goto_98

    .line 141
    :catch_8f
    move-exception p0

    .line 142
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_93} :catch_94

    .line 143
    return-void

    .line 151
    :catch_94
    move-exception p0

    .line 152
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 154
    :goto_98
    return-void

    .line 74
    :cond_99
    :goto_99
    return-void
.end method

.method private static wireSocial(Landroid/app/Activity;Landroid/view/View;Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;)V
    .registers 5

    .line 157
    new-instance v0, Lcom/tfastdigital/dialog/TfastDialogHelper$3;

    invoke-direct {v0, p2}, Lcom/tfastdigital/dialog/TfastDialogHelper$3;-><init>(Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;)V

    const-string v1, "tfast_btn_telegram"

    invoke-static {p0, p1, v1, v0}, Lcom/tfastdigital/dialog/TfastDialogHelper;->bindUrlButton(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Lcom/tfastdigital/dialog/TfastDialogHelper$UrlProvider;)V

    .line 163
    new-instance v0, Lcom/tfastdigital/dialog/TfastDialogHelper$4;

    invoke-direct {v0, p2}, Lcom/tfastdigital/dialog/TfastDialogHelper$4;-><init>(Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;)V

    const-string v1, "tfast_btn_whatsapp"

    invoke-static {p0, p1, v1, v0}, Lcom/tfastdigital/dialog/TfastDialogHelper;->bindUrlButton(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Lcom/tfastdigital/dialog/TfastDialogHelper$UrlProvider;)V

    .line 169
    new-instance v0, Lcom/tfastdigital/dialog/TfastDialogHelper$5;

    invoke-direct {v0, p2}, Lcom/tfastdigital/dialog/TfastDialogHelper$5;-><init>(Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;)V

    const-string p2, "tfast_btn_tiktok"

    invoke-static {p0, p1, p2, v0}, Lcom/tfastdigital/dialog/TfastDialogHelper;->bindUrlButton(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Lcom/tfastdigital/dialog/TfastDialogHelper$UrlProvider;)V

    .line 176
    const-string p2, "tfast_credits"

    invoke-static {p1, p0, p2}, Lcom/tfastdigital/dialog/TfastDialogHelper;->find(Landroid/view/View;Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    .line 177
    if-eqz p1, :cond_2e

    .line 178
    new-instance p2, Lcom/tfastdigital/dialog/TfastDialogHelper$6;

    invoke-direct {p2, p0}, Lcom/tfastdigital/dialog/TfastDialogHelper$6;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    :cond_2e
    return-void
.end method
