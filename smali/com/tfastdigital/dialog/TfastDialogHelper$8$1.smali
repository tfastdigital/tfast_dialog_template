.class Lcom/tfastdigital/dialog/TfastDialogHelper$8$1;
.super Ljava/lang/Object;
.source "TfastDialogHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tfastdigital/dialog/TfastDialogHelper$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tfastdigital/dialog/TfastDialogHelper$8;

.field final synthetic val$json:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/tfastdigital/dialog/TfastDialogHelper$8;Lorg/json/JSONObject;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 226
    iput-object p1, p0, Lcom/tfastdigital/dialog/TfastDialogHelper$8$1;->this$0:Lcom/tfastdigital/dialog/TfastDialogHelper$8;

    iput-object p2, p0, Lcom/tfastdigital/dialog/TfastDialogHelper$8$1;->val$json:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 229
    iget-object v0, p0, Lcom/tfastdigital/dialog/TfastDialogHelper$8$1;->this$0:Lcom/tfastdigital/dialog/TfastDialogHelper$8;

    iget-object v0, v0, Lcom/tfastdigital/dialog/TfastDialogHelper$8;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 230
    :cond_b
    iget-object v0, p0, Lcom/tfastdigital/dialog/TfastDialogHelper$8$1;->this$0:Lcom/tfastdigital/dialog/TfastDialogHelper$8;

    iget-object v0, v0, Lcom/tfastdigital/dialog/TfastDialogHelper$8;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/tfastdigital/dialog/TfastDialogHelper$8$1;->this$0:Lcom/tfastdigital/dialog/TfastDialogHelper$8;

    iget-object v1, v1, Lcom/tfastdigital/dialog/TfastDialogHelper$8;->val$root:Landroid/view/View;

    iget-object v2, p0, Lcom/tfastdigital/dialog/TfastDialogHelper$8$1;->this$0:Lcom/tfastdigital/dialog/TfastDialogHelper$8;

    iget-object v2, v2, Lcom/tfastdigital/dialog/TfastDialogHelper$8;->val$dialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/tfastdigital/dialog/TfastDialogHelper$8$1;->this$0:Lcom/tfastdigital/dialog/TfastDialogHelper$8;

    iget-object v3, v3, Lcom/tfastdigital/dialog/TfastDialogHelper$8;->val$state:Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;

    iget-object v4, p0, Lcom/tfastdigital/dialog/TfastDialogHelper$8$1;->val$json:Lorg/json/JSONObject;

    # invokes: Lcom/tfastdigital/dialog/TfastDialogHelper;->applyConfig(Landroid/app/Activity;Landroid/view/View;Landroid/app/AlertDialog;Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;Lorg/json/JSONObject;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/tfastdigital/dialog/TfastDialogHelper;->access$300(Landroid/app/Activity;Landroid/view/View;Landroid/app/AlertDialog;Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;Lorg/json/JSONObject;)V

    .line 231
    return-void
.end method
