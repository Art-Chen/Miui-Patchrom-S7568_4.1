.class public Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;
.super Landroid/hardware/contextaware/aggregator/Aggregator;
.source "LocationAggregator.java"


# static fields
.field private static final ACCURACY_REQUIREMENT_DEFAULT:I = 0x64

.field private static final FILE_NAME_ALL_LOCATION:Ljava/lang/String; = "AllLocation"

.field private static final FILE_NAME_APDR_LOCATION:Ljava/lang/String; = "ApdrLocation"

.field private static final HYPOS_LPHP_FILTER_INITIALIZED:I = 0x1

.field private static final HYPOS_LPHP_MODE_GPSOFFWPSOFF:I = 0x0

.field private static final HYPOS_LPHP_MODE_GPSOFFWPSON:I = 0x1

.field private static final HYPOS_LPHP_MODE_GPSONWPSOFF:I = 0x2

.field private static final HYPOS_LPHP_MODE_GPSONWPSON:I = 0x3


# instance fields
.field private mApdrNoti:Z

.field private mCurAccuracy:F

.field private mCurAltitude:D

.field private mCurLatitude:D

.field private mCurLongitude:D

.field private mCurSysTime:J

.field private mCurTimeStamp:J

.field private mHybridPositioningEngine:Landroid/hardware/contextaware/lib/builtin/LphpLibEngine;

.field private mMovingUpdataCnt:I

.field private mPedestrianStatus:I

.field private mUserWantedAccuracy:I

.field private mlSysTimeHybrid:J

.field private mlTimeStampHybrid:J


# direct methods
.method public constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerObservable;)V
    .locals 3
    .parameter
    .parameter "observable"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/hardware/contextaware/manager/ContextProvider;",
            ">;",
            "Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerObservable;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, collectionList:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<Landroid/hardware/contextaware/manager/ContextProvider;>;"
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 116
    invoke-direct {p0, v0, v0, p1, p2}, Landroid/hardware/contextaware/aggregator/Aggregator;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/util/concurrent/CopyOnWriteArrayList;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerObservable;)V

    .line 73
    iput-wide v1, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mlSysTimeHybrid:J

    .line 76
    iput-wide v1, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mlTimeStampHybrid:J

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mApdrNoti:Z

    .line 117
    return-void
.end method

.method private getDate(J)[I
    .locals 7
    .parameter "time"

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 658
    const/4 v2, 0x6

    new-array v0, v2, [I

    .line 660
    .local v0, mmUtcTime:[I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 661
    .local v1, utcDate:Ljava/util/Calendar;
    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 663
    const/4 v2, 0x0

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    aput v3, v0, v2

    .line 664
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v4

    .line 665
    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    aput v2, v0, v5

    .line 666
    const/4 v2, 0x3

    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    aput v3, v0, v2

    .line 667
    const/4 v2, 0x4

    const/16 v3, 0xc

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    aput v3, v0, v2

    .line 668
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    aput v2, v0, v6

    .line 670
    return-object v0
.end method

.method private getLocationDel(Landroid/os/Bundle;)[D
    .locals 4
    .parameter "context"

    .prologue
    .line 710
    const/4 v1, 0x3

    new-array v0, v1, [D

    .line 711
    .local v0, locationDel:[D
    const/4 v1, 0x0

    const-string v2, "Latitude"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 712
    const/4 v1, 0x1

    const-string v2, "Longitude"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 713
    const/4 v1, 0x2

    const-string v2, "Altitude"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 714
    return-object v0
.end method

.method private getLocationExtDel(Landroid/os/Bundle;)[F
    .locals 3
    .parameter "context"

    .prologue
    .line 725
    const/4 v1, 0x3

    new-array v0, v1, [F

    .line 726
    .local v0, locationExtDel:[F
    const/4 v1, 0x0

    const-string v2, "Bearing"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    aput v2, v0, v1

    .line 727
    const/4 v1, 0x1

    const-string v2, "Speed"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    aput v2, v0, v1

    .line 728
    const/4 v1, 0x2

    const-string v2, "Accuracy"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    aput v2, v0, v1

    .line 729
    return-object v0
.end method

.method private isFilterInitialized()Z
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mHybridPositioningEngine:Landroid/hardware/contextaware/lib/builtin/LphpLibEngine;

    if-nez v0, :cond_0

    .line 244
    const/4 v0, 0x0

    .line 251
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private notifyLocationContext(JJ[D[FZI)V
    .locals 5
    .parameter "sysTime"
    .parameter "timeStamp"
    .parameter "daLocationHybrid"
    .parameter "faLocationExtHybrid"
    .parameter "valid"
    .parameter "PedestrianStatus"

    .prologue
    .line 586
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 587
    .local v0, locationContext:Landroid/os/Bundle;
    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->getContextValueNames()[Ljava/lang/String;

    move-result-object v1

    .line 589
    .local v1, names:[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 590
    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 591
    const/4 v2, 0x2

    aget-object v2, v1, v2

    const/4 v3, 0x0

    aget-wide v3, p5, v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 592
    const/4 v2, 0x3

    aget-object v2, v1, v2

    const/4 v3, 0x1

    aget-wide v3, p5, v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 593
    const/4 v2, 0x4

    aget-object v2, v1, v2

    const/4 v3, 0x2

    aget-wide v3, p5, v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 594
    const/4 v2, 0x5

    aget-object v2, v1, v2

    const/4 v3, 0x0

    aget v3, p6, v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 595
    const/4 v2, 0x6

    aget-object v2, v1, v2

    const/4 v3, 0x1

    aget v3, p6, v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 596
    const/4 v2, 0x7

    aget-object v2, v1, v2

    const/4 v3, 0x2

    aget v3, p6, v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 597
    const/16 v2, 0x8

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, p7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 598
    const/16 v2, 0x9

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, p8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 600
    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->getContextType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->notifyListener(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 601
    return-void
.end method

.method private receiveApdrNoti(Landroid/os/Bundle;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 515
    if-nez p1, :cond_1

    .line 529
    :cond_0
    :goto_0
    return-void

    .line 519
    :cond_1
    const-string v1, "Alert"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 520
    .local v0, notiType:I
    if-eq v0, v2, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 525
    :cond_2
    iput-boolean v2, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mApdrNoti:Z

    .line 527
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 528
    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->resume()V

    goto :goto_0
.end method

.method private requestGpsData(JJ)V
    .locals 22
    .parameter "sysTime"
    .parameter "timeStamp"

    .prologue
    .line 540
    const/4 v1, 0x3

    new-array v6, v1, [D

    .line 541
    .local v6, daLocationHybrid:[D
    const/4 v1, 0x3

    new-array v7, v1, [F

    .line 542
    .local v7, faLocationExtHybrid:[F
    const/4 v1, 0x1

    new-array v0, v1, [I

    move-object/from16 v21, v0

    .line 544
    .local v21, val:[I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mHybridPositioningEngine:Landroid/hardware/contextaware/lib/builtin/LphpLibEngine;

    move-object/from16 v0, v21

    invoke-virtual {v1, v6, v7, v0}, Landroid/hardware/contextaware/lib/builtin/LphpLibEngine;->native_LPHPEngine_hybridGpsRequestGpsData([D[F[I)V

    .line 547
    const/4 v1, 0x0

    aget v1, v21, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v8, 0x1

    .line 549
    .local v8, mbLocationHybridValid:Z
    :goto_0
    if-eqz v8, :cond_0

    .line 550
    move-object/from16 v0, p0

    iget v9, v0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mPedestrianStatus:I

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    invoke-direct/range {v1 .. v9}, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->notifyLocationContext(JJ[D[FZI)V

    .line 554
    const/4 v1, 0x0

    aget-wide v14, v6, v1

    const/4 v1, 0x1

    aget-wide v16, v6, v1

    const/4 v1, 0x2

    aget-wide v18, v6, v1

    const/4 v1, 0x2

    aget v20, v7, v1

    move-object/from16 v9, p0

    move-wide/from16 v10, p1

    move-wide/from16 v12, p3

    invoke-direct/range {v9 .. v20}, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->setCurLocationforHubApdr(JJDDDF)V

    .line 564
    :cond_0
    return-void

    .line 547
    .end local v8           #mbLocationHybridValid:Z
    :cond_1
    const/4 v8, 0x0

    goto :goto_0
.end method

.method private sendSleepModeCmdToSensorHub()V
    .locals 13

    .prologue
    .line 258
    sget-object v9, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_APDR:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v9}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->getSubCollectionObj(Ljava/lang/String;)Landroid/hardware/contextaware/manager/ContextProvider;

    move-result-object v2

    check-cast v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;

    .line 261
    .local v2, apdrRunner:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;
    if-nez v2, :cond_0

    .line 299
    :goto_0
    return-void

    .line 266
    :cond_0
    const-wide v9, 0x4042800000000000L

    iput-wide v9, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurLatitude:D

    .line 267
    const-wide/high16 v9, 0x4060

    iput-wide v9, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurLongitude:D

    .line 268
    const-wide/16 v9, 0x0

    iput-wide v9, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurAltitude:D

    .line 269
    const/high16 v9, 0x4120

    iput v9, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurAccuracy:F

    .line 271
    iget-wide v9, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurLatitude:D

    const-wide v11, 0x412e848000000000L

    mul-double/2addr v9, v11

    double-to-int v9, v9

    const/4 v10, 0x4

    invoke-static {v9, v10}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v5

    .line 273
    .local v5, latBuf:[B
    iget-wide v9, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurLongitude:D

    const-wide v11, 0x412e848000000000L

    mul-double/2addr v9, v11

    double-to-int v9, v9

    const/4 v10, 0x4

    invoke-static {v9, v10}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v6

    .line 275
    .local v6, longBuf:[B
    iget-wide v9, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurAltitude:D

    const-wide v11, 0x408f400000000000L

    mul-double/2addr v9, v11

    double-to-int v9, v9

    const/4 v10, 0x3

    invoke-static {v9, v10}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v1

    .line 277
    .local v1, altiBuf:[B
    iget v9, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurAccuracy:F

    float-to-int v9, v9

    const/4 v10, 0x1

    invoke-static {v9, v10}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v0

    .line 279
    .local v0, accuracyBuf:[B
    iget v9, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mUserWantedAccuracy:I

    const/4 v10, 0x1

    invoke-static {v9, v10}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v8

    .line 282
    .local v8, userWantedAccuracyBuf:[B
    array-length v9, v5

    array-length v10, v6

    add-int/2addr v9, v10

    array-length v10, v1

    add-int/2addr v9, v10

    array-length v10, v0

    add-int/2addr v9, v10

    array-length v10, v8

    add-int v3, v9, v10

    .line 285
    .local v3, bufsize:I
    new-array v4, v3, [B

    .line 286
    .local v4, dataPacket:[B
    const/4 v7, 0x0

    .line 287
    .local v7, size:I
    const/4 v9, 0x0

    array-length v10, v5

    invoke-static {v5, v9, v4, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 288
    array-length v9, v5

    add-int/2addr v7, v9

    .line 289
    const/4 v9, 0x0

    array-length v10, v6

    invoke-static {v6, v9, v4, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 290
    array-length v9, v6

    add-int/2addr v7, v9

    .line 291
    const/4 v9, 0x0

    array-length v10, v1

    invoke-static {v1, v9, v4, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 292
    array-length v9, v1

    add-int/2addr v7, v9

    .line 293
    const/4 v9, 0x0

    array-length v10, v0

    invoke-static {v0, v9, v4, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 294
    array-length v9, v0

    add-int/2addr v7, v9

    .line 295
    const/4 v9, 0x0

    array-length v10, v8

    invoke-static {v8, v9, v4, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 298
    invoke-virtual {v2, v4}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->sendSleepModeCmdToSensorHub([B)V

    goto :goto_0
.end method

.method private setCurLocationforHubApdr(JJDDDF)V
    .locals 0
    .parameter "sysTime"
    .parameter "timeStamp"
    .parameter "latitude"
    .parameter "longitude"
    .parameter "altitude"
    .parameter "accuracy"

    .prologue
    .line 622
    iput-wide p1, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurSysTime:J

    .line 623
    iput-wide p3, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurTimeStamp:J

    .line 624
    iput-wide p5, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurLatitude:D

    .line 625
    iput-wide p7, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurLongitude:D

    .line 626
    iput-wide p9, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurAltitude:D

    .line 627
    iput p11, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurAccuracy:F

    .line 628
    return-void
.end method

.method private updateApdrData(Landroid/os/Bundle;)V
    .locals 25
    .parameter "context"

    .prologue
    .line 461
    invoke-direct/range {p0 .. p0}, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->isFilterInitialized()Z

    move-result v5

    if-eqz v5, :cond_0

    if-nez p1, :cond_1

    .line 506
    :cond_0
    :goto_0
    return-void

    .line 465
    :cond_1
    move-object/from16 v0, p0

    iget-wide v5, v0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurSysTime:J

    const-string v11, "DeltaTime"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v11

    double-to-long v11, v11

    add-long/2addr v5, v11

    move-object/from16 v0, p0

    iput-wide v5, v0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurSysTime:J

    .line 466
    move-object/from16 v0, p0

    iget-wide v5, v0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurTimeStamp:J

    const-string v11, "DeltaTime"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v11

    double-to-long v11, v11

    add-long/2addr v5, v11

    move-object/from16 v0, p0

    iput-wide v5, v0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurTimeStamp:J

    .line 468
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mHybridPositioningEngine:Landroid/hardware/contextaware/lib/builtin/LphpLibEngine;

    if-eqz v5, :cond_0

    .line 472
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 474
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurSysTime:J

    move-wide/from16 v20, v0

    .line 475
    .local v20, systemTime:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurTimeStamp:J

    move-wide/from16 v22, v0

    .line 476
    .local v22, timeStamp:J
    move-object/from16 v0, p0

    iget-wide v7, v0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurLatitude:D

    .line 477
    .local v7, latitude:D
    move-object/from16 v0, p0

    iget-wide v9, v0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurLongitude:D

    .line 479
    .local v9, longitude:D
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mHybridPositioningEngine:Landroid/hardware/contextaware/lib/builtin/LphpLibEngine;

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->getDate(J)[I

    move-result-object v6

    const-string v11, "Speed"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v11

    const-string v13, "Heading"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v13

    const-string v15, "DeltaTime"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v15

    const-string v17, "Doe"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v17

    invoke-virtual/range {v5 .. v17}, Landroid/hardware/contextaware/lib/builtin/LphpLibEngine;->native_LPHPEngine_hybridGpsDeliverSensorHubData([IDDDDDI)V

    .line 486
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    move-wide/from16 v3, v22

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->requestGpsData(JJ)V

    .line 488
    const/4 v5, 0x3

    new-array v0, v5, [D

    move-object/from16 v18, v0

    .line 489
    .local v18, daLocationHybrid:[D
    const/4 v5, 0x3

    new-array v0, v5, [F

    move-object/from16 v19, v0

    .line 490
    .local v19, faLocationExtHybrid:[F
    const/4 v5, 0x1

    new-array v0, v5, [I

    move-object/from16 v24, v0

    .line 492
    .local v24, val:[I
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mHybridPositioningEngine:Landroid/hardware/contextaware/lib/builtin/LphpLibEngine;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v24

    invoke-virtual {v5, v0, v1, v2}, Landroid/hardware/contextaware/lib/builtin/LphpLibEngine;->native_LPHPEngine_hybridGpsRequestGpsData([D[F[I)V

    goto/16 :goto_0
.end method

.method private updateRawGpsData(Landroid/os/Bundle;)V
    .locals 10
    .parameter "context"

    .prologue
    .line 308
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mHybridPositioningEngine:Landroid/hardware/contextaware/lib/builtin/LphpLibEngine;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 312
    :cond_1
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 314
    const-string v0, "SystemTime"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 315
    .local v4, systemTime:J
    const-string v0, "TimeStamp"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 316
    .local v8, timeStamp:J
    invoke-direct {p0, p1}, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->getLocationDel(Landroid/os/Bundle;)[D

    move-result-object v1

    .line 317
    .local v1, locationDel:[D
    invoke-direct {p0, p1}, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->getLocationExtDel(Landroid/os/Bundle;)[F

    move-result-object v2

    .line 319
    .local v2, locationExtDel:[F
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mHybridPositioningEngine:Landroid/hardware/contextaware/lib/builtin/LphpLibEngine;

    invoke-direct {p0, v8, v9}, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->getDate(J)[I

    move-result-object v3

    const-string v6, "Valid"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "SVCount"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/contextaware/lib/builtin/LphpLibEngine;->native_LPHPEngine_hybridGpsDeliverGpsData([D[F[IJII)V

    .line 324
    iput-wide v4, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mlSysTimeHybrid:J

    .line 325
    iput-wide v8, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mlTimeStampHybrid:J

    .line 327
    invoke-direct {p0, v4, v5, v8, v9}, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->requestGpsData(JJ)V

    goto :goto_0
.end method

.method private updateRawSatelliteData(Landroid/os/Bundle;)V
    .locals 10
    .parameter "context"

    .prologue
    const/4 v9, 0x1

    .line 349
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mHybridPositioningEngine:Landroid/hardware/contextaware/lib/builtin/LphpLibEngine;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 353
    :cond_1
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 355
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mHybridPositioningEngine:Landroid/hardware/contextaware/lib/builtin/LphpLibEngine;

    const-string v1, "NumSat"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "Prn"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    const-string v3, "Snr"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v3

    const-string v4, "El"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v4

    const-string v5, "Az"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v5

    const-string v6, "Mask"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/contextaware/lib/builtin/LphpLibEngine;->native_LPHPEngine_hybridGpsDeliverSvStatus(I[I[F[F[F[I)V

    .line 364
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->getInstance()Landroid/hardware/contextaware/utilbundle/CaPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->isScreenOn()Z

    move-result v8

    .line 365
    .local v8, isScreenOn:Z
    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->getAPStatus()I

    move-result v0

    const/16 v1, -0x2e

    if-ne v0, v1, :cond_3

    move v7, v9

    .line 366
    .local v7, isApSleep:Z
    :goto_1
    if-nez v8, :cond_0

    invoke-direct {p0}, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->isFilterInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez v7, :cond_2

    iget-boolean v0, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mApdrNoti:Z

    if-eqz v0, :cond_0

    .line 368
    :cond_2
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 369
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/CaAlarmManager;->getInstance()Landroid/hardware/contextaware/utilbundle/CaAlarmManager;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/hardware/contextaware/utilbundle/CaAlarmManager;->vibrateAlarm(Z)V

    .line 370
    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->notifyApStatus()V

    .line 371
    invoke-direct {p0}, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->sendSleepModeCmdToSensorHub()V

    goto :goto_0

    .line 365
    .end local v7           #isApSleep:Z
    :cond_3
    const/4 v7, 0x0

    goto :goto_1
.end method

.method private updateRawWpsData(Landroid/os/Bundle;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 382
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mHybridPositioningEngine:Landroid/hardware/contextaware/lib/builtin/LphpLibEngine;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 397
    :cond_0
    :goto_0
    return-void

    .line 386
    :cond_1
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 388
    invoke-direct {p0, p1}, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->getLocationDel(Landroid/os/Bundle;)[D

    move-result-object v1

    .line 390
    .local v1, locationDel:[D
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mHybridPositioningEngine:Landroid/hardware/contextaware/lib/builtin/LphpLibEngine;

    const-string v2, "TimeStamp"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->getDate(J)[I

    move-result-object v2

    const-string v3, "SystemTime"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/contextaware/lib/builtin/LphpLibEngine;->native_LPHPEngine_hybridGpsDeliverWpsData([D[IJII)V

    .line 395
    const-string v0, "SystemTime"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mlSysTimeHybrid:J

    .line 396
    const-string v0, "TimeStamp"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mlTimeStampHybrid:J

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v0, 0x0

    .line 197
    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->clear()V

    .line 199
    iput-wide v0, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mlSysTimeHybrid:J

    .line 200
    iput-wide v0, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mlTimeStampHybrid:J

    .line 202
    iput-wide v0, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurSysTime:J

    .line 203
    iput-wide v0, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurTimeStamp:J

    .line 204
    iput-wide v2, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurLatitude:D

    .line 205
    iput-wide v2, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurLongitude:D

    .line 206
    iput-wide v2, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurAltitude:D

    .line 207
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurAccuracy:F

    .line 209
    iput v4, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mMovingUpdataCnt:I

    .line 210
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mPedestrianStatus:I

    .line 212
    iput-boolean v4, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mApdrNoti:Z

    .line 214
    const/16 v0, 0x64

    iput v0, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mUserWantedAccuracy:I

    .line 216
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mHybridPositioningEngine:Landroid/hardware/contextaware/lib/builtin/LphpLibEngine;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mHybridPositioningEngine:Landroid/hardware/contextaware/lib/builtin/LphpLibEngine;

    invoke-virtual {v0, v4}, Landroid/hardware/contextaware/lib/builtin/LphpLibEngine;->native_LPHPEngine_hybridGpsInitialize(I)V

    .line 219
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mHybridPositioningEngine:Landroid/hardware/contextaware/lib/builtin/LphpLibEngine;

    iget v1, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mUserWantedAccuracy:I

    invoke-virtual {v0, v1}, Landroid/hardware/contextaware/lib/builtin/LphpLibEngine;->native_LPHPEngine_hybridGpsSetAccuracy(I)V

    .line 222
    :cond_0
    return-void
.end method

.method public disable()V
    .locals 1

    .prologue
    .line 179
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 185
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mHybridPositioningEngine:Landroid/hardware/contextaware/lib/builtin/LphpLibEngine;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mHybridPositioningEngine:Landroid/hardware/contextaware/lib/builtin/LphpLibEngine;

    invoke-virtual {v0}, Landroid/hardware/contextaware/lib/builtin/LphpLibEngine;->native_LPHPEngine_hybridGpsFinalize()V

    .line 188
    :cond_0
    return-void
.end method

.method public enable()V
    .locals 0

    .prologue
    .line 165
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 170
    return-void
.end method

.method public getContextType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 637
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->AGGREGATOR_LOCATION:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getContextValueNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 232
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "SystemTime"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "TimeStamp"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Latitude"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Longitude"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Altitude"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Heading"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Speed"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Accuracy"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Valid"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "PedestrianStatus"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected getObserver()Landroid/hardware/contextaware/manager/IApPowerObserver;
    .locals 0

    .prologue
    .line 647
    return-object p0
.end method

.method protected initializeAggregator()V
    .locals 1

    .prologue
    .line 127
    new-instance v0, Landroid/hardware/contextaware/lib/builtin/LphpLibEngine;

    invoke-direct {v0}, Landroid/hardware/contextaware/lib/builtin/LphpLibEngine;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mHybridPositioningEngine:Landroid/hardware/contextaware/lib/builtin/LphpLibEngine;

    .line 128
    return-void
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 147
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 156
    return-void
.end method

.method protected setPropertyValue(ILjava/lang/Object;)V
    .locals 4
    .parameter "property"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(ITE;)V"
        }
    .end annotation

    .prologue
    .line 782
    .local p2, value:Ljava/lang/Object;,"TE;"
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 783
    check-cast p2, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2           #value:Ljava/lang/Object;,"TE;"
    invoke-virtual {p2}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mUserWantedAccuracy:I

    .line 785
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setProperty (User Wanted Accuracy) = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mUserWantedAccuracy:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 798
    :cond_0
    :goto_0
    return-void

    .line 787
    .restart local p2       #value:Ljava/lang/Object;,"TE;"
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 788
    invoke-static {}, Landroid/hardware/contextaware/manager/CaUserInfo;->getInstance()Landroid/hardware/contextaware/manager/CaUserInfo;

    move-result-object v1

    check-cast p2, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2           #value:Ljava/lang/Object;,"TE;"
    invoke-virtual {p2}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/hardware/contextaware/manager/CaUserInfo;->setUserHeight(D)V

    .line 790
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setProperty (User Height) = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/hardware/contextaware/manager/CaUserInfo;->getInstance()Landroid/hardware/contextaware/manager/CaUserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/contextaware/manager/CaUserInfo;->getUserHeight()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 792
    .restart local p2       #value:Ljava/lang/Object;,"TE;"
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 793
    invoke-static {}, Landroid/hardware/contextaware/manager/CaUserInfo;->getInstance()Landroid/hardware/contextaware/manager/CaUserInfo;

    move-result-object v1

    check-cast p2, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2           #value:Ljava/lang/Object;,"TE;"
    invoke-virtual {p2}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/hardware/contextaware/manager/CaUserInfo;->setUserWeight(D)V

    .line 795
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setProperty (User Weight) = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/hardware/contextaware/manager/CaUserInfo;->getInstance()Landroid/hardware/contextaware/manager/CaUserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/contextaware/manager/CaUserInfo;->getUserWeight()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected terminateAggregator()V
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mHybridPositioningEngine:Landroid/hardware/contextaware/lib/builtin/LphpLibEngine;

    .line 138
    return-void
.end method

.method protected updateApSleep()V
    .locals 1

    .prologue
    .line 806
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 807
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mApdrNoti:Z

    .line 808
    return-void
.end method

.method protected updateApWakeup()V
    .locals 1

    .prologue
    .line 817
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 818
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mApdrNoti:Z

    .line 819
    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->updateApWakeup()V

    .line 820
    return-void
.end method

.method public updateContext(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .parameter "type"
    .parameter "context"

    .prologue
    .line 682
    if-nez p2, :cond_1

    .line 700
    :cond_0
    :goto_0
    return-void

    .line 686
    :cond_1
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->ANDROID_RUNNER_RAW_GPS:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 687
    invoke-direct {p0, p2}, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->updateRawGpsData(Landroid/os/Bundle;)V

    goto :goto_0

    .line 688
    :cond_2
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->ANDROID_RUNNER_RAW_SATELLITE:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 690
    invoke-direct {p0, p2}, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->updateRawSatelliteData(Landroid/os/Bundle;)V

    goto :goto_0

    .line 691
    :cond_3
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->ANDROID_RUNNER_RAW_WPS:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 692
    invoke-direct {p0, p2}, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->updateRawWpsData(Landroid/os/Bundle;)V

    goto :goto_0

    .line 693
    :cond_4
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_APDR:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 694
    invoke-virtual {p2}, Landroid/os/Bundle;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_5

    .line 695
    invoke-direct {p0, p2}, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->updateApdrData(Landroid/os/Bundle;)V

    goto :goto_0

    .line 697
    :cond_5
    invoke-direct {p0, p2}, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->receiveApdrNoti(Landroid/os/Bundle;)V

    goto :goto_0
.end method
