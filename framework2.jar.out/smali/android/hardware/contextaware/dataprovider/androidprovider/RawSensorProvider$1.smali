.class Landroid/hardware/contextaware/dataprovider/androidprovider/RawSensorProvider$1;
.super Ljava/lang/Object;
.source "RawSensorProvider.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/dataprovider/androidprovider/RawSensorProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/contextaware/dataprovider/androidprovider/RawSensorProvider;


# direct methods
.method constructor <init>(Landroid/hardware/contextaware/dataprovider/androidprovider/RawSensorProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/RawSensorProvider$1;->this$0:Landroid/hardware/contextaware/dataprovider/androidprovider/RawSensorProvider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 64
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7
    .parameter "event"

    .prologue
    .line 69
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 71
    .local v2, sensorData:Landroid/os/Bundle;
    const-string v4, "SystemTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 72
    const-string v4, "TimeStamp"

    iget-wide v5, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 73
    const-string v4, "Accuracy"

    iget v5, p1, Landroid/hardware/SensorEvent;->accuracy:I

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 75
    iget-object v4, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/RawSensorProvider$1;->this$0:Landroid/hardware/contextaware/dataprovider/androidprovider/RawSensorProvider;

    #calls: Landroid/hardware/contextaware/dataprovider/androidprovider/RawSensorProvider;->getContextValueNames()[Ljava/lang/String;
    invoke-static {v4}, Landroid/hardware/contextaware/dataprovider/androidprovider/RawSensorProvider;->access$000(Landroid/hardware/contextaware/dataprovider/androidprovider/RawSensorProvider;)[Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, names:[Ljava/lang/String;
    array-length v4, v1

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 78
    .local v3, valueLength:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 79
    aget-object v4, v1, v0

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v0

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    :cond_0
    iget-object v4, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/RawSensorProvider$1;->this$0:Landroid/hardware/contextaware/dataprovider/androidprovider/RawSensorProvider;

    iget-object v5, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/RawSensorProvider$1;->this$0:Landroid/hardware/contextaware/dataprovider/androidprovider/RawSensorProvider;

    invoke-virtual {v5}, Landroid/hardware/contextaware/dataprovider/androidprovider/RawSensorProvider;->getContextType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Landroid/hardware/contextaware/dataprovider/androidprovider/RawSensorProvider;->notifyListener(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 83
    return-void
.end method
