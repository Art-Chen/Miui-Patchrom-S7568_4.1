.class public Landroid/hardware/contextaware/manager/ListenerListManager;
.super Ljava/lang/Object;
.source "ListenerListManager.java"


# static fields
.field private static volatile instance:Landroid/hardware/contextaware/manager/ListenerListManager;


# instance fields
.field private mCreator:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/hardware/contextaware/creator/ContextProviderCreator;",
            ">;"
        }
    .end annotation
.end field

.field private final mListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/hardware/contextaware/manager/ContextAwareService$Listener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/manager/ListenerListManager;->mListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public static getInstance()Landroid/hardware/contextaware/manager/ListenerListManager;
    .locals 2

    .prologue
    .line 45
    sget-object v0, Landroid/hardware/contextaware/manager/ListenerListManager;->instance:Landroid/hardware/contextaware/manager/ListenerListManager;

    if-nez v0, :cond_1

    .line 46
    const-class v1, Landroid/hardware/contextaware/manager/ListenerListManager;

    monitor-enter v1

    .line 47
    :try_start_0
    sget-object v0, Landroid/hardware/contextaware/manager/ListenerListManager;->instance:Landroid/hardware/contextaware/manager/ListenerListManager;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Landroid/hardware/contextaware/manager/ListenerListManager;

    invoke-direct {v0}, Landroid/hardware/contextaware/manager/ListenerListManager;-><init>()V

    sput-object v0, Landroid/hardware/contextaware/manager/ListenerListManager;->instance:Landroid/hardware/contextaware/manager/ListenerListManager;

    .line 50
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :cond_1
    sget-object v0, Landroid/hardware/contextaware/manager/ListenerListManager;->instance:Landroid/hardware/contextaware/manager/ListenerListManager;

    return-object v0

    .line 50
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getUsedSubCollectionCount(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .parameter "aggregator"
    .parameter "service"

    .prologue
    .line 148
    const/4 v0, 0x0

    .line 150
    .local v0, count:I
    iget-object v6, p0, Landroid/hardware/contextaware/manager/ListenerListManager;->mCreator:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 151
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contextaware/creator/ContextProviderCreator;

    .line 153
    .local v1, creator:Landroid/hardware/contextaware/creator/ContextProviderCreator;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/hardware/contextaware/creator/ContextProviderCreator;->existContextProvider(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    instance-of v6, v1, Landroid/hardware/contextaware/creator/builtin/AggregatorConcreteCreator;

    if-eqz v6, :cond_0

    .line 155
    check-cast v1, Landroid/hardware/contextaware/creator/builtin/AggregatorConcreteCreator;

    .end local v1           #creator:Landroid/hardware/contextaware/creator/ContextProviderCreator;
    invoke-virtual {v1, p1}, Landroid/hardware/contextaware/creator/builtin/AggregatorConcreteCreator;->getSubCollectionList(Ljava/lang/String;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    .line 157
    .local v4, list:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<Ljava/lang/String;>;"
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 161
    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, j:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 162
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 163
    .local v5, subCollector:Ljava/lang/String;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 166
    invoke-direct {p0, v5}, Landroid/hardware/contextaware/manager/ListenerListManager;->isAggregator(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 167
    invoke-direct {p0, v5, p2}, Landroid/hardware/contextaware/manager/ListenerListManager;->getUsedSubCollectionCount(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    add-int/2addr v0, v6

    .line 170
    :cond_2
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 171
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 177
    .end local v3           #j:Ljava/util/Iterator;
    .end local v4           #list:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<Ljava/lang/String;>;"
    .end local v5           #subCollector:Ljava/lang/String;
    :cond_3
    return v0
.end method

.method private isAggregator(Ljava/lang/String;)Z
    .locals 3
    .parameter "collector"

    .prologue
    .line 182
    iget-object v2, p0, Landroid/hardware/contextaware/manager/ListenerListManager;->mCreator:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 183
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/contextaware/creator/ContextProviderCreator;

    .line 185
    .local v0, creator:Landroid/hardware/contextaware/creator/ContextProviderCreator;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/hardware/contextaware/creator/ContextProviderCreator;->existContextProvider(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    instance-of v2, v0, Landroid/hardware/contextaware/creator/builtin/AggregatorConcreteCreator;

    if-eqz v2, :cond_0

    .line 187
    const/4 v2, 0x1

    .line 191
    .end local v0           #creator:Landroid/hardware/contextaware/creator/ContextProviderCreator;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected addListener(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 71
    iget-object v0, p0, Landroid/hardware/contextaware/manager/ListenerListManager;->mListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    return-void
.end method

.method protected getListener(Landroid/os/IBinder;)Landroid/hardware/contextaware/manager/ContextAwareService$Listener;
    .locals 4
    .parameter "binder"

    .prologue
    .line 93
    const/4 v1, 0x0

    .line 94
    .local v1, listener:Landroid/hardware/contextaware/manager/ContextAwareService$Listener;
    iget-object v3, p0, Landroid/hardware/contextaware/manager/ListenerListManager;->mListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 95
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;

    .line 96
    .local v2, next:Landroid/hardware/contextaware/manager/ContextAwareService$Listener;
    invoke-virtual {v2}, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->getToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 97
    move-object v1, v2

    .line 102
    .end local v2           #next:Landroid/hardware/contextaware/manager/ContextAwareService$Listener;
    :cond_1
    return-object v1
.end method

.method protected getListenerList()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/hardware/contextaware/manager/ContextAwareService$Listener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Landroid/hardware/contextaware/manager/ListenerListManager;->mListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public getUsedServiceCount(Ljava/lang/String;)I
    .locals 5
    .parameter "service"

    .prologue
    .line 112
    const/4 v0, 0x0

    .line 114
    .local v0, count:I
    iget-object v3, p0, Landroid/hardware/contextaware/manager/ListenerListManager;->mListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 115
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;

    .line 116
    .local v2, next:Landroid/hardware/contextaware/manager/ContextAwareService$Listener;
    invoke-virtual {v2}, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->getServices()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    invoke-static {}, Landroid/hardware/contextaware/ContextList;->getInstance()Landroid/hardware/contextaware/ContextList;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/hardware/contextaware/ContextList;->getServiceOrdinal(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    .end local v2           #next:Landroid/hardware/contextaware/manager/ContextAwareService$Listener;
    :cond_1
    return v0
.end method

.method public getUsedSubCollectionCount(Ljava/lang/String;)I
    .locals 7
    .parameter "service"

    .prologue
    .line 127
    const/4 v1, 0x0

    .line 129
    .local v1, count:I
    iget-object v5, p0, Landroid/hardware/contextaware/manager/ListenerListManager;->mListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 130
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;

    .line 131
    .local v4, listener:Landroid/hardware/contextaware/manager/ContextAwareService$Listener;
    invoke-virtual {v4}, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->getServices()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 132
    .local v3, j:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 133
    invoke-static {}, Landroid/hardware/contextaware/ContextList;->getInstance()Landroid/hardware/contextaware/ContextList;

    move-result-object v6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/hardware/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, code:Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 138
    invoke-direct {p0, v0, p1}, Landroid/hardware/contextaware/manager/ListenerListManager;->getUsedSubCollectionCount(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    .line 139
    goto :goto_0

    .line 142
    .end local v0           #code:Ljava/lang/String;
    .end local v3           #j:Ljava/util/Iterator;
    .end local v4           #listener:Landroid/hardware/contextaware/manager/ContextAwareService$Listener;
    :cond_2
    return v1
.end method

.method public getUsedTotalCount(Ljava/lang/String;)I
    .locals 2
    .parameter "service"

    .prologue
    .line 106
    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/manager/ListenerListManager;->getUsedServiceCount(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/manager/ListenerListManager;->getUsedSubCollectionCount(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected removeListener(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 81
    iget-object v0, p0, Landroid/hardware/contextaware/manager/ListenerListManager;->mListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 82
    return-void
.end method

.method protected setCreator(Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/hardware/contextaware/creator/ContextProviderCreator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 196
    .local p1, creator:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<Landroid/hardware/contextaware/creator/ContextProviderCreator;>;"
    iput-object p1, p0, Landroid/hardware/contextaware/manager/ListenerListManager;->mCreator:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 197
    return-void
.end method
