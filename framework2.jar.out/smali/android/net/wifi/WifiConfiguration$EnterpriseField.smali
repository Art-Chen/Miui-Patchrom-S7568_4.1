.class public Landroid/net/wifi/WifiConfiguration$EnterpriseField;
.super Ljava/lang/Object;
.source "WifiConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EnterpriseField"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiConfiguration;

.field private value:Ljava/lang/String;

.field private varName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "varName"

    .prologue
    .line 115
    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->this$0:Landroid/net/wifi/WifiConfiguration;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p2, p0, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->varName:Ljava/lang/String;

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value:Ljava/lang/String;

    .line 118
    return-void
.end method

.method synthetic constructor <init>(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 111
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;-><init>(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public setValue(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 121
    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public value()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value:Ljava/lang/String;

    return-object v0
.end method

.method public varName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->varName:Ljava/lang/String;

    return-object v0
.end method
