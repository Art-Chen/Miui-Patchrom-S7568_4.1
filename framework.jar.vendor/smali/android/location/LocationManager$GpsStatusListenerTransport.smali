.class Landroid/location/LocationManager$GpsStatusListenerTransport;
.super Landroid/location/IGpsStatusListener$Stub;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GpsStatusListenerTransport"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/LocationManager$GpsStatusListenerTransport$Nmea;
    }
.end annotation


# static fields
.field private static final NMEA_RECEIVED:I = 0x3e8


# instance fields
.field private final mGpsHandler:Landroid/os/Handler;

.field private final mListener:Landroid/location/GpsStatus$Listener;

.field private mNmeaBuffer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/location/LocationManager$GpsStatusListenerTransport$Nmea;",
            ">;"
        }
    .end annotation
.end field

.field private final mNmeaListener:Landroid/location/GpsStatus$NmeaListener;

.field final synthetic this$0:Landroid/location/LocationManager;


# direct methods
.method constructor <init>(Landroid/location/LocationManager;Landroid/location/GpsStatus$Listener;)V
    .locals 1
    .parameter
    .parameter "listener"

    .prologue
    .line 1365
    iput-object p1, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->this$0:Landroid/location/LocationManager;

    invoke-direct {p0}, Landroid/location/IGpsStatusListener$Stub;-><init>()V

    .line 1429
    new-instance v0, Landroid/location/LocationManager$GpsStatusListenerTransport$1;

    invoke-direct {v0, p0}, Landroid/location/LocationManager$GpsStatusListenerTransport$1;-><init>(Landroid/location/LocationManager$GpsStatusListenerTransport;)V

    iput-object v0, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mGpsHandler:Landroid/os/Handler;

    .line 1366
    iput-object p2, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mListener:Landroid/location/GpsStatus$Listener;

    .line 1367
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mNmeaListener:Landroid/location/GpsStatus$NmeaListener;

    .line 1368
    return-void
.end method

.method constructor <init>(Landroid/location/LocationManager;Landroid/location/GpsStatus$NmeaListener;)V
    .locals 1
    .parameter
    .parameter "listener"

    .prologue
    .line 1370
    iput-object p1, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->this$0:Landroid/location/LocationManager;

    invoke-direct {p0}, Landroid/location/IGpsStatusListener$Stub;-><init>()V

    .line 1429
    new-instance v0, Landroid/location/LocationManager$GpsStatusListenerTransport$1;

    invoke-direct {v0, p0}, Landroid/location/LocationManager$GpsStatusListenerTransport$1;-><init>(Landroid/location/LocationManager$GpsStatusListenerTransport;)V

    iput-object v0, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mGpsHandler:Landroid/os/Handler;

    .line 1371
    iput-object p2, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mNmeaListener:Landroid/location/GpsStatus$NmeaListener;

    .line 1372
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mListener:Landroid/location/GpsStatus$Listener;

    .line 1373
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mNmeaBuffer:Ljava/util/ArrayList;

    .line 1374
    return-void
.end method

.method static synthetic access$300(Landroid/location/LocationManager$GpsStatusListenerTransport;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1346
    iget-object v0, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mNmeaBuffer:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Landroid/location/LocationManager$GpsStatusListenerTransport;)Landroid/location/GpsStatus$NmeaListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1346
    iget-object v0, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mNmeaListener:Landroid/location/GpsStatus$NmeaListener;

    return-object v0
.end method

.method static synthetic access$500(Landroid/location/LocationManager$GpsStatusListenerTransport;)Landroid/location/GpsStatus$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1346
    iget-object v0, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mListener:Landroid/location/GpsStatus$Listener;

    return-object v0
.end method


# virtual methods
.method public onFirstFix(I)V
    .locals 2
    .parameter "ttff"

    .prologue
    .line 1393
    iget-object v1, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mListener:Landroid/location/GpsStatus$Listener;

    if-eqz v1, :cond_0

    .line 1394
    iget-object v1, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->this$0:Landroid/location/LocationManager;

    #getter for: Landroid/location/LocationManager;->mGpsStatus:Landroid/location/GpsStatus;
    invoke-static {v1}, Landroid/location/LocationManager;->access$200(Landroid/location/LocationManager;)Landroid/location/GpsStatus;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/location/GpsStatus;->setTimeToFirstFix(I)V

    .line 1395
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1396
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1397
    iget-object v1, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mGpsHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1399
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onGpsStarted()V
    .locals 2

    .prologue
    .line 1377
    iget-object v1, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mListener:Landroid/location/GpsStatus$Listener;

    if-eqz v1, :cond_0

    .line 1378
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1379
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1380
    iget-object v1, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mGpsHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1382
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onGpsStopped()V
    .locals 2

    .prologue
    .line 1385
    iget-object v1, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mListener:Landroid/location/GpsStatus$Listener;

    if-eqz v1, :cond_0

    .line 1386
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1387
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1388
    iget-object v1, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mGpsHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1390
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onNmeaReceived(JLjava/lang/String;)V
    .locals 5
    .parameter "timestamp"
    .parameter "nmea"

    .prologue
    const/16 v4, 0x3e8

    .line 1417
    iget-object v1, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mNmeaListener:Landroid/location/GpsStatus$NmeaListener;

    if-eqz v1, :cond_0

    .line 1418
    iget-object v2, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mNmeaBuffer:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1419
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mNmeaBuffer:Ljava/util/ArrayList;

    new-instance v3, Landroid/location/LocationManager$GpsStatusListenerTransport$Nmea;

    invoke-direct {v3, p0, p1, p2, p3}, Landroid/location/LocationManager$GpsStatusListenerTransport$Nmea;-><init>(Landroid/location/LocationManager$GpsStatusListenerTransport;JLjava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1420
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1421
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1422
    .local v0, msg:Landroid/os/Message;
    iput v4, v0, Landroid/os/Message;->what:I

    .line 1424
    iget-object v1, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mGpsHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1425
    iget-object v1, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mGpsHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1427
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void

    .line 1420
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onSvStatusChanged(I[I[F[F[FIII[I)V
    .locals 11
    .parameter "svCount"
    .parameter "prns"
    .parameter "snrs"
    .parameter "elevations"
    .parameter "azimuths"
    .parameter "ephemerisMask"
    .parameter "almanacMask"
    .parameter "usedInFixMask"
    .parameter "used"

    .prologue
    .line 1404
    iget-object v0, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mListener:Landroid/location/GpsStatus$Listener;

    if-eqz v0, :cond_0

    .line 1405
    iget-object v0, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->this$0:Landroid/location/LocationManager;

    #getter for: Landroid/location/LocationManager;->mGpsStatus:Landroid/location/GpsStatus;
    invoke-static {v0}, Landroid/location/LocationManager;->access$200(Landroid/location/LocationManager;)Landroid/location/GpsStatus;

    move-result-object v0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Landroid/location/GpsStatus;->setStatus(I[I[F[F[FIII[I)V

    .line 1408
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v10

    .line 1409
    .local v10, msg:Landroid/os/Message;
    const/4 v0, 0x4

    iput v0, v10, Landroid/os/Message;->what:I

    .line 1411
    iget-object v0, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mGpsHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1412
    iget-object v0, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mGpsHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1414
    .end local v10           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method
