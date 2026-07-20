.class Lcom/tfastdigital/dialog/TfastDialogHelper$10;
.super Ljava/lang/Object;
.source "TfastDialogHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tfastdigital/dialog/TfastDialogHelper;->toast(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 622
    iput-object p1, p0, Lcom/tfastdigital/dialog/TfastDialogHelper$10;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/tfastdigital/dialog/TfastDialogHelper$10;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 626
    :try_start_0
    iget-object v0, p0, Lcom/tfastdigital/dialog/TfastDialogHelper$10;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/tfastdigital/dialog/TfastDialogHelper$10;->val$msg:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    .line 628
    goto :goto_e

    .line 627
    :catch_d
    move-exception v0

    .line 629
    :goto_e
    return-void
.end method
