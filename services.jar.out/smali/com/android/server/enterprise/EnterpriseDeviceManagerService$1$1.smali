.class Lcom/android/server/enterprise/EnterpriseDeviceManagerService$1$1;
.super Ljava/lang/Object;
.source "EnterpriseDeviceManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/EnterpriseDeviceManagerService$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/enterprise/EnterpriseDeviceManagerService$1;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerService$1;)V
    .locals 0
    .parameter

    .prologue
    .line 279
    iput-object p1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$1$1;->this$1:Lcom/android/server/enterprise/EnterpriseDeviceManagerService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$1$1;->this$1:Lcom/android/server/enterprise/EnterpriseDeviceManagerService$1;

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$1;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    #calls: Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->handleLicenseExpiryCheckNotification()V
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->access$500(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V

    .line 282
    return-void
.end method
