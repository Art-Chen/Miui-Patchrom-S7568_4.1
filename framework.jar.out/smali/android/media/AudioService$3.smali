.class Landroid/media/AudioService$3;
.super Landroid/telephony/PhoneStateListener;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method constructor <init>(Landroid/media/AudioService;)V
    .locals 0
    .parameter

    .prologue
    .line 4701
    iput-object p1, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    const/4 v0, 0x1

    .line 4704
    if-ne p1, v0, :cond_1

    .line 4706
    invoke-static {}, Landroid/media/AudioService;->access$8500()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4707
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    const/4 v2, 0x1

    #setter for: Landroid/media/AudioService;->mIsRinging:Z
    invoke-static {v0, v2}, Landroid/media/AudioService;->access$8602(Landroid/media/AudioService;Z)Z

    .line 4708
    monitor-exit v1

    .line 4715
    :cond_0
    :goto_0
    return-void

    .line 4708
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 4709
    :cond_1
    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    if-nez p1, :cond_0

    .line 4711
    :cond_2
    invoke-static {}, Landroid/media/AudioService;->access$8500()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4712
    :try_start_1
    iget-object v0, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    const/4 v2, 0x0

    #setter for: Landroid/media/AudioService;->mIsRinging:Z
    invoke-static {v0, v2}, Landroid/media/AudioService;->access$8602(Landroid/media/AudioService;Z)Z

    .line 4713
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2
    .parameter "serviceState"

    .prologue
    .line 4719
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 4720
    const-string v0, "AudioService"

    const-string v1, "##################################################"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4721
    const-string v0, "AudioService"

    const-string v1, "### RIL State is changed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4722
    const-string v0, "AudioService"

    const-string v1, "##################################################"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4723
    const-string/jumbo v0, "ril_connected=1"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 4725
    :cond_0
    return-void
.end method
