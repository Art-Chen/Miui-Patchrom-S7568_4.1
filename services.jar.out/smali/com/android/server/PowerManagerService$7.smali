.class Lcom/android/server/PowerManagerService$7;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 2336
    iput-object p1, p0, Lcom/android/server/PowerManagerService$7;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v2, 0x0

    const/4 v12, 0x1

    const/4 v5, 0x0

    .line 2343
    :goto_0
    iget-object v0, p0, Lcom/android/server/PowerManagerService$7;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$1000(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v1

    monitor-enter v1

    .line 2344
    :try_start_0
    iget-object v0, p0, Lcom/android/server/PowerManagerService$7;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$6200(Lcom/android/server/PowerManagerService;)[I

    move-result-object v0

    const/4 v3, 0x0

    aget v10, v0, v3

    .line 2345
    .local v10, value:I
    iget-object v0, p0, Lcom/android/server/PowerManagerService$7;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mBroadcastWhy:[I
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$6300(Lcom/android/server/PowerManagerService;)[I

    move-result-object v0

    const/4 v3, 0x0

    aget v11, v0, v3

    .line 2346
    .local v11, why:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    if-ge v8, v13, :cond_0

    .line 2347
    iget-object v0, p0, Lcom/android/server/PowerManagerService$7;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$6200(Lcom/android/server/PowerManagerService;)[I

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/PowerManagerService$7;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$6200(Lcom/android/server/PowerManagerService;)[I

    move-result-object v3

    add-int/lit8 v4, v8, 0x1

    aget v3, v3, v4

    aput v3, v0, v8

    .line 2348
    iget-object v0, p0, Lcom/android/server/PowerManagerService$7;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mBroadcastWhy:[I
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$6300(Lcom/android/server/PowerManagerService;)[I

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/PowerManagerService$7;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mBroadcastWhy:[I
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$6300(Lcom/android/server/PowerManagerService;)[I

    move-result-object v3

    add-int/lit8 v4, v8, 0x1

    aget v3, v3, v4

    aput v3, v0, v8

    .line 2346
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 2350
    :cond_0
    iget-object v0, p0, Lcom/android/server/PowerManagerService$7;->this$0:Lcom/android/server/PowerManagerService;

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService;->getPolicyLocked()Landroid/view/WindowManagerPolicy;

    move-result-object v9

    .line 2351
    .local v9, policy:Landroid/view/WindowManagerPolicy;
    if-ne v10, v12, :cond_1

    iget-object v0, p0, Lcom/android/server/PowerManagerService$7;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mPreparingForScreenOn:Z
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$5900(Lcom/android/server/PowerManagerService;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2352
    iget-object v0, p0, Lcom/android/server/PowerManagerService$7;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v3, 0x1

    #setter for: Lcom/android/server/PowerManagerService;->mPreparingForScreenOn:Z
    invoke-static {v0, v3}, Lcom/android/server/PowerManagerService;->access$5902(Lcom/android/server/PowerManagerService;Z)Z

    .line 2353
    iget-object v0, p0, Lcom/android/server/PowerManagerService$7;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$6100(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->acquire()V

    .line 2354
    const/16 v0, 0xaa5

    iget-object v3, p0, Lcom/android/server/PowerManagerService$7;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$6100(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    move-result-object v3

    iget v3, v3, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->mCount:I

    invoke-static {v0, v3}, Landroid/util/EventLog;->writeEvent(II)I

    .line 2357
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2358
    if-ne v10, v12, :cond_3

    .line 2359
    iget-object v0, p0, Lcom/android/server/PowerManagerService$7;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/server/PowerManagerService;->mScreenOnStart:J

    .line 2360
    const-string v0, "PowerManagerService"

    const-string v1, "mNotificationTask : on"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2362
    iget-object v0, p0, Lcom/android/server/PowerManagerService$7;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenOnListener:Landroid/view/WindowManagerPolicy$ScreenOnListener;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$6400(Lcom/android/server/PowerManagerService;)Landroid/view/WindowManagerPolicy$ScreenOnListener;

    move-result-object v0

    invoke-interface {v9, v0}, Landroid/view/WindowManagerPolicy;->screenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    .line 2364
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->wakingUp()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2372
    :goto_2
    iget-object v0, p0, Lcom/android/server/PowerManagerService$7;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$800(Lcom/android/server/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2373
    iget-object v0, p0, Lcom/android/server/PowerManagerService$7;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$800(Lcom/android/server/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/PowerManagerService$7;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenOnIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$6500(Lcom/android/server/PowerManagerService;)Landroid/content/Intent;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/PowerManagerService$7;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenOnBroadcastDone:Landroid/content/BroadcastReceiver;
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$6600(Lcom/android/server/PowerManagerService;)Landroid/content/BroadcastReceiver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/PowerManagerService$7;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$3600(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v4

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 2357
    .end local v8           #i:I
    .end local v9           #policy:Landroid/view/WindowManagerPolicy;
    .end local v10           #value:I
    .end local v11           #why:I
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 2376
    .restart local v8       #i:I
    .restart local v9       #policy:Landroid/view/WindowManagerPolicy;
    .restart local v10       #value:I
    .restart local v11       #why:I
    :cond_2
    iget-object v0, p0, Lcom/android/server/PowerManagerService$7;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$1000(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v1

    monitor-enter v1

    .line 2377
    const/16 v0, 0xaa7

    const/4 v3, 0x2

    :try_start_3
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x1

    iget-object v6, p0, Lcom/android/server/PowerManagerService$7;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;
    invoke-static {v6}, Lcom/android/server/PowerManagerService;->access$6100(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    move-result-object v6

    iget v6, v6, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->mCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v0, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2379
    iget-object v0, p0, Lcom/android/server/PowerManagerService$7;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$6100(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->release()V

    .line 2380
    monitor-exit v1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 2383
    :cond_3
    if-nez v10, :cond_5

    .line 2384
    iget-object v0, p0, Lcom/android/server/PowerManagerService$7;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/server/PowerManagerService;->mScreenOffStart:J

    .line 2385
    const-string v0, "PowerManagerService"

    const-string v1, "mNotificationTask : off"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2387
    invoke-interface {v9, v11}, Landroid/view/WindowManagerPolicy;->screenTurnedOff(I)V

    .line 2389
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->goingToSleep()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 2394
    :goto_3
    iget-object v0, p0, Lcom/android/server/PowerManagerService$7;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$800(Lcom/android/server/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2395
    iget-object v0, p0, Lcom/android/server/PowerManagerService$7;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$800(Lcom/android/server/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/PowerManagerService$7;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenOffIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$6700(Lcom/android/server/PowerManagerService;)Landroid/content/Intent;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/PowerManagerService$7;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenOffBroadcastDone:Landroid/content/BroadcastReceiver;
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$6800(Lcom/android/server/PowerManagerService;)Landroid/content/BroadcastReceiver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/PowerManagerService$7;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$3600(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v4

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 2398
    :cond_4
    iget-object v0, p0, Lcom/android/server/PowerManagerService$7;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$1000(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v1

    monitor-enter v1

    .line 2399
    const/16 v0, 0xaa7

    const/4 v3, 0x2

    :try_start_5
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x1

    iget-object v6, p0, Lcom/android/server/PowerManagerService$7;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;
    invoke-static {v6}, Lcom/android/server/PowerManagerService;->access$6100(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    move-result-object v6

    iget v6, v6, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->mCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v0, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2401
    iget-object v0, p0, Lcom/android/server/PowerManagerService$7;->this$0:Lcom/android/server/PowerManagerService;

    iget-object v3, p0, Lcom/android/server/PowerManagerService$7;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mPowerState:I
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$1500(Lcom/android/server/PowerManagerService;)I

    move-result v3

    const/4 v4, 0x1

    #calls: Lcom/android/server/PowerManagerService;->updateLightsLocked(II)V
    invoke-static {v0, v3, v4}, Lcom/android/server/PowerManagerService;->access$6000(Lcom/android/server/PowerManagerService;II)V

    .line 2402
    iget-object v0, p0, Lcom/android/server/PowerManagerService$7;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$6100(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->release()V

    .line 2403
    monitor-exit v1

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    .line 2412
    :cond_5
    return-void

    .line 2390
    :catch_0
    move-exception v0

    goto :goto_3

    .line 2365
    :catch_1
    move-exception v0

    goto/16 :goto_2
.end method
