.class final Landroid/webkit/DeviceMotionService;
.super Ljava/lang/Object;
.source "DeviceMotionService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final INTERVAL_MILLIS:I = 0x64


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHaveSentErrorEvent:Z

.field private mIsRunning:Z

.field private mLastAcceleration:[F

.field private mManager:Landroid/webkit/DeviceMotionAndOrientationManager;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mUpdateRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Landroid/webkit/DeviceMotionService;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/webkit/DeviceMotionService;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/webkit/DeviceMotionAndOrientationManager;Landroid/content/Context;)V
    .locals 1
    .parameter "manager"
    .parameter "context"

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Landroid/webkit/DeviceMotionService;->mManager:Landroid/webkit/DeviceMotionAndOrientationManager;

    .line 45
    sget-boolean v0, Landroid/webkit/DeviceMotionService;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkit/DeviceMotionService;->mManager:Landroid/webkit/DeviceMotionAndOrientationManager;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 46
    :cond_0
    iput-object p2, p0, Landroid/webkit/DeviceMotionService;->mContext:Landroid/content/Context;

    .line 47
    sget-boolean v0, Landroid/webkit/DeviceMotionService;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/webkit/DeviceMotionService;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 48
    :cond_1
    return-void
.end method

.method static synthetic access$000(Landroid/webkit/DeviceMotionService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Landroid/webkit/DeviceMotionService;->mIsRunning:Z

    return v0
.end method

.method static synthetic access$100(Landroid/webkit/DeviceMotionService;)Landroid/webkit/DeviceMotionAndOrientationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Landroid/webkit/DeviceMotionService;->mManager:Landroid/webkit/DeviceMotionAndOrientationManager;

    return-object v0
.end method

.method static synthetic access$200(Landroid/webkit/DeviceMotionService;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Landroid/webkit/DeviceMotionService;->mLastAcceleration:[F

    return-object v0
.end method

.method static synthetic access$300(Landroid/webkit/DeviceMotionService;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Landroid/webkit/DeviceMotionService;->mUpdateRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Landroid/webkit/DeviceMotionService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Landroid/webkit/DeviceMotionService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$502(Landroid/webkit/DeviceMotionService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-boolean p1, p0, Landroid/webkit/DeviceMotionService;->mHaveSentErrorEvent:Z

    return p1
.end method

.method private createHandler()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Landroid/webkit/DeviceMotionService;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkit/DeviceMotionService;->mManager:Landroid/webkit/DeviceMotionAndOrientationManager;

    if-nez v0, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/webkit/DeviceMotionService;->mHandler:Landroid/os/Handler;

    .line 99
    new-instance v0, Landroid/webkit/DeviceMotionService$2;

    invoke-direct {v0, p0}, Landroid/webkit/DeviceMotionService$2;-><init>(Landroid/webkit/DeviceMotionService;)V

    iput-object v0, p0, Landroid/webkit/DeviceMotionService;->mUpdateRunnable:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method private getSensorManager()Landroid/hardware/SensorManager;
    .locals 2

    .prologue
    .line 133
    sget-boolean v0, Landroid/webkit/DeviceMotionService;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    const-string v0, "WebViewCoreThread"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 134
    :cond_0
    iget-object v0, p0, Landroid/webkit/DeviceMotionService;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_1

    .line 135
    iget-object v0, p0, Landroid/webkit/DeviceMotionService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Landroid/webkit/DeviceMotionService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 137
    :cond_1
    iget-object v0, p0, Landroid/webkit/DeviceMotionService;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method private registerForAccelerometerSensor()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 141
    invoke-direct {p0}, Landroid/webkit/DeviceMotionService;->getSensorManager()Landroid/hardware/SensorManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 142
    .local v0, sensors:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 147
    :goto_0
    return v1

    .line 145
    :cond_0
    invoke-direct {p0}, Landroid/webkit/DeviceMotionService;->createHandler()V

    .line 147
    invoke-direct {p0}, Landroid/webkit/DeviceMotionService;->getSensorManager()Landroid/hardware/SensorManager;

    move-result-object v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    const/4 v3, 0x2

    iget-object v4, p0, Landroid/webkit/DeviceMotionService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p0, v1, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    move-result v1

    goto :goto_0
.end method

.method private registerForSensor()V
    .locals 1

    .prologue
    .line 127
    invoke-direct {p0}, Landroid/webkit/DeviceMotionService;->registerForAccelerometerSensor()Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    invoke-direct {p0}, Landroid/webkit/DeviceMotionService;->sendErrorEvent()V

    .line 130
    :cond_0
    return-void
.end method

.method private sendErrorEvent()V
    .locals 2

    .prologue
    .line 75
    sget-boolean v0, Landroid/webkit/DeviceMotionService;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    const-string v0, "WebViewCoreThread"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 77
    :cond_0
    iget-boolean v0, p0, Landroid/webkit/DeviceMotionService;->mHaveSentErrorEvent:Z

    if-eqz v0, :cond_1

    .line 91
    :goto_0
    return-void

    .line 79
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/DeviceMotionService;->mHaveSentErrorEvent:Z

    .line 80
    invoke-direct {p0}, Landroid/webkit/DeviceMotionService;->createHandler()V

    .line 81
    iget-object v0, p0, Landroid/webkit/DeviceMotionService;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/webkit/DeviceMotionService$1;

    invoke-direct {v1, p0}, Landroid/webkit/DeviceMotionService$1;-><init>(Landroid/webkit/DeviceMotionService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private startSendingUpdates()V
    .locals 1

    .prologue
    .line 117
    invoke-direct {p0}, Landroid/webkit/DeviceMotionService;->createHandler()V

    .line 118
    iget-object v0, p0, Landroid/webkit/DeviceMotionService;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 119
    return-void
.end method

.method private stopSendingUpdates()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Landroid/webkit/DeviceMotionService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/DeviceMotionService;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/DeviceMotionService;->mLastAcceleration:[F

    .line 124
    return-void
.end method

.method private unregisterFromSensor()V
    .locals 1

    .prologue
    .line 152
    invoke-direct {p0}, Landroid/webkit/DeviceMotionService;->getSensorManager()Landroid/hardware/SensorManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 153
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 2
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 179
    sget-boolean v0, Landroid/webkit/DeviceMotionService;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    const-string v0, "WebViewCoreThread"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 180
    :cond_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 161
    sget-boolean v1, Landroid/webkit/DeviceMotionService;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v1, v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 162
    :cond_0
    sget-boolean v1, Landroid/webkit/DeviceMotionService;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    const-string v1, "WebViewCoreThread"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 163
    :cond_1
    sget-boolean v1, Landroid/webkit/DeviceMotionService;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    if-eq v1, v0, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 166
    :cond_2
    iget-boolean v1, p0, Landroid/webkit/DeviceMotionService;->mIsRunning:Z

    if-nez v1, :cond_4

    .line 175
    :cond_3
    :goto_0
    return-void

    .line 170
    :cond_4
    iget-object v1, p0, Landroid/webkit/DeviceMotionService;->mLastAcceleration:[F

    if-nez v1, :cond_5

    .line 171
    .local v0, firstData:Z
    :goto_1
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    iput-object v1, p0, Landroid/webkit/DeviceMotionService;->mLastAcceleration:[F

    .line 172
    if-eqz v0, :cond_3

    .line 173
    invoke-direct {p0}, Landroid/webkit/DeviceMotionService;->startSendingUpdates()V

    goto :goto_0

    .line 170
    .end local v0           #firstData:Z
    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Landroid/webkit/DeviceMotionService;->mIsRunning:Z

    if-eqz v0, :cond_0

    .line 70
    invoke-direct {p0}, Landroid/webkit/DeviceMotionService;->registerForSensor()V

    .line 72
    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/DeviceMotionService;->mIsRunning:Z

    .line 52
    invoke-direct {p0}, Landroid/webkit/DeviceMotionService;->registerForSensor()V

    .line 53
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/DeviceMotionService;->mIsRunning:Z

    .line 57
    invoke-direct {p0}, Landroid/webkit/DeviceMotionService;->stopSendingUpdates()V

    .line 58
    invoke-direct {p0}, Landroid/webkit/DeviceMotionService;->unregisterFromSensor()V

    .line 59
    return-void
.end method

.method public suspend()V
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Landroid/webkit/DeviceMotionService;->mIsRunning:Z

    if-eqz v0, :cond_0

    .line 63
    invoke-direct {p0}, Landroid/webkit/DeviceMotionService;->stopSendingUpdates()V

    .line 64
    invoke-direct {p0}, Landroid/webkit/DeviceMotionService;->unregisterFromSensor()V

    .line 66
    :cond_0
    return-void
.end method
