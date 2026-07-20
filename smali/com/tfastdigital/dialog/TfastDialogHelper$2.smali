.class Lcom/tfastdigital/dialog/TfastDialogHelper$2;
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
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$state:Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 126
    iput-object p1, p0, Lcom/tfastdigital/dialog/TfastDialogHelper$2;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/tfastdigital/dialog/TfastDialogHelper$2;->val$state:Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 129
    iget-object p1, p0, Lcom/tfastdigital/dialog/TfastDialogHelper$2;->val$activity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/tfastdigital/dialog/TfastDialogHelper$2;->val$state:Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;

    iget-object v0, v0, Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;->updateUrl:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/tfastdigital/dialog/TfastDialogHelper;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    .line 130
    return-void
.end method
