.class public Lcom/tfastdigital/dialog/TfastPrefClick;
.super Ljava/lang/Object;
.source "TfastPrefClick.java"

# interfaces
# Host apps may use different Preference click interfaces.
# For androidx Preference (munowatch obfuscated as Ll4/k): method a(Object)V
# Also implements View.OnClickListener for layout buttons if needed.

.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tfastdigital/dialog/TfastPrefClick;->activity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/tfastdigital/dialog/TfastPrefClick;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/tfastdigital/dialog/TfastDialogHelper;->showCheckUpdate(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1
    # Ll4/k Preference click (Munowatch) — ignore preference object

    iget-object v0, p0, Lcom/tfastdigital/dialog/TfastPrefClick;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/tfastdigital/dialog/TfastDialogHelper;->showCheckUpdate(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method
