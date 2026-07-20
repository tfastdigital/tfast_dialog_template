.class Lcom/tfastdigital/dialog/TfastDialogHelper$1;
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

    .line 121
    iput-object p1, p0, Lcom/tfastdigital/dialog/TfastDialogHelper$1;->val$state:Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;

    iput-object p2, p0, Lcom/tfastdigital/dialog/TfastDialogHelper$1;->val$dialog:Landroid/app/AlertDialog;

    iput-object p3, p0, Lcom/tfastdigital/dialog/TfastDialogHelper$1;->val$onContinue:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 124
    iget-object p1, p0, Lcom/tfastdigital/dialog/TfastDialogHelper$1;->val$state:Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;

    iget-boolean p1, p1, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->killSwitch:Z

    if-nez p1, :cond_26

    iget-object p1, p0, Lcom/tfastdigital/dialog/TfastDialogHelper$1;->val$state:Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;

    iget-boolean p1, p1, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->blockEntry:Z

    if-nez p1, :cond_26

    iget-object p1, p0, Lcom/tfastdigital/dialog/TfastDialogHelper$1;->val$state:Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;

    iget-boolean p1, p1, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->forceUpdate:Z

    if-eqz p1, :cond_13

    goto :goto_26

    .line 128
    :cond_13
    :try_start_13
    iget-object p1, p0, Lcom/tfastdigital/dialog/TfastDialogHelper$1;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_18} :catch_19

    .line 130
    goto :goto_1a

    .line 129
    :catch_19
    move-exception p1

    .line 131
    :goto_1a
    iget-object p1, p0, Lcom/tfastdigital/dialog/TfastDialogHelper$1;->val$onContinue:Ljava/lang/Runnable;

    if-eqz p1, :cond_25

    .line 133
    :try_start_1e
    iget-object p1, p0, Lcom/tfastdigital/dialog/TfastDialogHelper$1;->val$onContinue:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_23} :catch_24

    .line 135
    goto :goto_25

    .line 134
    :catch_24
    move-exception p1

    .line 137
    :cond_25
    :goto_25
    return-void

    .line 125
    :cond_26
    :goto_26
    return-void
.end method
