.class Lcom/tfastdigital/dialog/TfastDialogHelper$9$1;
.super Ljava/lang/Object;
.source "TfastDialogHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tfastdigital/dialog/TfastDialogHelper$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tfastdigital/dialog/TfastDialogHelper$9;

.field final synthetic val$json:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/tfastdigital/dialog/TfastDialogHelper$9;Lorg/json/JSONObject;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 294
    iput-object p1, p0, Lcom/tfastdigital/dialog/TfastDialogHelper$9$1;->this$0:Lcom/tfastdigital/dialog/TfastDialogHelper$9;

    iput-object p2, p0, Lcom/tfastdigital/dialog/TfastDialogHelper$9$1;->val$json:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 297
    iget-object v0, p0, Lcom/tfastdigital/dialog/TfastDialogHelper$9$1;->this$0:Lcom/tfastdigital/dialog/TfastDialogHelper$9;

    iget-object v0, v0, Lcom/tfastdigital/dialog/TfastDialogHelper$9;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 298
    :cond_b
    iget-object v0, p0, Lcom/tfastdigital/dialog/TfastDialogHelper$9$1;->this$0:Lcom/tfastdigital/dialog/TfastDialogHelper$9;

    iget-object v1, v0, Lcom/tfastdigital/dialog/TfastDialogHelper$9;->val$activity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/tfastdigital/dialog/TfastDialogHelper$9$1;->this$0:Lcom/tfastdigital/dialog/TfastDialogHelper$9;

    iget-object v2, v0, Lcom/tfastdigital/dialog/TfastDialogHelper$9;->val$root:Landroid/view/View;

    iget-object v0, p0, Lcom/tfastdigital/dialog/TfastDialogHelper$9$1;->this$0:Lcom/tfastdigital/dialog/TfastDialogHelper$9;

    iget-object v3, v0, Lcom/tfastdigital/dialog/TfastDialogHelper$9;->val$dialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/tfastdigital/dialog/TfastDialogHelper$9$1;->this$0:Lcom/tfastdigital/dialog/TfastDialogHelper$9;

    iget-object v4, v0, Lcom/tfastdigital/dialog/TfastDialogHelper$9;->val$state:Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;

    iget-object v5, p0, Lcom/tfastdigital/dialog/TfastDialogHelper$9$1;->val$json:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/tfastdigital/dialog/TfastDialogHelper$9$1;->this$0:Lcom/tfastdigital/dialog/TfastDialogHelper$9;

    iget-boolean v6, v0, Lcom/tfastdigital/dialog/TfastDialogHelper$9;->val$fromCheck:Z

    # invokes: Lcom/tfastdigital/dialog/TfastDialogHelper;->applyConfig(Landroid/app/Activity;Landroid/view/View;Landroid/app/AlertDialog;Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;Lorg/json/JSONObject;Z)V
    invoke-static/range {v1 .. v6}, Lcom/tfastdigital/dialog/TfastDialogHelper;->access$700(Landroid/app/Activity;Landroid/view/View;Landroid/app/AlertDialog;Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;Lorg/json/JSONObject;Z)V

    .line 299
    return-void
.end method
