.class public final Landroid/provider/ContactsContract$QuickContact;
.super Ljava/lang/Object;
.source "ContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "QuickContact"
.end annotation


# static fields
.field public static final ACTION_QUICK_CONTACT:Ljava/lang/String; = "com.android.contacts.action.QUICK_CONTACT"

.field public static final EXTRA_EXCLUDE_MIMES:Ljava/lang/String; = "exclude_mimes"

.field public static final EXTRA_MODE:Ljava/lang/String; = "mode"

.field public static final EXTRA_TARGET_RECT:Ljava/lang/String; = "target_rect"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MODE_LARGE:I = 0x3

.field public static final MODE_MEDIUM:I = 0x2

.field public static final MODE_SMALL:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7618
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showQuickContact(Landroid/content/Context;Landroid/graphics/Rect;Landroid/net/Uri;I[Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "target"
    .parameter "lookupUri"
    .parameter "mode"
    .parameter "excludeMimes"

    .prologue
    .line 7737
    move-object v0, p0

    .line 7739
    .local v0, actualContext:Landroid/content/Context;
    :goto_0
    instance-of v3, v0, Landroid/content/ContextWrapper;

    if-eqz v3, :cond_0

    instance-of v3, v0, Landroid/app/Activity;

    if-nez v3, :cond_0

    .line 7740
    check-cast v0, Landroid/content/ContextWrapper;

    .end local v0           #actualContext:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .restart local v0       #actualContext:Landroid/content/Context;
    goto :goto_0

    .line 7742
    :cond_0
    instance-of v3, v0, Landroid/app/Activity;

    if-eqz v3, :cond_1

    const/high16 v2, 0x8

    .line 7747
    .local v2, intentFlags:I
    :goto_1
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.contacts.action.QUICK_CONTACT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 7749
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 7750
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 7751
    const-string/jumbo v3, "mode"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7752
    const-string v3, "exclude_mimes"

    invoke-virtual {v1, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 7753
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 7754
    return-void

    .line 7742
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #intentFlags:I
    :cond_1
    const v2, 0x10008000

    goto :goto_1
.end method

.method public static showQuickContact(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;I[Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "target"
    .parameter "lookupUri"
    .parameter "mode"
    .parameter "excludeMimes"

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    const/high16 v5, 0x3f00

    .line 7693
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v3

    iget v0, v3, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 7694
    .local v0, appScale:F
    const/4 v3, 0x2

    new-array v1, v3, [I

    .line 7695
    .local v1, pos:[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 7697
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 7698
    .local v2, rect:Landroid/graphics/Rect;
    aget v3, v1, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 7699
    aget v3, v1, v6

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 7700
    aget v3, v1, v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 7701
    aget v3, v1, v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 7704
    invoke-static {p0, v2, p2, p3, p4}, Landroid/provider/ContactsContract$QuickContact;->showQuickContact(Landroid/content/Context;Landroid/graphics/Rect;Landroid/net/Uri;I[Ljava/lang/String;)V

    .line 7705
    return-void
.end method
