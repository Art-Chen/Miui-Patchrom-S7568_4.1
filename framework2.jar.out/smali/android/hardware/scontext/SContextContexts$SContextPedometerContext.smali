.class public Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;
.super Ljava/lang/Object;
.source "SContextContexts.java"

# interfaces
.implements Landroid/hardware/scontext/ISContextContexts;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/scontext/SContextContexts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SContextPedometerContext"
.end annotation


# instance fields
.field protected mCalorie:D

.field protected mDistance:D

.field protected mRunStepCount:J

.field protected mSlopeAngle:D

.field protected mSpeed:D

.field protected mStepStatus:I

.field protected mTotalStepCount:J

.field protected mUpDownStepCount:J

.field protected mWalkStepCount:J


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const-wide/16 v1, 0x0

    .line 80
    iput-wide v1, p0, Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;->mCalorie:D

    .line 81
    iput-wide v1, p0, Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;->mDistance:D

    .line 82
    iput-wide v1, p0, Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;->mSpeed:D

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;->mStepStatus:I

    .line 84
    iput-wide v3, p0, Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;->mTotalStepCount:J

    .line 85
    iput-wide v3, p0, Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;->mWalkStepCount:J

    .line 86
    iput-wide v3, p0, Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;->mRunStepCount:J

    .line 87
    iput-wide v3, p0, Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;->mUpDownStepCount:J

    .line 88
    iput-wide v1, p0, Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;->mSlopeAngle:D

    .line 89
    return-void
.end method
