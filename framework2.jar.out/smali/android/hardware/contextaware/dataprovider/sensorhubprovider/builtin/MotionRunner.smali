.class public Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/MotionRunner;
.super Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;
.source "MotionRunner.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerObservable;)V
    .locals 1
    .parameter "context"
    .parameter "observable"

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerObservable;)V

    .line 40
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 0

    .prologue
    .line 117
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 118
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->disable()V

    .line 119
    return-void
.end method

.method public enable()V
    .locals 0

    .prologue
    .line 105
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 106
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->enable()V

    .line 107
    return-void
.end method

.method public getContextType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_MOTION:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getContextValueNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 84
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Type"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected getDataPacket()[B
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x2

    new-array v0, v0, [B

    return-object v0
.end method

.method protected getInstLibType()B
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x4

    return v0
.end method

.method protected getObserver()Landroid/hardware/contextaware/manager/IApPowerObserver;
    .locals 0

    .prologue
    .line 94
    return-object p0
.end method
