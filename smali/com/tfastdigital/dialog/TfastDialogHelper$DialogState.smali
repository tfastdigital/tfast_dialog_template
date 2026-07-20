.class final Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;
.super Ljava/lang/Object;
.source "TfastDialogHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tfastdigital/dialog/TfastDialogHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DialogState"
.end annotation


# instance fields
.field blockEntry:Z

.field enabled:Z

.field forceUpdate:Z

.field telegramUrl:Ljava/lang/String;

.field tiktokUrl:Ljava/lang/String;

.field updateUrl:Ljava/lang/String;

.field whatsappUrl:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 463
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->enabled:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/tfastdigital/dialog/TfastDialogHelper$1;)V
    .registers 2

    .line 462
    invoke-direct {p0}, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;-><init>()V

    return-void
.end method
