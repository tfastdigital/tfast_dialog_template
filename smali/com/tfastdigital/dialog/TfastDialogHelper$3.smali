.class Lcom/tfastdigital/dialog/TfastDialogHelper$3;
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

.field final synthetic val$configUrl:Ljava/lang/String;

.field final synthetic val$dialog:Landroid/app/AlertDialog;

.field final synthetic val$root:Landroid/view/View;

.field final synthetic val$state:Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/app/Activity;Ljava/lang/String;Landroid/app/AlertDialog;Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 155
    iput-object p1, p0, Lcom/tfastdigital/dialog/TfastDialogHelper$3;->val$root:Landroid/view/View;

    iput-object p2, p0, Lcom/tfastdigital/dialog/TfastDialogHelper$3;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/tfastdigital/dialog/TfastDialogHelper$3;->val$configUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/tfastdigital/dialog/TfastDialogHelper$3;->val$dialog:Landroid/app/AlertDialog;

    iput-object p5, p0, Lcom/tfastdigital/dialog/TfastDialogHelper$3;->val$state:Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    .line 158
    iget-object p1, p0, Lcom/tfastdigital/dialog/TfastDialogHelper$3;->val$root:Landroid/view/View;

    iget-object v0, p0, Lcom/tfastdigital/dialog/TfastDialogHelper$3;->val$activity:Landroid/app/Activity;

    const-string v1, "tfast_status"

    # invokes: Lcom/tfastdigital/dialog/TfastDialogHelper;->find(Landroid/view/View;Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;
    invoke-static {p1, v0, v1}, Lcom/tfastdigital/dialog/TfastDialogHelper;->access$100(Landroid/view/View;Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    # invokes: Lcom/tfastdigital/dialog/TfastDialogHelper;->asText(Landroid/view/View;)Landroid/widget/TextView;
    invoke-static {p1}, Lcom/tfastdigital/dialog/TfastDialogHelper;->access$200(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object p1

    .line 159
    if-eqz p1, :cond_1e

    .line 160
    const-string v0, "Checking for updates..."

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    const-string v0, "#9B9BB0"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 163
    :cond_1e
    iget-object p1, p0, Lcom/tfastdigital/dialog/TfastDialogHelper$3;->val$activity:Landroid/app/Activity;

    const-string v0, "Checking Tfast updates..."

    # invokes: Lcom/tfastdigital/dialog/TfastDialogHelper;->toast(Landroid/app/Activity;Ljava/lang/String;)V
    invoke-static {p1, v0}, Lcom/tfastdigital/dialog/TfastDialogHelper;->access$300(Landroid/app/Activity;Ljava/lang/String;)V

    .line 164
    iget-object p1, p0, Lcom/tfastdigital/dialog/TfastDialogHelper$3;->val$configUrl:Ljava/lang/String;

    if-eqz p1, :cond_35

    iget-object p1, p0, Lcom/tfastdigital/dialog/TfastDialogHelper$3;->val$configUrl:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_32

    goto :goto_35

    .line 165
    :cond_32
    iget-object p1, p0, Lcom/tfastdigital/dialog/TfastDialogHelper$3;->val$configUrl:Ljava/lang/String;

    goto :goto_37

    :cond_35
    :goto_35
    const-string p1, "https://raw.githubusercontent.com/tfastdigital/tfast_dialog_template/main/config/update.json"

    :goto_37
    move-object v4, p1

    .line 166
    iget-object v0, p0, Lcom/tfastdigital/dialog/TfastDialogHelper$3;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/tfastdigital/dialog/TfastDialogHelper$3;->val$root:Landroid/view/View;

    iget-object v2, p0, Lcom/tfastdigital/dialog/TfastDialogHelper$3;->val$dialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/tfastdigital/dialog/TfastDialogHelper$3;->val$state:Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;

    const/4 v5, 0x1

    # invokes: Lcom/tfastdigital/dialog/TfastDialogHelper;->fetchAndApply(Landroid/app/Activity;Landroid/view/View;Landroid/app/AlertDialog;Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;Ljava/lang/String;Z)V
    invoke-static/range {v0 .. v5}, Lcom/tfastdigital/dialog/TfastDialogHelper;->access$400(Landroid/app/Activity;Landroid/view/View;Landroid/app/AlertDialog;Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;Ljava/lang/String;Z)V

    .line 167
    return-void
.end method
