.class public Landroid/hardware/scontext/SContextManager;
.super Ljava/lang/Object;
.source "SContextManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    }
.end annotation


# static fields
.field public static final APPROACH:I = 0x1

.field public static final AUTO_ROTATION:I = 0x6

.field public static final MOTION:I = 0x4

.field public static final MOVEMENT:I = 0x5

.field private static final NONE_SERVICE:I = 0x0

.field public static final PEDOMETER:I = 0x2

.field private static final SCONTEXT_SERVICE_NUM:I = 0x9

.field public static final STEP_COUNT_ALERT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SContextManager"


# instance fields
.field private final mListenerDelegates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field mMainLooper:Landroid/os/Looper;

.field private mSContextService:Landroid/hardware/scontext/ISContextService;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1
    .parameter "mainLooper"

    .prologue
    .line 68
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/ArrayList;

    .line 69
    const-string v0, "scontext"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/scontext/ISContextService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/scontext/ISContextService;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    .line 71
    iput-object p1, p0, Landroid/hardware/scontext/SContextManager;->mMainLooper:Landroid/os/Looper;

    .line 72
    return-void
.end method

.method private registerListener(Landroid/hardware/scontext/SContextListener;Landroid/hardware/scontext/SContext;)Z
    .locals 10
    .parameter "listener"
    .parameter "scontext"

    .prologue
    .line 212
    invoke-virtual {p2}, Landroid/hardware/scontext/SContext;->getType()I

    move-result v5

    .line 213
    .local v5, service:I
    if-eqz p1, :cond_0

    if-lez v5, :cond_0

    const/16 v7, 0x9

    if-le v5, v7, :cond_1

    .line 214
    :cond_0
    const/4 v7, 0x0

    .line 241
    :goto_0
    return v7

    .line 217
    :cond_1
    const/4 v3, 0x0

    .line 219
    .local v3, scontextListener:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    iget-object v8, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/ArrayList;

    monitor-enter v8

    .line 220
    :try_start_0
    iget-object v7, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 222
    .local v6, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v6, :cond_4

    .line 223
    iget-object v7, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    invoke-virtual {v7}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->getListener()Landroid/hardware/scontext/SContextListener;

    move-result-object v7

    if-ne v7, p1, :cond_2

    .line 224
    iget-object v7, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-object v3, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    .line 229
    .end local v3           #scontextListener:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    .local v4, scontextListener:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    :goto_2
    if-nez v4, :cond_3

    .line 230
    :try_start_1
    new-instance v3, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    const/4 v7, 0x0

    invoke-direct {v3, p0, p1, v5, v7}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;-><init>(Landroid/hardware/scontext/SContextManager;Landroid/hardware/scontext/SContextListener;ILandroid/os/Handler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 231
    .end local v4           #scontextListener:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    .restart local v3       #scontextListener:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    :try_start_2
    iget-object v7, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 235
    :goto_3
    :try_start_3
    iget-object v7, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    invoke-interface {v7, v3, p2}, Landroid/hardware/scontext/ISContextService;->registerCallback(Landroid/os/IBinder;Landroid/hardware/scontext/SContext;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 239
    :goto_4
    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 240
    const-string v7, "SContextManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  .registerListener : service="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const/4 v7, 0x1

    goto :goto_0

    .line 222
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 236
    :catch_0
    move-exception v1

    .line 237
    .local v1, e:Landroid/os/RemoteException;
    :try_start_5
    const-string v7, "SContextManager"

    const-string v9, "RemoteException in registerListener: "

    invoke-static {v7, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 239
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v2           #i:I
    .end local v6           #size:I
    :catchall_0
    move-exception v7

    :goto_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v7

    .end local v3           #scontextListener:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    .restart local v2       #i:I
    .restart local v4       #scontextListener:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    .restart local v6       #size:I
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4           #scontextListener:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    .restart local v3       #scontextListener:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    goto :goto_5

    .end local v3           #scontextListener:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    .restart local v4       #scontextListener:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    :cond_3
    move-object v3, v4

    .end local v4           #scontextListener:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    .restart local v3       #scontextListener:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    goto :goto_3

    :cond_4
    move-object v4, v3

    .end local v3           #scontextListener:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    .restart local v4       #scontextListener:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    goto :goto_2
.end method


# virtual methods
.method public initializeSContextService(I)V
    .locals 3
    .parameter "service"

    .prologue
    .line 304
    if-lez p1, :cond_0

    const/16 v1, 0x9

    if-le p1, v1, :cond_1

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 308
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    invoke-interface {v1, p1}, Landroid/hardware/scontext/ISContextService;->initializeSContextService(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 309
    :catch_0
    move-exception v0

    .line 310
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SContextManager"

    const-string v2, "RemoteException in initializeSContextService: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;I)Z
    .locals 3
    .parameter "listener"
    .parameter "service"

    .prologue
    .line 83
    new-instance v1, Landroid/hardware/scontext/SContext;

    invoke-direct {v1}, Landroid/hardware/scontext/SContext;-><init>()V

    .line 84
    .local v1, scontext:Landroid/hardware/scontext/SContext;
    invoke-virtual {v1, p2}, Landroid/hardware/scontext/SContext;->setType(I)V

    .line 85
    invoke-direct {p0, p1, v1}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;Landroid/hardware/scontext/SContext;)Z

    move-result v0

    .line 87
    .local v0, res:Z
    if-eqz v0, :cond_0

    .line 88
    const/4 v2, 0x1

    .line 90
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;IDD)Z
    .locals 5
    .parameter "listener"
    .parameter "service"
    .parameter "epochLength"
    .parameter "sleepThreshold"

    .prologue
    .line 188
    new-instance v1, Landroid/hardware/scontext/SContext;

    invoke-direct {v1}, Landroid/hardware/scontext/SContext;-><init>()V

    .line 189
    .local v1, scontext:Landroid/hardware/scontext/SContext;
    invoke-virtual {v1, p2}, Landroid/hardware/scontext/SContext;->setType(I)V

    .line 190
    invoke-virtual {v1, p3, p4, p5, p6}, Landroid/hardware/scontext/SContext;->setParametersForSleepMonitor(DD)V

    .line 192
    const-string v2, "SContextManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerListener(listener, int, double, double)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5, p6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-direct {p0, p1, v1}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;Landroid/hardware/scontext/SContext;)Z

    move-result v0

    .line 196
    .local v0, res:Z
    if-eqz v0, :cond_0

    .line 197
    const/4 v2, 0x1

    .line 199
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;II)Z
    .locals 3
    .parameter "listener"
    .parameter "service"
    .parameter "arg"

    .prologue
    .line 106
    new-instance v1, Landroid/hardware/scontext/SContext;

    invoke-direct {v1}, Landroid/hardware/scontext/SContext;-><init>()V

    .line 107
    .local v1, scontext:Landroid/hardware/scontext/SContext;
    invoke-virtual {v1, p2}, Landroid/hardware/scontext/SContext;->setType(I)V

    .line 108
    const/4 v2, 0x3

    if-ne p2, v2, :cond_1

    .line 109
    invoke-virtual {v1, p3}, Landroid/hardware/scontext/SContext;->setStepCount(I)V

    .line 115
    :cond_0
    :goto_0
    invoke-direct {p0, p1, v1}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;Landroid/hardware/scontext/SContext;)Z

    move-result v0

    .line 117
    .local v0, res:Z
    if-eqz v0, :cond_3

    .line 118
    const/4 v2, 0x1

    .line 120
    :goto_1
    return v2

    .line 110
    .end local v0           #res:Z
    :cond_1
    const/4 v2, 0x6

    if-ne p2, v2, :cond_2

    .line 111
    invoke-virtual {v1, p3}, Landroid/hardware/scontext/SContext;->setDeviceType(I)V

    goto :goto_0

    .line 112
    :cond_2
    const/4 v2, 0x7

    if-ne p2, v2, :cond_0

    .line 113
    invoke-virtual {v1, p3}, Landroid/hardware/scontext/SContext;->setAirMotionMode(I)V

    goto :goto_0

    .line 120
    .restart local v0       #res:Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;IID)Z
    .locals 4
    .parameter "listener"
    .parameter "service"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 135
    new-instance v1, Landroid/hardware/scontext/SContext;

    invoke-direct {v1}, Landroid/hardware/scontext/SContext;-><init>()V

    .line 136
    .local v1, scontext:Landroid/hardware/scontext/SContext;
    invoke-virtual {v1, p2}, Landroid/hardware/scontext/SContext;->setType(I)V

    .line 138
    const/16 v2, 0x9

    if-ne p2, v2, :cond_0

    .line 139
    invoke-virtual {v1, p3, p4, p5}, Landroid/hardware/scontext/SContext;->setEnvironmentInfo(ID)V

    .line 142
    :cond_0
    const-string v2, "SContextManager"

    const-string v3, "registerListener(listener, int, int, double)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-direct {p0, p1, v1}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;Landroid/hardware/scontext/SContext;)Z

    move-result v0

    .line 146
    .local v0, res:Z
    if-eqz v0, :cond_1

    .line 147
    const/4 v2, 0x1

    .line 149
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;IIDD)Z
    .locals 7
    .parameter "listener"
    .parameter "service"
    .parameter "gender"
    .parameter "height"
    .parameter "weight"

    .prologue
    .line 165
    new-instance v0, Landroid/hardware/scontext/SContext;

    invoke-direct {v0}, Landroid/hardware/scontext/SContext;-><init>()V

    .line 166
    .local v0, scontext:Landroid/hardware/scontext/SContext;
    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContext;->setType(I)V

    move v1, p3

    move-wide v2, p4

    move-wide v4, p6

    .line 167
    invoke-virtual/range {v0 .. v5}, Landroid/hardware/scontext/SContext;->setUserInfo(IDD)V

    .line 168
    invoke-direct {p0, p1, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;Landroid/hardware/scontext/SContext;)Z

    move-result v6

    .line 170
    .local v6, res:Z
    if-eqz v6, :cond_0

    .line 171
    const/4 v1, 0x1

    .line 173
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public unregisterListener(Landroid/hardware/scontext/SContextListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 251
    if-nez p1, :cond_1

    .line 258
    :cond_0
    return-void

    .line 255
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 256
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, p1, v1}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;I)V

    .line 255
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public unregisterListener(Landroid/hardware/scontext/SContextListener;I)V
    .locals 8
    .parameter "listener"
    .parameter "service"

    .prologue
    .line 267
    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    const/16 v5, 0x9

    if-le p2, v5, :cond_1

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    const/4 v3, 0x0

    .line 273
    .local v3, scontextListener:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    iget-object v6, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/ArrayList;

    monitor-enter v6

    .line 274
    :try_start_0
    iget-object v5, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 276
    .local v4, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v4, :cond_2

    .line 277
    iget-object v5, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    invoke-virtual {v5}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->getListener()Landroid/hardware/scontext/SContextListener;

    move-result-object v5

    if-ne v5, p1, :cond_3

    .line 278
    iget-object v5, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-object v3, v0

    .line 283
    :cond_2
    if-nez v3, :cond_4

    .line 284
    monitor-exit v6

    goto :goto_0

    .line 294
    .end local v2           #i:I
    .end local v4           #size:I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 276
    .restart local v2       #i:I
    .restart local v4       #size:I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 288
    :cond_4
    :try_start_1
    iget-object v5, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    invoke-interface {v5, v3, p2}, Landroid/hardware/scontext/ISContextService;->unregisterCallback(Landroid/os/IBinder;I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 289
    iget-object v5, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 294
    :cond_5
    :goto_2
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 295
    const-string v5, "SContextManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  .unregisterListener : service="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 291
    :catch_0
    move-exception v1

    .line 292
    .local v1, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v5, "SContextManager"

    const-string v7, "RemoteException in unregisterListener: "

    invoke-static {v5, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method
