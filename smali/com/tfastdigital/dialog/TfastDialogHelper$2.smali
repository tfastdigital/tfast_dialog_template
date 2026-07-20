.class Lcom/tfastdigital/dialog/TfastDialogHelper$2;
.super Ljava/lang/Object;
.source "TfastDialogHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tfastdigital/dialog/TfastDialogHelper;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$state:Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;


# direct methods
.method constructor <init>(Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;Landroid/app/Activity;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 154
    iput-object p1, p0, Lcom/tfastdigital/dialog/TfastDialogHelper$2;->val$state:Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;

    iput-object p2, p0, Lcom/tfastdigital/dialog/TfastDialogHelper$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 157
    iget-object p1, p0, Lcom/tfastdigital/dialog/TfastDialogHelper$2;->val$state:Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;

    iget-object p1, p1, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->updateUrl:Ljava/lang/String;

    .line 158
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_e

    .line 159
    :cond_c
    const-string p1, "https://tfastdigital.com"

    .line 161
    :cond_e
    iget-object v0, p0, Lcom/tfastdigital/dialog/TfastDialogHelper$2;->val$activity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/tfastdigital/dialog/TfastDialogHelper;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    .line 162
    return-void
.end method
