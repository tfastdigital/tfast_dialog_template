.class Lcom/tfastdigital/dialog/TfastDialogHelper$6;
.super Ljava/lang/Object;
.source "TfastDialogHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tfastdigital/dialog/TfastDialogHelper;->wireSocial(Landroid/app/Activity;Landroid/view/View;Lcom/tfastdigital/dialog/TfastDialogHelper$DialogState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 178
    iput-object p1, p0, Lcom/tfastdigital/dialog/TfastDialogHelper$6;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 181
    iget-object p1, p0, Lcom/tfastdigital/dialog/TfastDialogHelper$6;->val$activity:Landroid/app/Activity;

    const-string v0, "https://tfastdigital.com"

    invoke-static {p1, v0}, Lcom/tfastdigital/dialog/TfastDialogHelper;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    .line 182
    return-void
.end method
