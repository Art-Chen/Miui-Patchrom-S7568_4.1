.class public Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;
.super Landroid/app/enterprise/IEnterpriseVpnPolicy$Stub;
.source "EnterpriseVpnPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static final ACTION_VPN_ANYCONNECT_SERVICE:Ljava/lang/String; = "android.app.enterprise.VPN_ANYCONNECT"

.field private static TAG:Ljava/lang/String;


# instance fields
.field cAnyconnect:Landroid/content/ServiceConnection;

.field private mAnyconnectService:Landroid/app/enterprise/IEnterpriseVpnInterface;

.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-string v0, "EnterpriseVpnPolicy"

    sput-object v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "ctx"

    .prologue
    .line 109
    invoke-direct {p0}, Landroid/app/enterprise/IEnterpriseVpnPolicy$Stub;-><init>()V

    .line 88
    new-instance v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$1;-><init>(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->cAnyconnect:Landroid/content/ServiceConnection;

    .line 110
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mContext:Landroid/content/Context;

    .line 111
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->bindVpnInterfaces()V

    .line 112
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Landroid/app/enterprise/IEnterpriseVpnInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mAnyconnectService:Landroid/app/enterprise/IEnterpriseVpnInterface;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Landroid/app/enterprise/IEnterpriseVpnInterface;)Landroid/app/enterprise/IEnterpriseVpnInterface;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mAnyconnectService:Landroid/app/enterprise/IEnterpriseVpnInterface;

    return-object p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private bindVpnInterfaces()V
    .locals 4

    .prologue
    .line 82
    sget-object v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v1, "bindVpnInterfaces()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.app.enterprise.VPN_ANYCONNECT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->cAnyconnect:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 86
    return-void
.end method

.method private enforceEnterpriseVpnPermission()I
    .locals 2

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_ENTERPRISE_VPN"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 106
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getVpnInterface(Ljava/lang/String;)Landroid/app/enterprise/IEnterpriseVpnInterface;
    .locals 3
    .parameter "type"

    .prologue
    .line 73
    sget-object v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVpnInterface("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v0, "anyconnect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mAnyconnectService:Landroid/app/enterprise/IEnterpriseVpnInterface;

    .line 78
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getAllEnterpriseVpnConnections()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/EnterpriseVpnConnection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->enforceEnterpriseVpnPermission()I

    .line 186
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 190
    .local v4, ret:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/EnterpriseVpnConnection;>;"
    :try_start_0
    const-string v5, "anyconnect"

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getVpnInterface(Ljava/lang/String;)Landroid/app/enterprise/IEnterpriseVpnInterface;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/enterprise/IEnterpriseVpnInterface;->getAllConnections()Ljava/util/List;

    move-result-object v3

    .line 191
    .local v3, list1:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/EnterpriseVpnConnection;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseVpnConnection;

    .line 192
    .local v0, conn:Landroid/app/enterprise/EnterpriseVpnConnection;
    const-string v5, "anyconnect"

    iput-object v5, v0, Landroid/app/enterprise/EnterpriseVpnConnection;->type:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 196
    .end local v0           #conn:Landroid/app/enterprise/EnterpriseVpnConnection;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #list1:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/EnterpriseVpnConnection;>;"
    :catch_0
    move-exception v1

    .line 197
    .local v1, e:Landroid/os/RemoteException;
    sget-object v5, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v6, ""

    invoke-static {v5, v6, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 201
    .end local v1           #e:Landroid/os/RemoteException;
    :goto_1
    return-object v4

    .line 194
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #list1:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/EnterpriseVpnConnection;>;"
    :cond_0
    :try_start_1
    invoke-interface {v4, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 198
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #list1:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/EnterpriseVpnConnection;>;"
    :catch_1
    move-exception v1

    .line 199
    .local v1, e:Ljava/lang/NullPointerException;
    sget-object v5, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v6, ""

    invoke-static {v5, v6, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public getClientCertificates(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 229
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->enforceEnterpriseVpnPermission()I

    .line 230
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .local v1, ret:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getVpnInterface(Ljava/lang/String;)Landroid/app/enterprise/IEnterpriseVpnInterface;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/enterprise/IEnterpriseVpnInterface;->getCertificates()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 238
    .end local v1           #ret:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    :goto_0
    return-object v1

    .line 233
    .restart local v1       #ret:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    :catch_0
    move-exception v0

    .line 234
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 236
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 237
    .local v0, e:Ljava/lang/NullPointerException;
    sget-object v2, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getEnterpriseVpnConnection(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseVpnConnection;
    .locals 4
    .parameter "type"
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    .line 120
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->enforceEnterpriseVpnPermission()I

    .line 122
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getVpnInterface(Ljava/lang/String;)Landroid/app/enterprise/IEnterpriseVpnInterface;

    move-result-object v2

    invoke-interface {v2, p2}, Landroid/app/enterprise/IEnterpriseVpnInterface;->getConnection(Ljava/lang/String;)Landroid/app/enterprise/EnterpriseVpnConnection;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 128
    :goto_0
    return-object v1

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 126
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 127
    .local v0, e:Ljava/lang/NullPointerException;
    sget-object v2, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public installClientCertificate(Ljava/lang/String;[BLjava/lang/String;)Z
    .locals 4
    .parameter "vpnType"
    .parameter "pkcs12Blob"
    .parameter "password"

    .prologue
    const/4 v1, 0x0

    .line 210
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->enforceEnterpriseVpnPermission()I

    .line 211
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 221
    :cond_0
    :goto_0
    return v1

    .line 215
    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getVpnInterface(Ljava/lang/String;)Landroid/app/enterprise/IEnterpriseVpnInterface;

    move-result-object v2

    invoke-interface {v2, p2, p3}, Landroid/app/enterprise/IEnterpriseVpnInterface;->installCertificate([BLjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 219
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 220
    .local v0, e:Ljava/lang/NullPointerException;
    sget-object v2, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onAdminAdded(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 245
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 250
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 261
    return-void
.end method

.method public removeEnterpriseVpnConnection(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "type"
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    .line 168
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->enforceEnterpriseVpnPermission()I

    .line 170
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getVpnInterface(Ljava/lang/String;)Landroid/app/enterprise/IEnterpriseVpnInterface;

    move-result-object v2

    invoke-interface {v2, p2}, Landroid/app/enterprise/IEnterpriseVpnInterface;->removeConnection(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 176
    :goto_0
    return v1

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 174
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 175
    .local v0, e:Ljava/lang/NullPointerException;
    sget-object v2, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setEnterpriseVpnConnection(Landroid/app/enterprise/EnterpriseVpnConnection;Ljava/lang/String;)Z
    .locals 5
    .parameter "eVpn"
    .parameter "oldName"

    .prologue
    const/4 v1, 0x0

    .line 140
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->enforceEnterpriseVpnPermission()I

    .line 143
    if-nez p1, :cond_0

    .line 158
    :goto_0
    return v1

    .line 146
    :cond_0
    :try_start_0
    iget-object v2, p1, Landroid/app/enterprise/EnterpriseVpnConnection;->type:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getVpnInterface(Ljava/lang/String;)Landroid/app/enterprise/IEnterpriseVpnInterface;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/app/enterprise/IEnterpriseVpnInterface;->createConnection(Landroid/app/enterprise/EnterpriseVpnConnection;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 147
    sget-object v2, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Created connection true "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/app/enterprise/EnterpriseVpnConnection;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const/4 v1, 0x1

    goto :goto_0

    .line 150
    :cond_1
    sget-object v2, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Created connection false "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/app/enterprise/EnterpriseVpnConnection;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 156
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 157
    .local v0, e:Ljava/lang/NullPointerException;
    sget-object v2, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 256
    return-void
.end method
