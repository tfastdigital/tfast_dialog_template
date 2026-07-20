.class Lcom/tfastdigital/dialog/TfastDialogHelper$8;
.super Ljava/lang/Object;
.source "TfastDialogHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tfastdigital/dialog/TfastDialogHelper;->fetchAndApply(Landroid/app/Activity;Landroid/view/View;Landroid/app/AlertDialog;Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$configUrl:Ljava/lang/String;

.field final synthetic val$dialog:Landroid/app/AlertDialog;

.field final synthetic val$main:Landroid/os/Handler;

.field final synthetic val$root:Landroid/view/View;

.field final synthetic val$state:Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/os/Handler;Landroid/app/Activity;Landroid/view/View;Landroid/app/AlertDialog;Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 221
    iput-object p1, p0, Lcom/tfastdigital/dialog/TfastDialogHelper$8;->val$configUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/tfastdigital/dialog/TfastDialogHelper$8;->val$main:Landroid/os/Handler;

    iput-object p3, p0, Lcom/tfastdigital/dialog/TfastDialogHelper$8;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/tfastdigital/dialog/TfastDialogHelper$8;->val$root:Landroid/view/View;

    iput-object p5, p0, Lcom/tfastdigital/dialog/TfastDialogHelper$8;->val$dialog:Landroid/app/AlertDialog;

    iput-object p6, p0, Lcom/tfastdigital/dialog/TfastDialogHelper$8;->val$state:Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 224
    iget-object v0, p0, Lcom/tfastdigital/dialog/TfastDialogHelper$8;->val$configUrl:Ljava/lang/String;

    const/16 v1, 0x1f40

    # invokes: Lcom/tfastdigital/dialog/TfastDialogHelper;->httpGet(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/tfastdigital/dialog/TfastDialogHelper;->access$100(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 225
    # invokes: Lcom/tfastdigital/dialog/TfastDialogHelper;->parseJson(Ljava/lang/String;)Lorg/json/JSONObject;
    invoke-static {v0}, Lcom/tfastdigital/dialog/TfastDialogHelper;->access$200(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 226
    iget-object v1, p0, Lcom/tfastdigital/dialog/TfastDialogHelper$8;->val$main:Landroid/os/Handler;

    new-instance v2, Lcom/tfastdigital/dialog/TfastDialogHelper$8$1;

    invoke-direct {v2, p0, v0}, Lcom/tfastdigital/dialog/TfastDialogHelper$8$1;-><init>(Lcom/tfastdigital/dialog/TfastDialogHelper$8;Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 233
    return-void
.end method
