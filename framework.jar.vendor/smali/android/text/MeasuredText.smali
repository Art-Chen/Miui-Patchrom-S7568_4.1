.class Landroid/text/MeasuredText;
.super Ljava/lang/Object;
.source "MeasuredText.java"


# static fields
.field private static final localLOGV:Z

.field private static sCached:[Landroid/text/MeasuredText;

.field private static final sLock:[Ljava/lang/Object;


# instance fields
.field mChars:[C

.field mDir:I

.field mEasy:Z

.field mLen:I

.field mLevels:[B

.field private mPos:I

.field mText:Ljava/lang/CharSequence;

.field mTextStart:I

.field mWidths:[F

.field private mWorkPaint:Landroid/text/TextPaint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Landroid/text/MeasuredText;->sLock:[Ljava/lang/Object;

    .line 51
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/text/MeasuredText;

    sput-object v0, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/text/MeasuredText;->mWorkPaint:Landroid/text/TextPaint;

    .line 48
    return-void
.end method

.method static obtain()Landroid/text/MeasuredText;
    .locals 5

    .prologue
    .line 55
    sget-object v3, Landroid/text/MeasuredText;->sLock:[Ljava/lang/Object;

    monitor-enter v3

    .line 56
    :try_start_0
    sget-object v2, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    array-length v0, v2

    .local v0, i:I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 57
    sget-object v2, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 58
    sget-object v2, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    aget-object v1, v2, v0

    .line 59
    .local v1, mt:Landroid/text/MeasuredText;
    sget-object v2, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    const/4 v4, 0x0

    aput-object v4, v2, v0

    .line 60
    monitor-exit v3

    .line 68
    :goto_0
    return-object v1

    .line 63
    .end local v1           #mt:Landroid/text/MeasuredText;
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    new-instance v1, Landroid/text/MeasuredText;

    invoke-direct {v1}, Landroid/text/MeasuredText;-><init>()V

    .line 68
    .restart local v1       #mt:Landroid/text/MeasuredText;
    goto :goto_0

    .line 63
    .end local v1           #mt:Landroid/text/MeasuredText;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method static recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;
    .locals 4
    .parameter "mt"

    .prologue
    const/4 v3, 0x0

    .line 72
    iput-object v3, p0, Landroid/text/MeasuredText;->mText:Ljava/lang/CharSequence;

    .line 73
    iget v1, p0, Landroid/text/MeasuredText;->mLen:I

    const/16 v2, 0x3e8

    if-ge v1, v2, :cond_1

    .line 74
    sget-object v2, Landroid/text/MeasuredText;->sLock:[Ljava/lang/Object;

    monitor-enter v2

    .line 75
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    sget-object v1, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 76
    sget-object v1, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    aget-object v1, v1, v0

    if-nez v1, :cond_2

    .line 77
    sget-object v1, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    aput-object p0, v1, v0

    .line 78
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/text/MeasuredText;->mText:Ljava/lang/CharSequence;

    .line 82
    :cond_0
    monitor-exit v2

    .line 84
    .end local v0           #i:I
    :cond_1
    return-object v3

    .line 75
    .restart local v0       #i:I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F
    .locals 23
    .parameter "paint"
    .parameter "len"
    .parameter "fm"

    .prologue
    .line 156
    if-eqz p3, :cond_0

    .line 157
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 160
    :cond_0
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/MeasuredText;->mPos:I

    .line 161
    .local v4, p:I
    add-int v2, v4, p2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/MeasuredText;->mPos:I

    .line 163
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/MeasuredText;->mLen:I

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->idealCharArraySize(I)I

    move-result v2

    new-array v3, v2, [C

    .line 165
    .local v3, tempChars:[C
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v5, "CscFeature_Framework_EnableEmoji"

    invoke-virtual {v2, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 167
    const/16 v20, 0x0

    .local v20, j:I
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/MeasuredText;->mLen:I

    move/from16 v0, v20

    if-ge v0, v2, :cond_2

    .line 168
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/MeasuredText;->mChars:[C

    aget-char v2, v2, v20

    const v5, 0xdbb8

    if-lt v2, v5, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/MeasuredText;->mChars:[C

    aget-char v2, v2, v20

    const v5, 0xdbbb

    if-gt v2, v5, :cond_1

    add-int/lit8 v2, v20, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/MeasuredText;->mLen:I

    if-ge v2, v5, :cond_1

    .line 169
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/MeasuredText;->mChars:[C

    aget-char v2, v2, v20

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/MeasuredText;->mChars:[C

    add-int/lit8 v6, v20, 0x1

    aget-char v5, v5, v6

    invoke-static {v2, v5}, Landroid/text/TextLine;->getEmojiCodeFromUACode(CC)C

    move-result v2

    aput-char v2, v3, v20

    .line 170
    add-int/lit8 v2, v20, 0x1

    const/16 v5, 0x200b

    aput-char v5, v3, v2

    .line 171
    add-int/lit8 v20, v20, 0x1

    .line 167
    :goto_1
    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    .line 173
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/MeasuredText;->mChars:[C

    aget-char v2, v2, v20

    aput-char v2, v3, v20

    goto :goto_1

    .line 178
    .end local v20           #j:I
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/text/MeasuredText;->mEasy:Z

    if-eqz v2, :cond_6

    .line 179
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/MeasuredText;->mDir:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_4

    const/4 v8, 0x0

    .line 181
    .local v8, flags:I
    :goto_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v5, "CscFeature_Framework_EnableEmoji"

    invoke-virtual {v2, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 183
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/MeasuredText;->mWidths:[F

    move-object/from16 v2, p1

    move/from16 v5, p2

    move v6, v4

    move/from16 v7, p2

    move v10, v4

    invoke-virtual/range {v2 .. v10}, Landroid/text/TextPaint;->getTextRunAdvances([CIIIII[FI)F

    move-result v22

    .line 207
    :cond_3
    :goto_3
    return v22

    .line 179
    .end local v8           #flags:I
    :cond_4
    const/4 v8, 0x1

    goto :goto_2

    .line 185
    .restart local v8       #flags:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/text/MeasuredText;->mChars:[C

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/MeasuredText;->mWidths:[F

    move-object/from16 v16, v0

    move-object/from16 v9, p1

    move v11, v4

    move/from16 v12, p2

    move v13, v4

    move/from16 v14, p2

    move v15, v8

    move/from16 v17, v4

    invoke-virtual/range {v9 .. v17}, Landroid/text/TextPaint;->getTextRunAdvances([CIIIII[FI)F

    move-result v22

    goto :goto_3

    .line 188
    .end local v8           #flags:I
    :cond_6
    const/16 v22, 0x0

    .line 189
    .local v22, totalAdvance:F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/MeasuredText;->mLevels:[B

    aget-byte v21, v2, v4

    .line 190
    .local v21, level:I
    move v11, v4

    .local v11, q:I
    add-int/lit8 v19, v4, 0x1

    .local v19, i:I
    add-int v18, v4, p2

    .line 191
    .local v18, e:I
    :goto_4
    move/from16 v0, v19

    move/from16 v1, v18

    if-eq v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/MeasuredText;->mLevels:[B

    aget-byte v2, v2, v19

    move/from16 v0, v21

    if-eq v2, v0, :cond_8

    .line 192
    :cond_7
    and-int/lit8 v2, v21, 0x1

    if-nez v2, :cond_9

    const/4 v8, 0x0

    .line 193
    .restart local v8       #flags:I
    :goto_5
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v5, "CscFeature_Framework_EnableEmoji"

    invoke-virtual {v2, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 195
    sub-int v12, v19, v11

    sub-int v14, v19, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/MeasuredText;->mWidths:[F

    move-object/from16 v16, v0

    move-object/from16 v9, p1

    move-object v10, v3

    move v13, v11

    move v15, v8

    move/from16 v17, v11

    invoke-virtual/range {v9 .. v17}, Landroid/text/TextPaint;->getTextRunAdvances([CIIIII[FI)F

    move-result v2

    add-float v22, v22, v2

    .line 200
    :goto_6
    move/from16 v0, v19

    move/from16 v1, v18

    if-eq v0, v1, :cond_3

    .line 203
    move/from16 v11, v19

    .line 204
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/MeasuredText;->mLevels:[B

    aget-byte v21, v2, v19

    .line 190
    .end local v8           #flags:I
    :cond_8
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    .line 192
    :cond_9
    const/4 v8, 0x1

    goto :goto_5

    .line 198
    .restart local v8       #flags:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/text/MeasuredText;->mChars:[C

    sub-int v12, v19, v11

    sub-int v14, v19, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/MeasuredText;->mWidths:[F

    move-object/from16 v16, v0

    move-object/from16 v9, p1

    move v13, v11

    move v15, v8

    move/from16 v17, v11

    invoke-virtual/range {v9 .. v17}, Landroid/text/TextPaint;->getTextRunAdvances([CIIIII[FI)F

    move-result v2

    add-float v22, v22, v2

    goto :goto_6
.end method

.method addStyleRun(Landroid/text/TextPaint;[Landroid/text/style/MetricAffectingSpan;ILandroid/graphics/Paint$FontMetricsInt;)F
    .locals 11
    .parameter "paint"
    .parameter "spans"
    .parameter "len"
    .parameter "fm"

    .prologue
    .line 213
    iget-object v1, p0, Landroid/text/MeasuredText;->mWorkPaint:Landroid/text/TextPaint;

    .line 214
    .local v1, workPaint:Landroid/text/TextPaint;
    invoke-virtual {v1, p1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 216
    const/4 v2, 0x0

    iput v2, v1, Landroid/text/TextPaint;->baselineShift:I

    .line 218
    const/4 v0, 0x0

    .line 219
    .local v0, replacement:Landroid/text/style/ReplacementSpan;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    array-length v2, p2

    if-ge v7, v2, :cond_1

    .line 220
    aget-object v8, p2, v7

    .line 221
    .local v8, span:Landroid/text/style/MetricAffectingSpan;
    instance-of v2, v8, Landroid/text/style/ReplacementSpan;

    if-eqz v2, :cond_0

    move-object v0, v8

    .line 222
    check-cast v0, Landroid/text/style/ReplacementSpan;

    .line 219
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 224
    :cond_0
    invoke-virtual {v8, v1}, Landroid/text/style/MetricAffectingSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    goto :goto_1

    .line 229
    .end local v8           #span:Landroid/text/style/MetricAffectingSpan;
    :cond_1
    if-nez v0, :cond_3

    .line 230
    invoke-virtual {p0, v1, p3, p4}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F

    move-result v10

    .line 242
    .local v10, wid:F
    :goto_2
    if-eqz p4, :cond_2

    .line 243
    iget v2, v1, Landroid/text/TextPaint;->baselineShift:I

    if-gez v2, :cond_5

    .line 244
    iget v2, p4, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v3, v1, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v2, v3

    iput v2, p4, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 245
    iget v2, p4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v3, v1, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v2, v3

    iput v2, p4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 252
    :cond_2
    :goto_3
    return v10

    .line 233
    .end local v10           #wid:F
    :cond_3
    iget-object v2, p0, Landroid/text/MeasuredText;->mText:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/text/MeasuredText;->mTextStart:I

    iget v4, p0, Landroid/text/MeasuredText;->mPos:I

    add-int/2addr v3, v4

    iget v4, p0, Landroid/text/MeasuredText;->mTextStart:I

    iget v5, p0, Landroid/text/MeasuredText;->mPos:I

    add-int/2addr v4, v5

    add-int/2addr v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/text/style/ReplacementSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result v2

    int-to-float v10, v2

    .line 235
    .restart local v10       #wid:F
    iget-object v9, p0, Landroid/text/MeasuredText;->mWidths:[F

    .line 236
    .local v9, w:[F
    iget v2, p0, Landroid/text/MeasuredText;->mPos:I

    aput v10, v9, v2

    .line 237
    iget v2, p0, Landroid/text/MeasuredText;->mPos:I

    add-int/lit8 v7, v2, 0x1

    iget v2, p0, Landroid/text/MeasuredText;->mPos:I

    add-int v6, v2, p3

    .local v6, e:I
    :goto_4
    if-ge v7, v6, :cond_4

    .line 238
    const/4 v2, 0x0

    aput v2, v9, v7

    .line 237
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 239
    :cond_4
    iget v2, p0, Landroid/text/MeasuredText;->mPos:I

    add-int/2addr v2, p3

    iput v2, p0, Landroid/text/MeasuredText;->mPos:I

    goto :goto_2

    .line 247
    .end local v6           #e:I
    .end local v9           #w:[F
    :cond_5
    iget v2, p4, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v3, v1, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v2, v3

    iput v2, p4, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 248
    iget v2, p4, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v3, v1, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v2, v3

    iput v2, p4, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    goto :goto_3
.end method

.method breakText(IZF)I
    .locals 5
    .parameter "limit"
    .parameter "forwards"
    .parameter "width"

    .prologue
    const/16 v4, 0x20

    const/4 v3, 0x0

    .line 256
    iget-object v1, p0, Landroid/text/MeasuredText;->mWidths:[F

    .line 257
    .local v1, w:[F
    if-eqz p2, :cond_3

    .line 258
    const/4 v0, 0x0

    .line 259
    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 260
    aget v2, v1, v0

    sub-float/2addr p3, v2

    .line 261
    cmpg-float v2, p3, v3

    if-gez v2, :cond_1

    .line 264
    :cond_0
    :goto_1
    if-lez v0, :cond_2

    iget-object v2, p0, Landroid/text/MeasuredText;->mChars:[C

    add-int/lit8 v3, v0, -0x1

    aget-char v2, v2, v3

    if-ne v2, v4, :cond_2

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 262
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v2, v0

    .line 274
    :goto_2
    return v2

    .line 267
    .end local v0           #i:I
    :cond_3
    add-int/lit8 v0, p1, -0x1

    .line 268
    .restart local v0       #i:I
    :goto_3
    if-ltz v0, :cond_4

    .line 269
    aget v2, v1, v0

    sub-float/2addr p3, v2

    .line 270
    cmpg-float v2, p3, v3

    if-gez v2, :cond_5

    .line 273
    :cond_4
    :goto_4
    add-int/lit8 v2, p1, -0x1

    if-ge v0, v2, :cond_6

    iget-object v2, p0, Landroid/text/MeasuredText;->mChars:[C

    add-int/lit8 v3, v0, 0x1

    aget-char v2, v2, v3

    if-ne v2, v4, :cond_6

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 271
    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 274
    :cond_6
    sub-int v2, p1, v0

    add-int/lit8 v2, v2, -0x1

    goto :goto_2
.end method

.method measure(II)F
    .locals 4
    .parameter "start"
    .parameter "limit"

    .prologue
    .line 279
    const/4 v2, 0x0

    .line 280
    .local v2, width:F
    iget-object v1, p0, Landroid/text/MeasuredText;->mWidths:[F

    .line 281
    .local v1, w:[F
    move v0, p1

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 282
    aget v3, v1, v0

    add-float/2addr v2, v3

    .line 281
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 284
    :cond_0
    return v2
.end method

.method setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V
    .locals 13
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "textDir"

    .prologue
    .line 95
    iput-object p1, p0, Landroid/text/MeasuredText;->mText:Ljava/lang/CharSequence;

    .line 96
    iput p2, p0, Landroid/text/MeasuredText;->mTextStart:I

    .line 98
    sub-int v6, p3, p2

    .line 99
    .local v6, len:I
    iput v6, p0, Landroid/text/MeasuredText;->mLen:I

    .line 100
    const/4 v10, 0x0

    iput v10, p0, Landroid/text/MeasuredText;->mPos:I

    .line 102
    iget-object v10, p0, Landroid/text/MeasuredText;->mWidths:[F

    if-eqz v10, :cond_0

    iget-object v10, p0, Landroid/text/MeasuredText;->mWidths:[F

    array-length v10, v10

    if-ge v10, v6, :cond_1

    .line 103
    :cond_0
    invoke-static {v6}, Lcom/android/internal/util/ArrayUtils;->idealFloatArraySize(I)I

    move-result v10

    new-array v10, v10, [F

    iput-object v10, p0, Landroid/text/MeasuredText;->mWidths:[F

    .line 105
    :cond_1
    iget-object v10, p0, Landroid/text/MeasuredText;->mChars:[C

    if-eqz v10, :cond_2

    iget-object v10, p0, Landroid/text/MeasuredText;->mChars:[C

    array-length v10, v10

    if-ge v10, v6, :cond_3

    .line 106
    :cond_2
    invoke-static {v6}, Lcom/android/internal/util/ArrayUtils;->idealCharArraySize(I)I

    move-result v10

    new-array v10, v10, [C

    iput-object v10, p0, Landroid/text/MeasuredText;->mChars:[C

    .line 108
    :cond_3
    iget-object v10, p0, Landroid/text/MeasuredText;->mChars:[C

    const/4 v11, 0x0

    move/from16 v0, p3

    invoke-static {p1, p2, v0, v10, v11}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 110
    instance-of v10, p1, Landroid/text/Spanned;

    if-eqz v10, :cond_7

    move-object v7, p1

    .line 111
    check-cast v7, Landroid/text/Spanned;

    .line 112
    .local v7, spanned:Landroid/text/Spanned;
    const-class v10, Landroid/text/style/ReplacementSpan;

    move/from16 v0, p3

    invoke-interface {v7, p2, v0, v10}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/text/style/ReplacementSpan;

    .line 115
    .local v8, spans:[Landroid/text/style/ReplacementSpan;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v10, v8

    if-ge v3, v10, :cond_7

    .line 116
    aget-object v10, v8, v3

    invoke-interface {v7, v10}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v10

    sub-int v9, v10, p2

    .line 117
    .local v9, startInPara:I
    aget-object v10, v8, v3

    invoke-interface {v7, v10}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v10

    sub-int v2, v10, p2

    .line 119
    .local v2, endInPara:I
    if-gez v9, :cond_4

    const/4 v9, 0x0

    .line 120
    :cond_4
    if-le v2, v6, :cond_5

    move v2, v6

    .line 121
    :cond_5
    move v5, v9

    .local v5, j:I
    :goto_1
    if-ge v5, v2, :cond_6

    .line 122
    iget-object v10, p0, Landroid/text/MeasuredText;->mChars:[C

    const v11, 0xfffc

    aput-char v11, v10, v5

    .line 121
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 115
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 127
    .end local v2           #endInPara:I
    .end local v3           #i:I
    .end local v5           #j:I
    .end local v7           #spanned:Landroid/text/Spanned;
    .end local v8           #spans:[Landroid/text/style/ReplacementSpan;
    .end local v9           #startInPara:I
    :cond_7
    sget-object v10, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    if-eq v0, v10, :cond_8

    sget-object v10, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    if-eq v0, v10, :cond_8

    sget-object v10, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    if-ne v0, v10, :cond_9

    :cond_8
    iget-object v10, p0, Landroid/text/MeasuredText;->mChars:[C

    const/4 v11, 0x0

    invoke-static {v10, v11, v6}, Landroid/text/TextUtils;->doesNotNeedBidi([CII)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 131
    const/4 v10, 0x1

    iput v10, p0, Landroid/text/MeasuredText;->mDir:I

    .line 132
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/text/MeasuredText;->mEasy:Z

    .line 153
    :goto_2
    return-void

    .line 134
    :cond_9
    iget-object v10, p0, Landroid/text/MeasuredText;->mLevels:[B

    if-eqz v10, :cond_a

    iget-object v10, p0, Landroid/text/MeasuredText;->mLevels:[B

    array-length v10, v10

    if-ge v10, v6, :cond_b

    .line 135
    :cond_a
    invoke-static {v6}, Lcom/android/internal/util/ArrayUtils;->idealByteArraySize(I)I

    move-result v10

    new-array v10, v10, [B

    iput-object v10, p0, Landroid/text/MeasuredText;->mLevels:[B

    .line 138
    :cond_b
    sget-object v10, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    if-ne v0, v10, :cond_c

    .line 139
    const/4 v1, 0x1

    .line 150
    .local v1, bidiRequest:I
    :goto_3
    iget-object v10, p0, Landroid/text/MeasuredText;->mChars:[C

    iget-object v11, p0, Landroid/text/MeasuredText;->mLevels:[B

    const/4 v12, 0x0

    invoke-static {v1, v10, v11, v6, v12}, Landroid/text/AndroidBidi;->bidi(I[C[BIZ)I

    move-result v10

    iput v10, p0, Landroid/text/MeasuredText;->mDir:I

    .line 151
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/text/MeasuredText;->mEasy:Z

    goto :goto_2

    .line 140
    .end local v1           #bidiRequest:I
    :cond_c
    sget-object v10, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    if-ne v0, v10, :cond_d

    .line 141
    const/4 v1, -0x1

    .restart local v1       #bidiRequest:I
    goto :goto_3

    .line 142
    .end local v1           #bidiRequest:I
    :cond_d
    sget-object v10, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    if-ne v0, v10, :cond_e

    .line 143
    const/4 v1, 0x2

    .restart local v1       #bidiRequest:I
    goto :goto_3

    .line 144
    .end local v1           #bidiRequest:I
    :cond_e
    sget-object v10, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    if-ne v0, v10, :cond_f

    .line 145
    const/4 v1, -0x2

    .restart local v1       #bidiRequest:I
    goto :goto_3

    .line 147
    .end local v1           #bidiRequest:I
    :cond_f
    iget-object v10, p0, Landroid/text/MeasuredText;->mChars:[C

    const/4 v11, 0x0

    move-object/from16 v0, p4

    invoke-interface {v0, v10, v11, v6}, Landroid/text/TextDirectionHeuristic;->isRtl([CII)Z

    move-result v4

    .line 148
    .local v4, isRtl:Z
    if-eqz v4, :cond_10

    const/4 v1, -0x1

    .restart local v1       #bidiRequest:I
    :goto_4
    goto :goto_3

    .end local v1           #bidiRequest:I
    :cond_10
    const/4 v1, 0x1

    goto :goto_4
.end method

.method setPos(I)V
    .locals 1
    .parameter "pos"

    .prologue
    .line 88
    iget v0, p0, Landroid/text/MeasuredText;->mTextStart:I

    sub-int v0, p1, v0

    iput v0, p0, Landroid/text/MeasuredText;->mPos:I

    .line 89
    return-void
.end method
