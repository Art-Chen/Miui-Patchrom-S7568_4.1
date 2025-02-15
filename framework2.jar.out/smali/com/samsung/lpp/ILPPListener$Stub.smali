.class public abstract Lcom/samsung/lpp/ILPPListener$Stub;
.super Landroid/os/Binder;
.source "ILPPListener.java"

# interfaces
.implements Lcom/samsung/lpp/ILPPListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/lpp/ILPPListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/lpp/ILPPListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.lpp.ILPPListener"

.field static final TRANSACTION_onCurrentLocationGeoFenceResult:I = 0x4

.field static final TRANSACTION_onGeoFenceDetected:I = 0x3

.field static final TRANSACTION_onGeoFenceEntered:I = 0x1

.field static final TRANSACTION_onGeoFenceExited:I = 0x2

.field static final TRANSACTION_onLocationReported:I = 0x7

.field static final TRANSACTION_onStatusDisabled:I = 0x6

.field static final TRANSACTION_onStatusEnabled:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.samsung.lpp.ILPPListener"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/lpp/ILPPListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/lpp/ILPPListener;
    .locals 2
    .parameter "obj"

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v1, "com.samsung.lpp.ILPPListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/lpp/ILPPListener;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/samsung/lpp/ILPPListener;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/samsung/lpp/ILPPListener$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/samsung/lpp/ILPPListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 110
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 45
    :sswitch_0
    const-string v3, "com.samsung.lpp.ILPPListener"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v3, "com.samsung.lpp.ILPPListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 53
    .local v1, _arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v1}, Lcom/samsung/lpp/ILPPListener$Stub;->onGeoFenceEntered(Ljava/util/List;)V

    goto :goto_0

    .line 58
    .end local v1           #_arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_2
    const-string v3, "com.samsung.lpp.ILPPListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 61
    .restart local v1       #_arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v1}, Lcom/samsung/lpp/ILPPListener$Stub;->onGeoFenceExited(Ljava/util/List;)V

    goto :goto_0

    .line 66
    .end local v1           #_arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_3
    const-string v3, "com.samsung.lpp.ILPPListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 69
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/samsung/lpp/ILPPListener$Stub;->onGeoFenceDetected(I)V

    goto :goto_0

    .line 74
    .end local v0           #_arg0:I
    :sswitch_4
    const-string v3, "com.samsung.lpp.ILPPListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 77
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/samsung/lpp/ILPPListener$Stub;->onCurrentLocationGeoFenceResult(I)V

    goto :goto_0

    .line 82
    .end local v0           #_arg0:I
    :sswitch_5
    const-string v3, "com.samsung.lpp.ILPPListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 85
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/samsung/lpp/ILPPListener$Stub;->onStatusEnabled(I)V

    goto :goto_0

    .line 90
    .end local v0           #_arg0:I
    :sswitch_6
    const-string v3, "com.samsung.lpp.ILPPListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 93
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/samsung/lpp/ILPPListener$Stub;->onStatusDisabled(I)V

    goto :goto_0

    .line 98
    .end local v0           #_arg0:I
    :sswitch_7
    const-string v3, "com.samsung.lpp.ILPPListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 101
    sget-object v3, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    .line 106
    .local v0, _arg0:Landroid/location/Location;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/samsung/lpp/ILPPListener$Stub;->onLocationReported(Landroid/location/Location;)V

    goto :goto_0

    .line 104
    .end local v0           #_arg0:Landroid/location/Location;
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/location/Location;
    goto :goto_1

    .line 41
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
