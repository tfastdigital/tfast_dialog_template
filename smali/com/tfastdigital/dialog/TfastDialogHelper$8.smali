.class Lcom/tfastdigital/dialog/TfastDialogHelper$8;
.super Ljava/lang/Object;
.source "TfastDialogHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tfastdigital/dialog/TfastDialogHelper;->bindUrlButton(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Lcom/tfastdigital/dialog/TfastDialogHelper$UrlProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$provider:Lcom/tfastdigital/dialog/TfastDialogHelper$UrlProvider;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/tfastdigital/dialog/TfastDialogHelper$UrlProvider;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 289
    iput-object p1, p0, Lcom/tfastdigital/dialog/TfastDialogHelper$8;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/tfastdigital/dialog/TfastDialogHelper$8;->val$provider:Lcom/tfastdigital/dialog/TfastDialogHelper$UrlProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 292
    iget-object p1, p0, Lcom/tfastdigital/dialog/TfastDialogHelper$8;->val$activity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/tfastdigital/dialog/TfastDialogHelper$8;->val$provider:Lcom/tfastdigital/dialog/TfastDialogHelper$UrlProvider;

    invoke-interface {v0}, Lcom/tfastdigital/dialog/TfastDialogHelper$UrlProvider;->get()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tfastdigital/dialog/TfastDialogHelper;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    .line 293
    return-void
.end method
