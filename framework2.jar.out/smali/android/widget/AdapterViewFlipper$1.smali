.class Landroid/widget/AdapterViewFlipper$1;
.super Landroid/content/BroadcastReceiver;
.source "AdapterViewFlipper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AdapterViewFlipper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AdapterViewFlipper;


# direct methods
.method constructor <init>(Landroid/widget/AdapterViewFlipper;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Landroid/widget/AdapterViewFlipper$1;->this$0:Landroid/widget/AdapterViewFlipper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 93
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    iget-object v1, p0, Landroid/widget/AdapterViewFlipper$1;->this$0:Landroid/widget/AdapterViewFlipper;

    #setter for: Landroid/widget/AdapterViewFlipper;->mUserPresent:Z
    invoke-static {v1, v3}, Landroid/widget/AdapterViewFlipper;->access$002(Landroid/widget/AdapterViewFlipper;Z)Z

    .line 96
    iget-object v1, p0, Landroid/widget/AdapterViewFlipper$1;->this$0:Landroid/widget/AdapterViewFlipper;

    #calls: Landroid/widget/AdapterViewFlipper;->updateRunning()V
    invoke-static {v1}, Landroid/widget/AdapterViewFlipper;->access$100(Landroid/widget/AdapterViewFlipper;)V

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Landroid/widget/AdapterViewFlipper$1;->this$0:Landroid/widget/AdapterViewFlipper;

    const/4 v2, 0x1

    #setter for: Landroid/widget/AdapterViewFlipper;->mUserPresent:Z
    invoke-static {v1, v2}, Landroid/widget/AdapterViewFlipper;->access$002(Landroid/widget/AdapterViewFlipper;Z)Z

    .line 99
    iget-object v1, p0, Landroid/widget/AdapterViewFlipper$1;->this$0:Landroid/widget/AdapterViewFlipper;

    #calls: Landroid/widget/AdapterViewFlipper;->updateRunning(Z)V
    invoke-static {v1, v3}, Landroid/widget/AdapterViewFlipper;->access$200(Landroid/widget/AdapterViewFlipper;Z)V

    goto :goto_0
.end method
