.class final Landroid/content/res/XmlBlock$Parser;
.super Ljava/lang/Object;
.source "XmlBlock.java"

# interfaces
.implements Landroid/content/res/XmlResourceParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/XmlBlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Parser"
.end annotation


# instance fields
.field private filePath:Ljava/lang/String;

.field private final mBlock:Landroid/content/res/XmlBlock;

.field private mDecNextDepth:Z

.field private mDepth:I

.field private mEventType:I

.field mParseState:I

.field private mStarted:Z

.field final synthetic this$0:Landroid/content/res/XmlBlock;


# direct methods
.method constructor <init>(Landroid/content/res/XmlBlock;ILandroid/content/res/XmlBlock;)V
    .locals 1
    .parameter
    .parameter "parseState"
    .parameter "block"

    .prologue
    const/4 v0, 0x0

    .line 79
    iput-object p1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 476
    iput-boolean v0, p0, Landroid/content/res/XmlBlock$Parser;->mStarted:Z

    .line 477
    iput-boolean v0, p0, Landroid/content/res/XmlBlock$Parser;->mDecNextDepth:Z

    .line 478
    iput v0, p0, Landroid/content/res/XmlBlock$Parser;->mDepth:I

    .line 479
    iput v0, p0, Landroid/content/res/XmlBlock$Parser;->mEventType:I

    .line 80
    iput p2, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    .line 81
    iput-object p3, p0, Landroid/content/res/XmlBlock$Parser;->mBlock:Landroid/content/res/XmlBlock;

    .line 82
    invoke-static {p3}, Landroid/content/res/XmlBlock;->access$008(Landroid/content/res/XmlBlock;)I

    .line 83
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 445
    iget-object v1, p0, Landroid/content/res/XmlBlock$Parser;->mBlock:Landroid/content/res/XmlBlock;

    monitor-enter v1

    .line 446
    :try_start_0
    iget v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    if-eqz v0, :cond_0

    .line 447
    iget v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    #calls: Landroid/content/res/XmlBlock;->nativeDestroyParseState(I)V
    invoke-static {v0}, Landroid/content/res/XmlBlock;->access$1500(I)V

    .line 448
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    .line 449
    iget-object v0, p0, Landroid/content/res/XmlBlock$Parser;->mBlock:Landroid/content/res/XmlBlock;

    #calls: Landroid/content/res/XmlBlock;->decOpenCountLocked()V
    invoke-static {v0}, Landroid/content/res/XmlBlock;->access$1600(Landroid/content/res/XmlBlock;)V

    .line 451
    :cond_0
    monitor-exit v1

    .line 452
    return-void

    .line 451
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public defineEntityReplacementText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "entityName"
    .parameter "replacementText"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 116
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "defineEntityReplacementText() not supported"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 455
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->close()V

    .line 456
    return-void
.end method

.method public getAttributeBooleanValue(IZ)Z
    .locals 2
    .parameter "idx"
    .parameter "defaultValue"

    .prologue
    .line 377
    iget v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    #calls: Landroid/content/res/XmlBlock;->nativeGetAttributeDataType(II)I
    invoke-static {v1, p1}, Landroid/content/res/XmlBlock;->access$800(II)I

    move-result v0

    .line 380
    .local v0, t:I
    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_1

    .line 382
    iget v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    #calls: Landroid/content/res/XmlBlock;->nativeGetAttributeData(II)I
    invoke-static {v1, p1}, Landroid/content/res/XmlBlock;->access$900(II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 384
    :goto_0
    return v1

    .line 382
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move v1, p2

    .line 384
    goto :goto_0
.end method

.method public getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2
    .parameter "namespace"
    .parameter "attribute"
    .parameter "defaultValue"

    .prologue
    .line 325
    iget v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    #calls: Landroid/content/res/XmlBlock;->nativeGetAttributeIndex(ILjava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, p1, p2}, Landroid/content/res/XmlBlock;->access$1000(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 326
    .local v0, idx:I
    if-ltz v0, :cond_0

    .line 327
    invoke-virtual {p0, v0, p3}, Landroid/content/res/XmlBlock$Parser;->getAttributeBooleanValue(IZ)Z

    move-result p3

    .line 329
    .end local p3
    :cond_0
    return p3
.end method

.method public getAttributeCount()I
    .locals 2

    .prologue
    .line 199
    iget v0, p0, Landroid/content/res/XmlBlock$Parser;->mEventType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    #calls: Landroid/content/res/XmlBlock;->nativeGetAttributeCount(I)I
    invoke-static {v0}, Landroid/content/res/XmlBlock;->access$600(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getAttributeFloatValue(IF)F
    .locals 3
    .parameter "idx"
    .parameter "defaultValue"

    .prologue
    .line 416
    iget v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    #calls: Landroid/content/res/XmlBlock;->nativeGetAttributeDataType(II)I
    invoke-static {v1, p1}, Landroid/content/res/XmlBlock;->access$800(II)I

    move-result v0

    .line 419
    .local v0, t:I
    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 420
    iget v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    #calls: Landroid/content/res/XmlBlock;->nativeGetAttributeData(II)I
    invoke-static {v1, p1}, Landroid/content/res/XmlBlock;->access$900(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    return v1

    .line 423
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "not a float!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getAttributeFloatValue(Ljava/lang/String;Ljava/lang/String;F)F
    .locals 2
    .parameter "namespace"
    .parameter "attribute"
    .parameter "defaultValue"

    .prologue
    .line 358
    iget v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    #calls: Landroid/content/res/XmlBlock;->nativeGetAttributeIndex(ILjava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, p1, p2}, Landroid/content/res/XmlBlock;->access$1000(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 359
    .local v0, idx:I
    if-ltz v0, :cond_0

    .line 360
    invoke-virtual {p0, v0, p3}, Landroid/content/res/XmlBlock$Parser;->getAttributeFloatValue(IF)F

    move-result p3

    .line 362
    .end local p3
    :cond_0
    return p3
.end method

.method public getAttributeIntValue(II)I
    .locals 2
    .parameter "idx"
    .parameter "defaultValue"

    .prologue
    .line 396
    iget v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    #calls: Landroid/content/res/XmlBlock;->nativeGetAttributeDataType(II)I
    invoke-static {v1, p1}, Landroid/content/res/XmlBlock;->access$800(II)I

    move-result v0

    .line 399
    .local v0, t:I
    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_0

    .line 401
    iget v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    #calls: Landroid/content/res/XmlBlock;->nativeGetAttributeData(II)I
    invoke-static {v1, p1}, Landroid/content/res/XmlBlock;->access$900(II)I

    move-result p2

    .line 403
    .end local p2
    :cond_0
    return p2
.end method

.method public getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2
    .parameter "namespace"
    .parameter "attribute"
    .parameter "defaultValue"

    .prologue
    .line 341
    iget v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    #calls: Landroid/content/res/XmlBlock;->nativeGetAttributeIndex(ILjava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, p1, p2}, Landroid/content/res/XmlBlock;->access$1000(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 342
    .local v0, idx:I
    if-ltz v0, :cond_0

    .line 343
    invoke-virtual {p0, v0, p3}, Landroid/content/res/XmlBlock$Parser;->getAttributeIntValue(II)I

    move-result p3

    .line 345
    .end local p3
    :cond_0
    return p3
.end method

.method public getAttributeListValue(I[Ljava/lang/String;I)I
    .locals 3
    .parameter "idx"
    .parameter "options"
    .parameter "defaultValue"

    .prologue
    .line 367
    iget v2, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    #calls: Landroid/content/res/XmlBlock;->nativeGetAttributeDataType(II)I
    invoke-static {v2, p1}, Landroid/content/res/XmlBlock;->access$800(II)I

    move-result v0

    .line 368
    .local v0, t:I
    iget v2, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    #calls: Landroid/content/res/XmlBlock;->nativeGetAttributeData(II)I
    invoke-static {v2, p1}, Landroid/content/res/XmlBlock;->access$900(II)I

    move-result v1

    .line 369
    .local v1, v:I
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 370
    iget-object v2, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    iget-object v2, v2, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    invoke-virtual {v2, v1}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2, p2, p3}, Lcom/android/internal/util/XmlUtils;->convertValueToList(Ljava/lang/CharSequence;[Ljava/lang/String;I)I

    move-result v1

    .line 373
    .end local v1           #v:I
    :cond_0
    return v1
.end method

.method public getAttributeListValue(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)I
    .locals 2
    .parameter "namespace"
    .parameter "attribute"
    .parameter "options"
    .parameter "defaultValue"

    .prologue
    .line 317
    iget v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    #calls: Landroid/content/res/XmlBlock;->nativeGetAttributeIndex(ILjava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, p1, p2}, Landroid/content/res/XmlBlock;->access$1000(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 318
    .local v0, idx:I
    if-ltz v0, :cond_0

    .line 319
    invoke-virtual {p0, v0, p3, p4}, Landroid/content/res/XmlBlock$Parser;->getAttributeListValue(I[Ljava/lang/String;I)I

    move-result p4

    .line 321
    .end local p4
    :cond_0
    return p4
.end method

.method public getAttributeName(I)Ljava/lang/String;
    .locals 3
    .parameter "index"

    .prologue
    .line 186
    iget v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    #calls: Landroid/content/res/XmlBlock;->nativeGetAttributeName(II)I
    invoke-static {v1, p1}, Landroid/content/res/XmlBlock;->access$500(II)I

    move-result v0

    .line 188
    .local v0, id:I
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    iget-object v1, v1, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    invoke-virtual {v1, v0}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 189
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getAttributeNameResource(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 312
    iget v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    #calls: Landroid/content/res/XmlBlock;->nativeGetAttributeResource(II)I
    invoke-static {v0, p1}, Landroid/content/res/XmlBlock;->access$1100(II)I

    move-result v0

    return v0
.end method

.method public getAttributeNamespace(I)Ljava/lang/String;
    .locals 3
    .parameter "index"

    .prologue
    .line 179
    iget v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    #calls: Landroid/content/res/XmlBlock;->nativeGetAttributeNamespace(II)I
    invoke-static {v1, p1}, Landroid/content/res/XmlBlock;->access$400(II)I

    move-result v0

    .line 181
    .local v0, id:I
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    iget-object v1, v1, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    invoke-virtual {v1, v0}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 182
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const-string v1, ""

    goto :goto_0

    .line 183
    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getAttributePrefix(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 192
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "getAttributePrefix not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAttributeResourceValue(II)I
    .locals 2
    .parameter "idx"
    .parameter "defaultValue"

    .prologue
    .line 387
    iget v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    #calls: Landroid/content/res/XmlBlock;->nativeGetAttributeDataType(II)I
    invoke-static {v1, p1}, Landroid/content/res/XmlBlock;->access$800(II)I

    move-result v0

    .line 390
    .local v0, t:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 391
    iget v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    #calls: Landroid/content/res/XmlBlock;->nativeGetAttributeData(II)I
    invoke-static {v1, p1}, Landroid/content/res/XmlBlock;->access$900(II)I

    move-result p2

    .line 393
    .end local p2
    :cond_0
    return p2
.end method

.method public getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2
    .parameter "namespace"
    .parameter "attribute"
    .parameter "defaultValue"

    .prologue
    .line 333
    iget v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    #calls: Landroid/content/res/XmlBlock;->nativeGetAttributeIndex(ILjava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, p1, p2}, Landroid/content/res/XmlBlock;->access$1000(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 334
    .local v0, idx:I
    if-ltz v0, :cond_0

    .line 335
    invoke-virtual {p0, v0, p3}, Landroid/content/res/XmlBlock$Parser;->getAttributeResourceValue(II)I

    move-result p3

    .line 337
    .end local p3
    :cond_0
    return p3
.end method

.method public getAttributeType(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 216
    const-string v0, "CDATA"

    return-object v0
.end method

.method public getAttributeUnsignedIntValue(II)I
    .locals 2
    .parameter "idx"
    .parameter "defaultValue"

    .prologue
    .line 406
    iget v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    #calls: Landroid/content/res/XmlBlock;->nativeGetAttributeDataType(II)I
    invoke-static {v1, p1}, Landroid/content/res/XmlBlock;->access$800(II)I

    move-result v0

    .line 409
    .local v0, t:I
    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_0

    .line 411
    iget v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    #calls: Landroid/content/res/XmlBlock;->nativeGetAttributeData(II)I
    invoke-static {v1, p1}, Landroid/content/res/XmlBlock;->access$900(II)I

    move-result p2

    .line 413
    .end local p2
    :cond_0
    return p2
.end method

.method public getAttributeUnsignedIntValue(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2
    .parameter "namespace"
    .parameter "attribute"
    .parameter "defaultValue"

    .prologue
    .line 350
    iget v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    #calls: Landroid/content/res/XmlBlock;->nativeGetAttributeIndex(ILjava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, p1, p2}, Landroid/content/res/XmlBlock;->access$1000(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 351
    .local v0, idx:I
    if-ltz v0, :cond_0

    .line 352
    invoke-virtual {p0, v0, p3}, Landroid/content/res/XmlBlock$Parser;->getAttributeUnsignedIntValue(II)I

    move-result p3

    .line 354
    .end local p3
    :cond_0
    return p3
.end method

.method public getAttributeValue(I)Ljava/lang/String;
    .locals 5
    .parameter "index"

    .prologue
    .line 202
    iget v3, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    #calls: Landroid/content/res/XmlBlock;->nativeGetAttributeStringValue(II)I
    invoke-static {v3, p1}, Landroid/content/res/XmlBlock;->access$700(II)I

    move-result v0

    .line 204
    .local v0, id:I
    if-ltz v0, :cond_0

    iget-object v3, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    iget-object v3, v3, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    invoke-virtual {v3, v0}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 213
    :goto_0
    return-object v3

    .line 207
    :cond_0
    iget v3, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    #calls: Landroid/content/res/XmlBlock;->nativeGetAttributeDataType(II)I
    invoke-static {v3, p1}, Landroid/content/res/XmlBlock;->access$800(II)I

    move-result v1

    .line 208
    .local v1, t:I
    if-nez v1, :cond_1

    .line 209
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 212
    :cond_1
    iget v3, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    #calls: Landroid/content/res/XmlBlock;->nativeGetAttributeData(II)I
    invoke-static {v3, p1}, Landroid/content/res/XmlBlock;->access$900(II)I

    move-result v2

    .line 213
    .local v2, v:I
    invoke-static {v1, v2}, Landroid/util/TypedValue;->coerceToString(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "namespace"
    .parameter "name"

    .prologue
    .line 225
    iget v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    #calls: Landroid/content/res/XmlBlock;->nativeGetAttributeIndex(ILjava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, p1, p2}, Landroid/content/res/XmlBlock;->access$1000(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 226
    .local v0, idx:I
    if-ltz v0, :cond_0

    .line 233
    invoke-virtual {p0, v0}, Landroid/content/res/XmlBlock$Parser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    .line 235
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getClassAttribute()Ljava/lang/String;
    .locals 2

    .prologue
    .line 431
    iget v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    #calls: Landroid/content/res/XmlBlock;->nativeGetClassAttribute(I)I
    invoke-static {v1}, Landroid/content/res/XmlBlock;->access$1300(I)I

    move-result v0

    .line 432
    .local v0, id:I
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    iget-object v1, v1, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    invoke-virtual {v1, v0}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getColumnNumber()I
    .locals 1

    .prologue
    .line 137
    const/4 v0, -0x1

    return v0
.end method

.method public getDepth()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Landroid/content/res/XmlBlock$Parser;->mDepth:I

    return v0
.end method

.method public getEventType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 150
    iget v0, p0, Landroid/content/res/XmlBlock$Parser;->mEventType:I

    return v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 2
    .parameter "name"

    .prologue
    const/4 v0, 0x1

    .line 95
    const-string v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    :cond_0
    :goto_0
    return v0

    .line 98
    :cond_1
    const-string v1, "http://xmlpull.org/v1/doc/features.html#report-namespace-prefixes"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 101
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Landroid/content/res/XmlBlock$Parser;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getIdAttribute()Ljava/lang/String;
    .locals 2

    .prologue
    .line 427
    iget v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    #calls: Landroid/content/res/XmlBlock;->nativeGetIdAttribute(I)I
    invoke-static {v1}, Landroid/content/res/XmlBlock;->access$1200(I)I

    move-result v0

    .line 428
    .local v0, id:I
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    iget-object v1, v1, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    invoke-virtual {v1, v0}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIdAttributeResourceValue(I)I
    .locals 2
    .parameter "defaultValue"

    .prologue
    .line 437
    const/4 v0, 0x0

    const-string v1, "id"

    invoke-virtual {p0, v0, v1, p1}, Landroid/content/res/XmlBlock$Parser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getInputEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLineNumber()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    #calls: Landroid/content/res/XmlBlock;->nativeGetLineNumber(I)I
    invoke-static {v0}, Landroid/content/res/XmlBlock;->access$200(I)I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 175
    iget v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    invoke-static {v1}, Landroid/content/res/XmlBlock;->nativeGetName(I)I

    move-result v0

    .line 176
    .local v0, id:I
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    iget-object v1, v1, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    invoke-virtual {v1, v0}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 2

    .prologue
    .line 171
    iget v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    #calls: Landroid/content/res/XmlBlock;->nativeGetNamespace(I)I
    invoke-static {v1}, Landroid/content/res/XmlBlock;->access$300(I)I

    move-result v0

    .line 172
    .local v0, id:I
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    iget-object v1, v1, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    invoke-virtual {v1, v0}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getNamespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "prefix"

    .prologue
    .line 125
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "getNamespace() not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNamespaceCount(I)I
    .locals 2
    .parameter "depth"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 128
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "getNamespaceCount() not supported"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNamespacePrefix(I)Ljava/lang/String;
    .locals 2
    .parameter "pos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 119
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "getNamespacePrefix() not supported"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNamespaceUri(I)Ljava/lang/String;
    .locals 2
    .parameter "pos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 134
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "getNamespaceUri() not supported"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final getPooledString(I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "id"

    .prologue
    .line 459
    iget-object v0, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    iget-object v0, v0, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    invoke-virtual {v0, p1}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getPositionDescription()Ljava/lang/String;
    .locals 2

    .prologue
    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Binary XML file line #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 2

    .prologue
    .line 157
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "getPrefix not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "name"

    .prologue
    .line 107
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStyleAttribute()I
    .locals 1

    .prologue
    .line 441
    iget v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    #calls: Landroid/content/res/XmlBlock;->nativeGetStyleAttribute(I)I
    invoke-static {v0}, Landroid/content/res/XmlBlock;->access$1400(I)I

    move-result v0

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 143
    iget v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    #calls: Landroid/content/res/XmlBlock;->nativeGetText(I)I
    invoke-static {v1}, Landroid/content/res/XmlBlock;->access$100(I)I

    move-result v0

    .line 144
    .local v0, id:I
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    iget-object v1, v1, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    invoke-virtual {v1, v0}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTextCharacters([I)[C
    .locals 5
    .parameter "holderForStartAndLength"

    .prologue
    const/4 v4, 0x0

    .line 160
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, txt:Ljava/lang/String;
    const/4 v0, 0x0

    .line 162
    .local v0, chars:[C
    if-eqz v1, :cond_0

    .line 163
    aput v4, p1, v4

    .line 164
    const/4 v2, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    aput v3, p1, v2

    .line 165
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    new-array v0, v2, [C

    .line 166
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v4, v2, v0, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 168
    :cond_0
    return-object v0
.end method

.method public isAttributeDefault(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 219
    const/4 v0, 0x0

    return v0
.end method

.method public isEmptyElementTag()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 196
    const/4 v0, 0x0

    return v0
.end method

.method public isWhitespace()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public next()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 238
    iget-boolean v3, p0, Landroid/content/res/XmlBlock$Parser;->mStarted:Z

    if-nez v3, :cond_1

    .line 239
    iput-boolean v2, p0, Landroid/content/res/XmlBlock$Parser;->mStarted:Z

    move v0, v1

    .line 266
    :cond_0
    :goto_0
    return v0

    .line 242
    :cond_1
    iget v3, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    if-nez v3, :cond_2

    move v0, v2

    .line 243
    goto :goto_0

    .line 245
    :cond_2
    iget v3, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    invoke-static {v3}, Landroid/content/res/XmlBlock;->nativeNext(I)I

    move-result v0

    .line 246
    .local v0, ev:I
    iget-boolean v3, p0, Landroid/content/res/XmlBlock$Parser;->mDecNextDepth:Z

    if-eqz v3, :cond_3

    .line 247
    iget v3, p0, Landroid/content/res/XmlBlock$Parser;->mDepth:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/content/res/XmlBlock$Parser;->mDepth:I

    .line 248
    iput-boolean v1, p0, Landroid/content/res/XmlBlock$Parser;->mDecNextDepth:Z

    .line 250
    :cond_3
    packed-switch v0, :pswitch_data_0

    .line 258
    :goto_1
    iput v0, p0, Landroid/content/res/XmlBlock$Parser;->mEventType:I

    .line 259
    if-ne v0, v2, :cond_0

    .line 264
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->close()V

    goto :goto_0

    .line 252
    :pswitch_0
    iget v1, p0, Landroid/content/res/XmlBlock$Parser;->mDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/content/res/XmlBlock$Parser;->mDepth:I

    goto :goto_1

    .line 255
    :pswitch_1
    iput-boolean v2, p0, Landroid/content/res/XmlBlock$Parser;->mDecNextDepth:Z

    goto :goto_1

    .line 250
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public nextTag()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 299
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->next()I

    move-result v0

    .line 300
    .local v0, eventType:I
    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->isWhitespace()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 301
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->next()I

    move-result v0

    .line 303
    :cond_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 304
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": expected start or end tag"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    .line 308
    :cond_1
    return v0
.end method

.method public nextText()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    const/4 v5, 0x0

    .line 275
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getEventType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 276
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": parser must be on START_TAG to read next text"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p0, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2

    .line 280
    :cond_0
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->next()I

    move-result v0

    .line 281
    .local v0, eventType:I
    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    .line 282
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 283
    .local v1, result:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->next()I

    move-result v0

    .line 284
    if-eq v0, v4, :cond_2

    .line 285
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": event TEXT it must be immediately followed by END_TAG"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p0, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2

    .line 290
    .end local v1           #result:Ljava/lang/String;
    :cond_1
    if-ne v0, v4, :cond_3

    .line 291
    const-string v1, ""

    :cond_2
    return-object v1

    .line 293
    :cond_3
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": parser must be on START_TAG or TEXT to read text"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p0, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public nextToken()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 222
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->next()I

    move-result v0

    return v0
.end method

.method public require(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "type"
    .parameter "namespace"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 269
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getEventType()I

    move-result v0

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p3, :cond_2

    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 272
    :cond_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/content/res/XmlBlock$Parser;->TYPES:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_2
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 3
    .parameter "name"
    .parameter "state"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 86
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 90
    :cond_0
    return-void

    .line 89
    :cond_1
    const-string v0, "http://xmlpull.org/v1/doc/features.html#report-namespace-prefixes"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p2, :cond_0

    .line 92
    :cond_2
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported feature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 1
    .parameter "filePath"

    .prologue
    .line 464
    sget-boolean v0, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v0, :cond_0

    .line 465
    iput-object p1, p0, Landroid/content/res/XmlBlock$Parser;->filePath:Ljava/lang/String;

    .line 467
    :cond_0
    return-void
.end method

.method public setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 2
    .parameter "inputStream"
    .parameter "inputEncoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 113
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v1, "setInput() not supported"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setInput(Ljava/io/Reader;)V
    .locals 2
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 110
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v1, "setInput() not supported"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 104
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v1, "setProperty() not supported"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
