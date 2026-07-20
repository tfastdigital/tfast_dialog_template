.class Lcom/tfastdigital/dialog/TfastDialogHelper$1;
.super Ljava/lang/Object;
.source "TfastDialogHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tfastdigital/dialog/TfastDialogHelper;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$dialog:Landroid/app/AlertDialog;

.field final synthetic val$onContinue:Ljava/lang/Runnable;

.field final synthetic val$state:Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;


# direct methods
.method constructor <init>(Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;Landroid/app/AlertDialog;Ljava/lang/Runnable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 105
    iput-object p1, p0, Lcom/tfastdigital/dialog/TfastDialogHelper$1;->val$state:Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;

    iput-object p2, p0, Lcom/tfastdigital/dialog/TfastDialogHelper$1;->val$dialog:Landroid/app/AlertDialog;

    iput-object p3, p0, Lcom/tfastdigital/dialog/TfastDialogHelper$1;->val$onContinue:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 108
    iget-object p1, p0, Lcom/tfastdigital/dialog/TfastDialogHelper$1;->val$state:Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;

    iget-boolean p1, p1, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->blockEntry:Z

    if-nez p1, :cond_20

    iget-object p1, p0, Lcom/tfastdigital/dialog/TfastDialogHelper$1;->val$state:Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;

    iget-boolean p1, p1, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->forceUpdate:Z

    if-eqz p1, :cond_d

    goto :goto_20

    .line 112
    :cond_d
    :try_start_d
    iget-object p1, p0, Lcom/tfastdigital/dialog/TfastDialogHelper$1;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_12} :catch_13

    .line 114
    goto :goto_14

    .line 113
    :catch_13
    move-exception p1

    .line 115
    :goto_14
    iget-object p1, p0, Lcom/tfastdigital/dialog/TfastDialogHelper$1;->val$onContinue:Ljava/lang/Runnable;

    if-eqz p1, :cond_1f

    .line 117
    :try_start_18
    iget-object p1, p0, Lcom/tfastdigital/dialog/TfastDialogHelper$1;->val$onContinue:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1d} :catch_1e

    .line 119
    goto :goto_1f

    .line 118
    :catch_1e
    move-exception p1

    .line 121
    :cond_1f
    :goto_1f
    return-void

    .line 109
    :cond_20
    :goto_20
    return-void
.end method
