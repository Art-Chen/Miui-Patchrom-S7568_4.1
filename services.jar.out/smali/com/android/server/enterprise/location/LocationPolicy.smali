.class public Lcom/android/server/enterprise/location/LocationPolicy;
.super Landroid/app/enterprise/ILocationPolicy$Stub;
.source "LocationPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "EDM"


# instance fields
.field mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mLM:Landroid/location/LocationManager;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/enterprise/ILocationPolicy$Stub;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 34
    iput-object p1, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mContext:Landroid/content/Context;

    .line 35
    iget-object v0, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mResolver:Landroid/content/ContentResolver;

    .line 36
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 37
    return-void
.end method

.method private addToBlocked(ILjava/lang/String;)Z
    .locals 5
    .parameter "adminUid"
    .parameter "sProvider"

    .prologue
    .line 349
    const-string v3, "EDM"

    const-string v4, ">>> LocationPolicyService.addToBlocked()"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    invoke-virtual {p0}, Lcom/android/server/enterprise/location/LocationPolicy;->getAllLocationProviders()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 352
    const/4 v3, 0x0

    .line 364
    :goto_0
    return v3

    .line 354
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 355
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/location/LocationPolicy;->getBlockedList(I)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 356
    .local v2, provider:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 357
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 361
    .end local v2           #provider:Ljava/lang/String;
    :cond_2
    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 362
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    :cond_3
    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/location/LocationPolicy;->saveBlockedList(ILjava/util/List;)Z

    move-result v3

    goto :goto_0
.end method

.method private enforceLocationPermission()I
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/server/enterprise/location/LocationPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_LOCATION"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 62
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private getBlockedList(I)Ljava/util/ArrayList;
    .locals 5
    .parameter "adminUid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 288
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 289
    .local v0, blockedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "LOCATION"

    const-string v4, "blockedProviders"

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 291
    .local v1, blockedProviders:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 292
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    :goto_0
    return-object v0

    .line 294
    :cond_0
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private isBlocked(Ljava/lang/String;)Z
    .locals 2
    .parameter "sProvider"

    .prologue
    .line 369
    invoke-virtual {p0}, Lcom/android/server/enterprise/location/LocationPolicy;->getAllBlockedProviders()Ljava/util/List;

    move-result-object v0

    .line 370
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 371
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 373
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private removeFromBlocked(ILjava/lang/String;)Z
    .locals 3
    .parameter "adminUid"
    .parameter "sProvider"

    .prologue
    .line 330
    invoke-virtual {p0}, Lcom/android/server/enterprise/location/LocationPolicy;->getAllLocationProviders()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 331
    const/4 v2, 0x0

    .line 345
    :goto_0
    return v2

    .line 333
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/location/LocationPolicy;->getBlockedList(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 334
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_3

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 335
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 336
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 337
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 345
    .end local v0           #i:I
    :cond_1
    :goto_2
    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/location/LocationPolicy;->saveBlockedList(ILjava/util/List;)Z

    move-result v2

    goto :goto_0

    .line 335
    .restart local v0       #i:I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 342
    .end local v0           #i:I
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 343
    .restart local v1       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private saveBlockedList(ILjava/util/List;)Z
    .locals 7
    .parameter "adminUid"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 306
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 307
    .local v2, sb:Ljava/lang/StringBuilder;
    if-eqz p2, :cond_2

    .line 308
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 309
    .local v1, s:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 310
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 313
    .end local v1           #s:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "LOCATION"

    const-string v5, "blockedProviders"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, p1, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 317
    .end local v0           #i$:Ljava/util/Iterator;
    :goto_1
    return v3

    .line 316
    :cond_2
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    iget-object v3, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "LOCATION"

    const-string v5, "blockedProviders"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, p1, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    goto :goto_1
.end method

.method private setLocationManager()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mLM:Landroid/location/LocationManager;

    .line 55
    return-void
.end method


# virtual methods
.method public getAllBlockedProviders()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    iget-object v4, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "LOCATION"

    const-string v6, "blockedProviders"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 152
    .local v2, blockedProvidersList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .local v0, blockedList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    .line 154
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 155
    .local v1, blockedProviders:Ljava/lang/String;
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 158
    .end local v1           #blockedProviders:Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_0
    const-string v4, ""

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    :cond_1
    return-object v0
.end method

.method public getAllLocationProviders()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    const/4 v0, 0x0

    .line 139
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/server/enterprise/location/LocationPolicy;->enforceLocationPermission()I

    .line 140
    invoke-direct {p0}, Lcom/android/server/enterprise/location/LocationPolicy;->setLocationManager()V

    .line 141
    iget-object v1, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mLM:Landroid/location/LocationManager;

    invoke-virtual {v1}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    .line 142
    return-object v0
.end method

.method public getIndividualLocationProvider(Ljava/lang/String;)Z
    .locals 4
    .parameter "sProvider"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 113
    invoke-virtual {p0}, Lcom/android/server/enterprise/location/LocationPolicy;->getAllLocationProviders()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 124
    :cond_0
    :goto_0
    return v0

    .line 117
    :cond_1
    const-string v2, "gps"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 118
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/location/LocationPolicy;->isBlocked(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "gps"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 124
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/location/LocationPolicy;->isBlocked(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public isGPSOn()Z
    .locals 5

    .prologue
    .line 269
    const-string v3, "EDM"

    const-string v4, ">>> isGPSOn"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const/4 v0, 0x0

    .line 272
    .local v0, ret:Z
    invoke-direct {p0}, Lcom/android/server/enterprise/location/LocationPolicy;->enforceLocationPermission()I

    .line 273
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 274
    .local v1, token:J
    iget-object v3, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "gps"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 275
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 277
    return v0
.end method

.method public isGPSStateChangeAllowed()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 216
    const-string v2, "EDM"

    const-string v3, ">>> isGPSStateChangeAllowed"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0}, Lcom/android/server/enterprise/location/LocationPolicy;->getAllLocationProviders()Ljava/util/List;

    move-result-object v2

    const-string v3, "gps"

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 223
    :cond_0
    :goto_0
    return v1

    .line 222
    :cond_1
    const-string v2, "gps"

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/location/LocationPolicy;->isBlocked(Ljava/lang/String;)Z

    move-result v0

    .line 223
    .local v0, blocked:Z
    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isLocationProviderBlocked(Ljava/lang/String;)Z
    .locals 1
    .parameter "sProvider"

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/location/LocationPolicy;->isBlocked(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onAdminAdded(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 380
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 386
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 397
    return-void
.end method

.method public setGPSStateChangeAllowed(Z)Z
    .locals 6
    .parameter "allow"

    .prologue
    .line 185
    const-string v4, "EDM"

    const-string v5, ">>> setGPSStateChangeAllowed"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-direct {p0}, Lcom/android/server/enterprise/location/LocationPolicy;->enforceLocationPermission()I

    move-result v1

    .line 188
    .local v1, callingUid:I
    const/4 v3, 0x1

    .line 189
    .local v3, result:Z
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/location/LocationPolicy;->getBlockedList(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 190
    .local v0, blockedList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "gps"

    .line 193
    .local v2, provider:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/enterprise/location/LocationPolicy;->getAllLocationProviders()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 194
    const/4 v4, 0x0

    .line 207
    :goto_0
    return v4

    .line 196
    :cond_0
    monitor-enter p0

    .line 197
    if-eqz p1, :cond_2

    .line 198
    :try_start_0
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 199
    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/location/LocationPolicy;->removeFromBlocked(ILjava/lang/String;)Z

    move-result v3

    .line 206
    :cond_1
    :goto_1
    monitor-exit p0

    move v4, v3

    .line 207
    goto :goto_0

    .line 202
    :cond_2
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 203
    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/location/LocationPolicy;->addToBlocked(ILjava/lang/String;)Z

    move-result v3

    goto :goto_1

    .line 206
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public setIndividualLocationProvider(Ljava/lang/String;Z)Z
    .locals 7
    .parameter "sProvider"
    .parameter "enable"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/server/enterprise/location/LocationPolicy;->enforceLocationPermission()I

    move-result v1

    .line 75
    .local v1, callingUid:I
    const/4 v2, 0x1

    .line 76
    .local v2, result:Z
    invoke-direct {p0}, Lcom/android/server/enterprise/location/LocationPolicy;->setLocationManager()V

    .line 77
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/location/LocationPolicy;->getBlockedList(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 78
    .local v0, blockedList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 81
    invoke-virtual {p0}, Lcom/android/server/enterprise/location/LocationPolicy;->getAllLocationProviders()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 82
    const/4 v5, 0x0

    .line 102
    :goto_0
    return v5

    .line 87
    :cond_0
    monitor-enter p0

    .line 88
    if-eqz p2, :cond_2

    .line 89
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 90
    invoke-direct {p0, v1, p1}, Lcom/android/server/enterprise/location/LocationPolicy;->removeFromBlocked(ILjava/lang/String;)Z

    move-result v2

    .line 101
    :cond_1
    :goto_1
    monitor-exit p0

    move v5, v2

    .line 102
    goto :goto_0

    .line 93
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 94
    .local v3, token:J
    iget-object v5, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v5, p1, p2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 95
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 97
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 98
    invoke-direct {p0, v1, p1}, Lcom/android/server/enterprise/location/LocationPolicy;->addToBlocked(ILjava/lang/String;)Z

    move-result v2

    goto :goto_1

    .line 101
    .end local v3           #token:J
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 104
    :cond_3
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Invalid provider name !"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public startGPS(Z)Z
    .locals 7
    .parameter "start"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 238
    const-string v5, "EDM"

    const-string v6, ">>> startGPS"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-direct {p0}, Lcom/android/server/enterprise/location/LocationPolicy;->enforceLocationPermission()I

    .line 241
    const-string v0, "gps"

    .line 244
    .local v0, provider:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/enterprise/location/LocationPolicy;->getAllLocationProviders()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 259
    :cond_0
    :goto_0
    return v3

    .line 248
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/enterprise/location/LocationPolicy;->isGPSStateChangeAllowed()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 251
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/enterprise/location/LocationPolicy;->isGPSOn()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/android/server/enterprise/location/LocationPolicy;->isGPSOn()Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    move v3, v4

    .line 252
    goto :goto_0

    .line 254
    :cond_4
    monitor-enter p0

    .line 255
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 256
    .local v1, token:J
    iget-object v3, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v3, v0, p1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 257
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 258
    monitor-exit p0

    move v3, v4

    .line 259
    goto :goto_0

    .line 258
    .end local v1           #token:J
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 392
    return-void
.end method
