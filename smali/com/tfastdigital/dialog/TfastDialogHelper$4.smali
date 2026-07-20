.class Lcom/tfastdigital/dialog/TfastDialogHelper$4;
.super Ljava/lang/Object;
.source "TfastDialogHelper.java"

# interfaces
.implements Lcom/tfastdigital/dialog/TfastDialogHelper$UrlProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tfastdigital/dialog/TfastDialogHelper;->wireSocial(Landroid/app/Activity;Landroid/view/View;Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$state:Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;


# direct methods
.method constructor <init>(Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 238
    iput-object p1, p0, Lcom/tfastdigital/dialog/TfastDialogHelper$4;->val$state:Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/String;
    .registers 2

    .line 241
    iget-object v0, p0, Lcom/tfastdigital/dialog/TfastDialogHelper$4;->val$state:Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;

    iget-object v0, v0, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->telegramUrl:Ljava/lang/String;

    return-object v0
.end method
