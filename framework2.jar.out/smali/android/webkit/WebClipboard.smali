.class public Landroid/webkit/WebClipboard;
.super Ljava/lang/Object;
.source "WebClipboard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebClipboard$IClipboardDataPasteEventImpl;,
        Landroid/webkit/WebClipboard$OnPasteFromSelectionUIListener;
    }
.end annotation


# static fields
.field static final INIT:I = 0x1

.field private static final PLAIN_TEXT_TO_ESCAPE:Ljava/util/regex/Pattern; = null

.field static final tempDirectory:Ljava/lang/String; = "/sdcard/EmailTempImage/"


# instance fields
.field public DEBUG:Z

.field private mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field protected mPasteEvent:Landroid/webkit/WebClipboard$IClipboardDataPasteEventImpl;

.field mPasteListener:Landroid/webkit/WebClipboard$OnPasteFromSelectionUIListener;

.field private mViewWidth:I

.field private mZoomFactor:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    const-string v0, "[<>&]| {2,}|\r?\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/webkit/WebClipboard;->PLAIN_TEXT_TO_ESCAPE:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 87
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-boolean v0, p0, Landroid/webkit/WebClipboard;->DEBUG:Z

    .line 75
    iput-object v1, p0, Landroid/webkit/WebClipboard;->mPasteEvent:Landroid/webkit/WebClipboard$IClipboardDataPasteEventImpl;

    .line 77
    iput-object v1, p0, Landroid/webkit/WebClipboard;->mPasteListener:Landroid/webkit/WebClipboard$OnPasteFromSelectionUIListener;

    .line 84
    iput v0, p0, Landroid/webkit/WebClipboard;->mViewWidth:I

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/WebClipboard;->mZoomFactor:F

    .line 91
    const-string v0, "clipboardEx"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/ClipboardExManager;

    iput-object v0, p0, Landroid/webkit/WebClipboard;->mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

    .line 94
    const-string v0, "webclipboard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clipservice: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/WebClipboard;->mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iput-object p1, p0, Landroid/webkit/WebClipboard;->mContext:Landroid/content/Context;

    .line 98
    new-instance v0, Landroid/webkit/WebClipboard$IClipboardDataPasteEventImpl;

    invoke-direct {v0, p0}, Landroid/webkit/WebClipboard$IClipboardDataPasteEventImpl;-><init>(Landroid/webkit/WebClipboard;)V

    iput-object v0, p0, Landroid/webkit/WebClipboard;->mPasteEvent:Landroid/webkit/WebClipboard$IClipboardDataPasteEventImpl;

    .line 100
    invoke-virtual {p0}, Landroid/webkit/WebClipboard;->createHandler()V

    .line 101
    return-void
.end method

.method static synthetic access$000(Landroid/webkit/WebClipboard;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/webkit/WebClipboard;->nativeInitPasteboardJni()V

    return-void
.end method

.method static synthetic access$100(Landroid/webkit/WebClipboard;Landroid/sec/clipboard/data/ClipboardData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Landroid/webkit/WebClipboard;->pasteClipBoardData(Landroid/sec/clipboard/data/ClipboardData;)V

    return-void
.end method

.method static synthetic access$200(Landroid/webkit/WebClipboard;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Landroid/webkit/WebClipboard;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private deleteDirectory(Ljava/io/File;)V
    .locals 5
    .parameter "path"

    .prologue
    .line 130
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteDirectory "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 132
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 133
    .local v0, files:[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 134
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 135
    aget-object v2, v0, v1

    invoke-direct {p0, v2}, Landroid/webkit/WebClipboard;->deleteDirectory(Ljava/io/File;)V

    .line 133
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 138
    :cond_0
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 142
    .end local v0           #files:[Ljava/io/File;
    .end local v1           #i:I
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 143
    return-void
.end method

.method private escapeCharacterToDisplay(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "text"

    .prologue
    const/16 v9, 0x20

    .line 496
    sget-object v6, Landroid/webkit/WebClipboard;->PLAIN_TEXT_TO_ESCAPE:Ljava/util/regex/Pattern;

    .line 497
    .local v6, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v6, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 498
    .local v3, match:Ljava/util/regex/Matcher;
    const/4 v5, 0x0

    .line 500
    .local v5, out:Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 502
    if-nez v5, :cond_0

    .line 503
    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5           #out:Ljava/lang/StringBuilder;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 504
    .restart local v5       #out:Ljava/lang/StringBuilder;
    :cond_0
    const/4 v1, 0x0

    .line 506
    .local v1, end:I
    :cond_1
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v7

    .line 507
    .local v7, start:I
    invoke-virtual {p1, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    .line 509
    invoke-virtual {p1, v7}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 510
    .local v0, c:I
    if-ne v0, v9, :cond_5

    .line 512
    const/4 v2, 0x1

    .local v2, i:I
    sub-int v4, v1, v7

    .local v4, n:I
    :goto_0
    if-ge v2, v4, :cond_2

    .line 513
    const-string v8, "&nbsp;"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 515
    :cond_2
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 525
    .end local v2           #i:I
    .end local v4           #n:I
    :cond_3
    :goto_1
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-nez v8, :cond_1

    .line 526
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 528
    const/4 v8, 0x0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 530
    .end local v0           #c:I
    .end local v1           #end:I
    .end local v7           #start:I
    :cond_4
    return-object p1

    .line 516
    .restart local v0       #c:I
    .restart local v1       #end:I
    .restart local v7       #start:I
    :cond_5
    const/16 v8, 0xd

    if-eq v0, v8, :cond_6

    const/16 v8, 0xa

    if-ne v0, v8, :cond_7

    .line 517
    :cond_6
    const-string v8, "<br>"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 518
    :cond_7
    const/16 v8, 0x3c

    if-ne v0, v8, :cond_8

    .line 519
    const-string v8, "&lt;"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 520
    :cond_8
    const/16 v8, 0x3e

    if-ne v0, v8, :cond_9

    .line 521
    const-string v8, "&gt;"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 522
    :cond_9
    const/16 v8, 0x26

    if-ne v0, v8, :cond_3

    .line 523
    const-string v8, "&amp;"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private giveFileUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "filePath"

    .prologue
    .line 152
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "giveFileUrl ent "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 153
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 154
    .local v1, mFile:Ljava/io/File;
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, fileURL:Ljava/lang/String;
    return-object v0
.end method

.method private makeHtmlFragmentForInsertedImage(Ljava/lang/String;)Ljava/lang/String;
    .locals 20
    .parameter "htmlFragment"

    .prologue
    .line 643
    const/4 v13, 0x0

    .line 645
    .local v13, result:Ljava/lang/String;
    const-string v16, "WebClipboard"

    const-string v17, "makeHtmlFragmentForInsertedImage"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    if-nez p1, :cond_0

    .line 648
    const-string v16, "WebClipboard"

    const-string v17, "makeHtmlFragmentForInsertedImage htmlFragment == null"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    const-string v16, ""

    .line 759
    :goto_0
    return-object v16

    .line 652
    :cond_0
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 654
    .local v8, options:Landroid/graphics/BitmapFactory$Options;
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 655
    .local v6, imageUri:Landroid/net/Uri;
    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 659
    .local v2, absoluteFilePath:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/webkit/WebClipboard;->getCloneFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 660
    .local v3, dstFilePath:Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 662
    .local v7, mFile:Ljava/io/File;
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 663
    .local v11, originalFile:Ljava/io/File;
    const-wide/32 v16, 0x100000

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v18

    cmp-long v16, v16, v18

    if-gtz v16, :cond_1

    .line 665
    const-string v16, "WebClipboard"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "####################### originalFile.length() : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v18

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    :cond_1
    const/4 v14, 0x0

    .line 671
    .local v14, src:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {v2, v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 680
    const-string v16, "WebClipboard"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "####################### htmlFragment : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget v0, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget v0, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    iget v10, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 683
    .local v10, originWidth:I
    iget v9, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 684
    .local v9, originHeight:I
    move-object/from16 v0, p0

    iget v15, v0, Landroid/webkit/WebClipboard;->mViewWidth:I

    .line 685
    .local v15, width:I
    mul-int v16, v9, v15

    div-int v5, v16, v10

    .line 687
    .local v5, height:I
    const-wide/32 v16, 0x100000

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v18

    cmp-long v16, v16, v18

    if-gtz v16, :cond_8

    .line 689
    const-string v16, "WebClipboard"

    const-string v17, "####################### htmlFragment : Big Data"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    if-eqz v14, :cond_3

    .line 694
    :try_start_1
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 696
    .local v12, outStream:Ljava/io/FileOutputStream;
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v16

    const-string v17, ".jpg"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v16

    if-gtz v16, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v16

    const-string v17, ".jpeg"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v16

    if-lez v16, :cond_6

    .line 698
    :cond_2
    const-string v16, "WebClipboard"

    const-string v17, "####################### htmlFragment : Bitmap.CompressFormat.JPEG"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    sget-object v16, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v17, 0x64

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v14, v0, v1, v12}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 700
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->flush()V

    .line 701
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 736
    .end local v12           #outStream:Ljava/io/FileOutputStream;
    :cond_3
    :goto_1
    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 740
    if-eqz v15, :cond_9

    .line 742
    if-le v15, v10, :cond_4

    .line 744
    move v15, v10

    .line 745
    move v5, v9

    .line 748
    :cond_4
    const-wide/16 v16, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebClipboard;->mZoomFactor:F

    move/from16 v18, v0

    const/high16 v19, 0x42c8

    div-float v18, v18, v19

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    cmpg-double v16, v16, v18

    if-gez v16, :cond_5

    .line 749
    mul-int/lit8 v16, v15, 0x64

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebClipboard;->mZoomFactor:F

    move/from16 v17, v0

    div-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v15, v0

    .line 750
    mul-int/lit8 v16, v5, 0x64

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebClipboard;->mZoomFactor:F

    move/from16 v17, v0

    div-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v5, v0

    .line 753
    :cond_5
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "<img src="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " width="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " height="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " />"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v16, v13

    .line 754
    goto/16 :goto_0

    .line 672
    .end local v5           #height:I
    .end local v9           #originHeight:I
    .end local v10           #originWidth:I
    .end local v15           #width:I
    :catch_0
    move-exception v4

    .line 673
    .local v4, e:Ljava/lang/OutOfMemoryError;
    const/4 v7, 0x0

    .line 674
    const/4 v11, 0x0

    .line 675
    const/4 v8, 0x0

    .line 677
    const-string v16, ""

    goto/16 :goto_0

    .line 703
    .end local v4           #e:Ljava/lang/OutOfMemoryError;
    .restart local v5       #height:I
    .restart local v9       #originHeight:I
    .restart local v10       #originWidth:I
    .restart local v12       #outStream:Ljava/io/FileOutputStream;
    .restart local v15       #width:I
    :cond_6
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v16

    const-string v17, "png"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v16

    if-lez v16, :cond_7

    .line 705
    const-string v16, "WebClipboard"

    const-string v17, "####################### htmlFragment : Bitmap.CompressFormat.PNG"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    sget-object v16, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v17, 0x64

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v14, v0, v1, v12}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 707
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->flush()V

    .line 708
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 718
    .end local v12           #outStream:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v4

    .line 719
    .local v4, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 720
    const-string v16, ""

    goto/16 :goto_0

    .line 712
    .end local v4           #e:Ljava/io/FileNotFoundException;
    .restart local v12       #outStream:Ljava/io/FileOutputStream;
    :cond_7
    const/16 v16, 0x1

    :try_start_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/webkit/WebClipboard;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_3

    .line 714
    const-string v16, "WebClipboard"

    const-string v17, "####################### makeHtmlFragmentForInsertedImage : copyFile Fail !!!"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    const-string v16, ""
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 721
    .end local v12           #outStream:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v4

    .line 722
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 723
    const-string v16, ""

    goto/16 :goto_0

    .line 729
    .end local v4           #e:Ljava/io/IOException;
    :cond_8
    const/16 v16, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/webkit/WebClipboard;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_3

    .line 731
    const-string v16, "WebClipboard"

    const-string v17, "####################### makeHtmlFragmentForInsertedImage : copyFile Fail !!!"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    const-string v16, ""

    goto/16 :goto_0

    .line 758
    :cond_9
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "<img src="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " />"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v16, v13

    .line 759
    goto/16 :goto_0
.end method

.method private native nativeInitPasteboardJni()V
.end method

.method private pasteClipBoardData(Landroid/sec/clipboard/data/ClipboardData;)V
    .locals 10
    .parameter "data"

    .prologue
    .line 587
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "pasteClipBoardData"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 588
    const/4 v4, 0x0

    .line 590
    .local v4, paste:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v0

    .line 592
    .local v0, dataFormat:I
    const/4 v7, 0x4

    if-ne v0, v7, :cond_3

    move-object v2, p1

    .line 593
    check-cast v2, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    .line 594
    .local v2, htmlData:Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;
    invoke-virtual {v2}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->GetHTMLFragment()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 626
    .end local v2           #htmlData:Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;
    :cond_0
    :goto_0
    if-eqz v4, :cond_2

    .line 627
    iget-boolean v7, p0, Landroid/webkit/WebClipboard;->DEBUG:Z

    if-eqz v7, :cond_1

    .line 628
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "pasteClipBoardData paste not NULL"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 630
    :cond_1
    iget-object v7, p0, Landroid/webkit/WebClipboard;->mPasteListener:Landroid/webkit/WebClipboard$OnPasteFromSelectionUIListener;

    invoke-interface {v7, v4, v0}, Landroid/webkit/WebClipboard$OnPasteFromSelectionUIListener;->onPaste(Ljava/lang/String;I)V

    .line 633
    :cond_2
    return-void

    .line 595
    :cond_3
    const/4 v7, 0x2

    if-ne v0, v7, :cond_5

    .line 596
    const-string v7, "WebClipboard"

    const-string v8, "pasteClipBoardData FORMAT_TEXT_ID"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, p1

    .line 597
    check-cast v5, Landroid/sec/clipboard/data/list/ClipboardDataText;

    .line 598
    .local v5, textData:Landroid/sec/clipboard/data/list/ClipboardDataText;
    invoke-virtual {v5}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 599
    .local v6, tmp_data_str:Ljava/lang/String;
    if-eqz v6, :cond_4

    .line 600
    invoke-direct {p0, v6}, Landroid/webkit/WebClipboard;->escapeCharacterToDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 604
    :goto_1
    iget-boolean v7, p0, Landroid/webkit/WebClipboard;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 605
    const-string v7, "WebClipboard"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "pasteClipBoardData FORMAT_TEXT_ID"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 603
    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    .line 608
    .end local v5           #textData:Landroid/sec/clipboard/data/list/ClipboardDataText;
    .end local v6           #tmp_data_str:Ljava/lang/String;
    :cond_5
    const/4 v7, 0x3

    if-ne v0, v7, :cond_0

    .line 609
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "pasteClipBoardData FORMAT_BITMAP_ID "

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object v3, p1

    .line 610
    check-cast v3, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    .line 612
    .local v3, imageData:Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    invoke-virtual {v3}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->GetBitmapPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Landroid/webkit/WebClipboard;->giveFileUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 615
    .local v1, fileUrl:Ljava/lang/String;
    iget-boolean v7, p0, Landroid/webkit/WebClipboard;->DEBUG:Z

    if-eqz v7, :cond_6

    .line 616
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "pasteClipBoardData fileUrl "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 618
    :cond_6
    move-object v4, v1

    .line 619
    iget-boolean v7, p0, Landroid/webkit/WebClipboard;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 620
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "pasteClipBoardData paste fileUrl "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private saveBitampTemporary(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 12
    .parameter "bitmapForSave"

    .prologue
    .line 209
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v10, "saveBitampTemporary ent "

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 211
    new-instance v0, Ljava/io/File;

    const-string v9, "/sdcard/EmailTempImage/"

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 213
    .local v0, HtmlComposerTempDirectory:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 215
    new-instance v7, Ljava/util/Random;

    invoke-direct {v7}, Ljava/util/Random;-><init>()V

    .line 216
    .local v7, randNum:Ljava/util/Random;
    const/16 v9, 0x1f4

    invoke-virtual {v7, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    .line 217
    .local v8, randNumber:I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/sdcard/EmailTempImage/file_temp_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".jpg"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 219
    .local v2, filePath:Ljava/lang/String;
    iget-boolean v9, p0, Landroid/webkit/WebClipboard;->DEBUG:Z

    if-eqz v9, :cond_0

    .line 220
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "saveBitampTemporary filePath "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 223
    :cond_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 225
    .local v4, mFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 226
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 229
    :cond_1
    const/4 v5, 0x0

    .line 232
    .local v5, out:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    .end local v5           #out:Ljava/io/FileOutputStream;
    .local v6, out:Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v10, 0x64

    invoke-virtual {p1, v9, v10, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 238
    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 239
    .local v3, fileURL:Ljava/lang/String;
    iget-boolean v9, p0, Landroid/webkit/WebClipboard;->DEBUG:Z

    if-eqz v9, :cond_2

    .line 240
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "saveBitampTemporary fileUrl "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 243
    :cond_2
    if-eqz v6, :cond_3

    .line 244
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_3
    :goto_0
    move-object v5, v6

    .line 248
    .end local v3           #fileURL:Ljava/lang/String;
    .end local v6           #out:Ljava/io/FileOutputStream;
    .restart local v5       #out:Ljava/io/FileOutputStream;
    :goto_1
    return-object v3

    .line 234
    :catch_0
    move-exception v1

    .line 235
    .local v1, e:Ljava/io/FileNotFoundException;
    :goto_2
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 236
    const/4 v3, 0x0

    goto :goto_1

    .line 245
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v3       #fileURL:Ljava/lang/String;
    .restart local v6       #out:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    .line 246
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 234
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #fileURL:Ljava/lang/String;
    :catch_2
    move-exception v1

    move-object v5, v6

    .end local v6           #out:Ljava/io/FileOutputStream;
    .restart local v5       #out:Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method private saveBitampTemporary(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "imageFilePath"

    .prologue
    .line 164
    :try_start_0
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "saveBitampTemporary String ent "

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 166
    iget-boolean v8, p0, Landroid/webkit/WebClipboard;->DEBUG:Z

    if-eqz v8, :cond_0

    .line 167
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "saveBitmapTemporary imageFilePath: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 170
    :cond_0
    invoke-virtual {p0, p1}, Landroid/webkit/WebClipboard;->getCloneFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 172
    .local v7, tmpFilePath:Ljava/lang/String;
    iget-boolean v8, p0, Landroid/webkit/WebClipboard;->DEBUG:Z

    if-eqz v8, :cond_1

    .line 173
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "saveBitampTemporary String tmpFilePath "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 177
    :cond_1
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 178
    .local v4, inputFile:Ljava/io/File;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 180
    .local v6, outputFile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 182
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 186
    :cond_2
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 187
    .local v3, in:Ljava/io/FileReader;
    new-instance v5, Ljava/io/FileWriter;

    invoke-direct {v5, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 190
    .local v5, out:Ljava/io/FileWriter;
    :goto_0
    invoke-virtual {v3}, Ljava/io/FileReader;->read()I

    move-result v0

    .local v0, c:I
    const/4 v8, -0x1

    if-eq v0, v8, :cond_3

    .line 191
    invoke-virtual {v5, v0}, Ljava/io/FileWriter;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 200
    .end local v0           #c:I
    .end local v3           #in:Ljava/io/FileReader;
    .end local v4           #inputFile:Ljava/io/File;
    .end local v5           #out:Ljava/io/FileWriter;
    .end local v6           #outputFile:Ljava/io/File;
    .end local v7           #tmpFilePath:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 201
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 202
    const/4 v2, 0x0

    .end local v1           #e:Ljava/io/IOException;
    :goto_1
    return-object v2

    .line 193
    .restart local v0       #c:I
    .restart local v3       #in:Ljava/io/FileReader;
    .restart local v4       #inputFile:Ljava/io/File;
    .restart local v5       #out:Ljava/io/FileWriter;
    .restart local v6       #outputFile:Ljava/io/File;
    .restart local v7       #tmpFilePath:Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    .line 194
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V

    .line 196
    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 198
    .local v2, fileURL:Ljava/lang/String;
    goto :goto_1
.end method


# virtual methods
.method public copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "src"
    .parameter "dst"

    .prologue
    const/4 v5, 0x0

    .line 767
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 768
    .local v3, source:Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 770
    .local v4, target:Ljava/io/FileOutputStream;
    const/16 v6, 0x400

    new-array v0, v6, [B

    .line 771
    .local v0, buffer:[B
    const/4 v2, 0x0

    .line 772
    .local v2, i:I
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    const/4 v6, -0x1

    if-eq v2, v6, :cond_0

    .line 773
    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 782
    .end local v0           #buffer:[B
    .end local v2           #i:I
    .end local v3           #source:Ljava/io/FileInputStream;
    .end local v4           #target:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 783
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 787
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :goto_1
    return v5

    .line 775
    .restart local v0       #buffer:[B
    .restart local v2       #i:I
    .restart local v3       #source:Ljava/io/FileInputStream;
    .restart local v4       #target:Ljava/io/FileOutputStream;
    :cond_0
    if-eqz v3, :cond_1

    .line 776
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 778
    :cond_1
    if-eqz v4, :cond_2

    .line 779
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 781
    :cond_2
    const/4 v5, 0x1

    goto :goto_1

    .line 785
    .end local v0           #buffer:[B
    .end local v2           #i:I
    .end local v3           #source:Ljava/io/FileInputStream;
    .end local v4           #target:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    .line 786
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public declared-synchronized createHandler()V
    .locals 1

    .prologue
    .line 113
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebClipboard;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Landroid/webkit/WebClipboard$1;

    invoke-direct {v0, p0}, Landroid/webkit/WebClipboard$1;-><init>(Landroid/webkit/WebClipboard;)V

    iput-object v0, p0, Landroid/webkit/WebClipboard;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    :cond_0
    monitor-exit p0

    return-void

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public deleteTempDirectory()V
    .locals 3

    .prologue
    .line 146
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "deleteTempDirectory"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 147
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/EmailTempImage/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 148
    .local v0, HtmlComposerTempDirectory:Ljava/io/File;
    invoke-direct {p0, v0}, Landroid/webkit/WebClipboard;->deleteDirectory(Ljava/io/File;)V

    .line 149
    return-void
.end method

.method public dismissClipboardUI()V
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Landroid/webkit/WebClipboard;->mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

    invoke-virtual {v0}, Landroid/sec/clipboard/ClipboardExManager;->dismissUIDataDialog()V

    .line 536
    return-void
.end method

.method public getCloneFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "filePath"

    .prologue
    .line 256
    iget-boolean v5, p0, Landroid/webkit/WebClipboard;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 257
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCloneFilePath filePath"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 259
    :cond_0
    if-nez p1, :cond_2

    .line 261
    const/4 v2, 0x0

    .line 289
    :cond_1
    :goto_0
    return-object v2

    .line 265
    :cond_2
    new-instance v0, Ljava/io/File;

    const-string v5, "/sdcard/EmailTempImage/"

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 267
    .local v0, HtmlComposerTempDirectory:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 270
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 271
    .local v3, inputFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 272
    .local v1, fileName:Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 274
    const-string v5, " "

    const-string v6, "_"

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 277
    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 279
    move-object v4, v1

    .line 280
    .local v4, tmp:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 283
    .end local v4           #tmp:Ljava/lang/String;
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/sdcard/EmailTempImage/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 285
    .local v2, fullFilePath:Ljava/lang/String;
    iget-boolean v5, p0, Landroid/webkit/WebClipboard;->DEBUG:Z

    if-eqz v5, :cond_1

    .line 286
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCloneFilePath String filePath "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getHTML()Ljava/lang/String;
    .locals 14

    .prologue
    .line 352
    const-string v11, "WebClipboard"

    const-string v12, "getHTML enter"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v11, p0, Landroid/webkit/WebClipboard;->mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

    iget-object v12, p0, Landroid/webkit/WebClipboard;->mContext:Landroid/content/Context;

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Landroid/sec/clipboard/ClipboardExManager;->getData(Landroid/content/Context;I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v1

    .line 355
    .local v1, data:Landroid/sec/clipboard/data/ClipboardData;
    const/4 v3, 0x0

    .line 357
    .local v3, data_str:Ljava/lang/String;
    const/4 v2, -0x1

    .line 359
    .local v2, dataFormat:I
    if-eqz v1, :cond_0

    .line 360
    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v2

    .line 363
    :cond_0
    const/4 v11, 0x4

    if-ne v2, v11, :cond_4

    move-object v6, v1

    .line 364
    check-cast v6, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    .line 365
    .local v6, htmlData:Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;
    invoke-virtual {v6}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->GetHTMLFragment()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 366
    const-string v11, "(?i)(?:(l|L)(i|I)(n|N)(e|E))(-)(h|H)(e|E)(i|I)(g|G)(h|H)(t|T)[\\s]*[\\=\\:][\\s]*([a-zA-Z]+|[0-9]+([a-zA-Z]+|%)|[0-9]+((.)[0-9]+|))[;\\s]?"

    const-string v12, ""

    invoke-virtual {v3, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 372
    :try_start_0
    const-string v11, "<p"

    invoke-virtual {v3, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_1

    .line 374
    const-string v11, "<p"

    const-string v12, "<span"

    invoke-virtual {v3, v11, v12}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 376
    .local v0, b:Ljava/lang/StringBuilder;
    const-string v11, "/p>"

    invoke-virtual {v3, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    const-string v12, "/p>"

    invoke-virtual {v3, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    add-int/lit8 v12, v12, 0x3

    const-string v13, "/span>"

    invoke-virtual {v0, v11, v12, v13}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 379
    .end local v0           #b:Ljava/lang/StringBuilder;
    :cond_1
    const-string v11, "<div"

    invoke-virtual {v3, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_2

    .line 381
    const-string v11, "<div"

    const-string v12, "<span"

    invoke-virtual {v3, v11, v12}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 383
    .restart local v0       #b:Ljava/lang/StringBuilder;
    const-string v11, "/div>"

    invoke-virtual {v3, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    const-string v12, "/div>"

    invoke-virtual {v3, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    add-int/lit8 v12, v12, 0x5

    const-string v13, "/span>"

    invoke-virtual {v0, v11, v12, v13}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 425
    .end local v0           #b:Ljava/lang/StringBuilder;
    .end local v6           #htmlData:Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;
    :cond_2
    :goto_0
    iget-boolean v11, p0, Landroid/webkit/WebClipboard;->DEBUG:Z

    if-eqz v11, :cond_3

    .line 426
    const-string v11, "ClipboardEx"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getHTML:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object v11, v3

    .line 429
    :goto_1
    return-object v11

    .line 386
    .restart local v6       #htmlData:Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;
    :catch_0
    move-exception v4

    .line 387
    .local v4, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v4}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 388
    const-string v11, ""

    goto :goto_1

    .line 390
    .end local v4           #e:Ljava/lang/OutOfMemoryError;
    .end local v6           #htmlData:Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;
    :cond_4
    const/4 v11, 0x2

    if-ne v2, v11, :cond_6

    .line 391
    const-string v11, "WebClipboard"

    const-string v12, "getHTML FORMAT_TEXT_ID"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v1

    .line 392
    check-cast v9, Landroid/sec/clipboard/data/list/ClipboardDataText;

    .line 393
    .local v9, textData:Landroid/sec/clipboard/data/list/ClipboardDataText;
    invoke-virtual {v9}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 394
    .local v10, tmp_data_str:Ljava/lang/String;
    if-eqz v10, :cond_5

    .line 395
    invoke-direct {p0, v10}, Landroid/webkit/WebClipboard;->escapeCharacterToDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 399
    :goto_2
    iget-boolean v11, p0, Landroid/webkit/WebClipboard;->DEBUG:Z

    if-eqz v11, :cond_2

    .line 400
    const-string v11, "WebClipboard"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getHTML FORMAT_TEXT_ID"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 398
    :cond_5
    const-string v3, ""

    goto :goto_2

    .line 402
    .end local v9           #textData:Landroid/sec/clipboard/data/list/ClipboardDataText;
    .end local v10           #tmp_data_str:Ljava/lang/String;
    :cond_6
    const/4 v11, 0x3

    if-ne v2, v11, :cond_9

    .line 403
    const/4 v8, 0x0

    .line 404
    .local v8, paste:Ljava/lang/String;
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v12, "pasteClipBoardData FORMAT_BITMAP_ID "

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object v7, v1

    .line 405
    check-cast v7, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    .line 407
    .local v7, imageData:Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    invoke-virtual {v7}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->GetBitmapPath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Landroid/webkit/WebClipboard;->giveFileUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 410
    .local v5, fileUrl:Ljava/lang/String;
    iget-boolean v11, p0, Landroid/webkit/WebClipboard;->DEBUG:Z

    if-eqz v11, :cond_7

    .line 411
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "pasteClipBoardData fileUrl "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 413
    :cond_7
    move-object v8, v5

    .line 414
    iget-boolean v11, p0, Landroid/webkit/WebClipboard;->DEBUG:Z

    if-eqz v11, :cond_8

    .line 415
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "pasteClipBoardData paste fileUrl "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 419
    :cond_8
    invoke-direct {p0, v8}, Landroid/webkit/WebClipboard;->makeHtmlFragmentForInsertedImage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 420
    goto/16 :goto_0

    .line 422
    .end local v5           #fileUrl:Ljava/lang/String;
    .end local v7           #imageData:Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    .end local v8           #paste:Ljava/lang/String;
    :cond_9
    const-string v11, ""

    goto/16 :goto_1
.end method

.method public getHTMLForCheckingSize()Ljava/lang/String;
    .locals 13

    .prologue
    .line 434
    iget-object v10, p0, Landroid/webkit/WebClipboard;->mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

    iget-object v11, p0, Landroid/webkit/WebClipboard;->mContext:Landroid/content/Context;

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/sec/clipboard/ClipboardExManager;->getData(Landroid/content/Context;I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    .line 437
    .local v0, data:Landroid/sec/clipboard/data/ClipboardData;
    const/4 v1, -0x1

    .line 439
    .local v1, dataFormat:I
    if-eqz v0, :cond_0

    .line 440
    invoke-virtual {v0}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v1

    .line 443
    :cond_0
    const/4 v10, 0x4

    if-ne v1, v10, :cond_3

    move-object v5, v0

    .line 444
    check-cast v5, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    .line 445
    .local v5, htmlData:Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;
    invoke-virtual {v5}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->GetHTMLFragment()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 479
    .end local v5           #htmlData:Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;
    .local v2, data_str:Ljava/lang/String;
    :cond_1
    :goto_0
    iget-boolean v10, p0, Landroid/webkit/WebClipboard;->DEBUG:Z

    if-eqz v10, :cond_2

    .line 480
    const-string v10, "ClipboardEx"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getHTML:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    .end local v2           #data_str:Ljava/lang/String;
    :cond_2
    :goto_1
    return-object v2

    .line 446
    :cond_3
    const/4 v10, 0x2

    if-ne v1, v10, :cond_5

    .line 447
    const-string v10, "WebClipboard"

    const-string v11, "getHTMLForCheckingSize FORMAT_TEXT_ID"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v0

    .line 448
    check-cast v8, Landroid/sec/clipboard/data/list/ClipboardDataText;

    .line 449
    .local v8, textData:Landroid/sec/clipboard/data/list/ClipboardDataText;
    invoke-virtual {v8}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 450
    .local v9, tmp_data_str:Ljava/lang/String;
    if-eqz v9, :cond_4

    .line 451
    invoke-direct {p0, v9}, Landroid/webkit/WebClipboard;->escapeCharacterToDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 455
    .restart local v2       #data_str:Ljava/lang/String;
    :goto_2
    iget-boolean v10, p0, Landroid/webkit/WebClipboard;->DEBUG:Z

    if-eqz v10, :cond_1

    .line 456
    const-string v10, "WebClipboard"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getHTMLForCheckingSize FORMAT_TEXT_ID"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 454
    .end local v2           #data_str:Ljava/lang/String;
    :cond_4
    const-string v2, ""

    .restart local v2       #data_str:Ljava/lang/String;
    goto :goto_2

    .line 458
    .end local v2           #data_str:Ljava/lang/String;
    .end local v8           #textData:Landroid/sec/clipboard/data/list/ClipboardDataText;
    .end local v9           #tmp_data_str:Ljava/lang/String;
    :cond_5
    const/4 v10, 0x3

    if-ne v1, v10, :cond_6

    .line 459
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, "getHTML bitmap "

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object v6, v0

    .line 460
    check-cast v6, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    .line 463
    .local v6, imageData:Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    invoke-virtual {v6}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->GetBitmapPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Landroid/webkit/WebClipboard;->getCloneFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 465
    .local v3, filePath:Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 466
    .local v7, mFile:Ljava/io/File;
    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 468
    .local v4, fileUrl:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "<img src="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " />"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 469
    .restart local v2       #data_str:Ljava/lang/String;
    iget-boolean v10, p0, Landroid/webkit/WebClipboard;->DEBUG:Z

    if-eqz v10, :cond_1

    .line 470
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getHTML bitmap = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 476
    .end local v2           #data_str:Ljava/lang/String;
    .end local v3           #filePath:Ljava/lang/String;
    .end local v4           #fileUrl:Ljava/lang/String;
    .end local v6           #imageData:Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    .end local v7           #mFile:Ljava/io/File;
    :cond_6
    const-string v2, ""

    goto/16 :goto_1
.end method

.method public getText()Ljava/lang/String;
    .locals 4

    .prologue
    .line 330
    iget-object v1, p0, Landroid/webkit/WebClipboard;->mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

    iget-object v2, p0, Landroid/webkit/WebClipboard;->mContext:Landroid/content/Context;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/sec/clipboard/ClipboardExManager;->getData(Landroid/content/Context;I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/data/list/ClipboardDataText;

    .line 332
    .local v0, textData:Landroid/sec/clipboard/data/list/ClipboardDataText;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 333
    iget-boolean v1, p0, Landroid/webkit/WebClipboard;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 334
    const-string v1, "ClipboardEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getText:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_0
    invoke-virtual {v0}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 339
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasData()Z
    .locals 5

    .prologue
    .line 299
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/sec/enterprise/RestrictionPolicy;

    move-result-object v1

    .line 300
    .local v1, rp:Landroid/sec/enterprise/RestrictionPolicy;
    invoke-virtual {v1}, Landroid/sec/enterprise/RestrictionPolicy;->isClipboardShareAllowed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 301
    iget-object v2, p0, Landroid/webkit/WebClipboard;->mContext:Landroid/content/Context;

    const-string v3, "clipboard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 302
    .local v0, clip:Landroid/content/ClipboardManager;
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v2

    .line 306
    .end local v0           #clip:Landroid/content/ClipboardManager;
    :goto_0
    return v2

    :cond_0
    iget-object v2, p0, Landroid/webkit/WebClipboard;->mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

    iget-object v3, p0, Landroid/webkit/WebClipboard;->mContext:Landroid/content/Context;

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Landroid/sec/clipboard/ClipboardExManager;->hasData(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/webkit/WebClipboard;->mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

    iget-object v3, p0, Landroid/webkit/WebClipboard;->mContext:Landroid/content/Context;

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/sec/clipboard/ClipboardExManager;->hasData(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/webkit/WebClipboard;->mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

    iget-object v3, p0, Landroid/webkit/WebClipboard;->mContext:Landroid/content/Context;

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Landroid/sec/clipboard/ClipboardExManager;->hasData(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public initWebClipboard()V
    .locals 3

    .prologue
    .line 105
    iget-object v0, p0, Landroid/webkit/WebClipboard;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/WebClipboard;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 106
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Landroid/webkit/WebClipboard;->mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

    invoke-virtual {v0}, Landroid/sec/clipboard/ClipboardExManager;->isShowing()Z

    move-result v0

    return v0
.end method

.method public launchClipboardUI()V
    .locals 4

    .prologue
    .line 540
    iget-object v0, p0, Landroid/webkit/WebClipboard;->mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

    iget-object v1, p0, Landroid/webkit/WebClipboard;->mContext:Landroid/content/Context;

    const/4 v2, 0x4

    iget-object v3, p0, Landroid/webkit/WebClipboard;->mPasteEvent:Landroid/webkit/WebClipboard$IClipboardDataPasteEventImpl;

    invoke-virtual {v0, v1, v2, v3}, Landroid/sec/clipboard/ClipboardExManager;->getData(Landroid/content/Context;ILandroid/sec/clipboard/IClipboardDataPasteEvent;)Z

    .line 541
    return-void
.end method

.method public setDataToClipboard(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "format"
    .parameter "data"

    .prologue
    .line 314
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " setDataToClipboard "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 317
    :try_start_0
    const-string v1, "TEXT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 318
    invoke-virtual {p0, p2}, Landroid/webkit/WebClipboard;->setText(Ljava/lang/String;)V

    .line 326
    :cond_0
    :goto_0
    return-void

    .line 319
    :cond_1
    const-string v1, "HTML"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 320
    invoke-virtual {p0, p2}, Landroid/webkit/WebClipboard;->setHTML(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 322
    :catch_0
    move-exception v0

    .line 323
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ClipboardEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDataToClipboard: Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setHTML(Ljava/lang/String;)V
    .locals 4
    .parameter "charSeq"

    .prologue
    .line 487
    new-instance v0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    invoke-direct {v0}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;-><init>()V

    .line 488
    .local v0, htmlData:Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;
    invoke-virtual {v0, p1}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->SetHTMLFragment(Ljava/lang/CharSequence;)Z

    .line 489
    iget-object v1, p0, Landroid/webkit/WebClipboard;->mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

    iget-object v2, p0, Landroid/webkit/WebClipboard;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Landroid/sec/clipboard/ClipboardExManager;->setData(Landroid/content/Context;Landroid/sec/clipboard/data/ClipboardData;)Z

    .line 490
    iget-boolean v1, p0, Landroid/webkit/WebClipboard;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 491
    const-string v1, "ClipboardEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setHTML:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :cond_0
    return-void
.end method

.method setPasteListener(Landroid/webkit/WebClipboard$OnPasteFromSelectionUIListener;)V
    .locals 0
    .parameter "pasteListener"

    .prologue
    .line 294
    iput-object p1, p0, Landroid/webkit/WebClipboard;->mPasteListener:Landroid/webkit/WebClipboard$OnPasteFromSelectionUIListener;

    .line 295
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 4
    .parameter "charSeq"

    .prologue
    .line 343
    new-instance v0, Landroid/sec/clipboard/data/list/ClipboardDataText;

    invoke-direct {v0}, Landroid/sec/clipboard/data/list/ClipboardDataText;-><init>()V

    .line 344
    .local v0, textData:Landroid/sec/clipboard/data/list/ClipboardDataText;
    invoke-virtual {v0, p1}, Landroid/sec/clipboard/data/list/ClipboardDataText;->SetText(Ljava/lang/CharSequence;)Z

    .line 345
    iget-object v1, p0, Landroid/webkit/WebClipboard;->mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

    iget-object v2, p0, Landroid/webkit/WebClipboard;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Landroid/sec/clipboard/ClipboardExManager;->setData(Landroid/content/Context;Landroid/sec/clipboard/data/ClipboardData;)Z

    .line 346
    iget-boolean v1, p0, Landroid/webkit/WebClipboard;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 347
    const-string v1, "ClipboardEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setText:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_0
    return-void
.end method

.method public setWidthForCopiedImage(I)V
    .locals 0
    .parameter "viewWidth"

    .prologue
    .line 792
    iput p1, p0, Landroid/webkit/WebClipboard;->mViewWidth:I

    .line 793
    return-void
.end method

.method public setZoomFactorForPasting(F)V
    .locals 0
    .parameter "factor"

    .prologue
    .line 796
    iput p1, p0, Landroid/webkit/WebClipboard;->mZoomFactor:F

    .line 797
    return-void
.end method

.method public updateClipboardUI()V
    .locals 3

    .prologue
    .line 544
    iget-object v0, p0, Landroid/webkit/WebClipboard;->mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

    const/4 v1, 0x4

    iget-object v2, p0, Landroid/webkit/WebClipboard;->mPasteEvent:Landroid/webkit/WebClipboard$IClipboardDataPasteEventImpl;

    invoke-virtual {v0, v1, v2}, Landroid/sec/clipboard/ClipboardExManager;->updateData(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    .line 545
    return-void
.end method
