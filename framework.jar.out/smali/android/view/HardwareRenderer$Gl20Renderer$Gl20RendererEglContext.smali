.class Landroid/view/HardwareRenderer$Gl20Renderer$Gl20RendererEglContext;
.super Landroid/opengl/ManagedEGLContext;
.source "HardwareRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/HardwareRenderer$Gl20Renderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Gl20RendererEglContext"
.end annotation


# instance fields
.field final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 1324
    invoke-direct {p0, p1}, Landroid/opengl/ManagedEGLContext;-><init>(Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 1321
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/view/HardwareRenderer$Gl20Renderer$Gl20RendererEglContext;->mHandler:Landroid/os/Handler;

    .line 1325
    return-void
.end method


# virtual methods
.method public onTerminate(Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 6
    .parameter "eglContext"

    .prologue
    .line 1330
    iget-object v0, p0, Landroid/view/HardwareRenderer$Gl20Renderer$Gl20RendererEglContext;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1331
    iget-object v0, p0, Landroid/view/HardwareRenderer$Gl20Renderer$Gl20RendererEglContext;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/view/HardwareRenderer$Gl20Renderer$Gl20RendererEglContext$1;

    invoke-direct {v1, p0, p1}, Landroid/view/HardwareRenderer$Gl20Renderer$Gl20RendererEglContext$1;-><init>(Landroid/view/HardwareRenderer$Gl20Renderer$Gl20RendererEglContext;Ljavax/microedition/khronos/egl/EGLContext;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1364
    :goto_0
    return-void

    .line 1340
    :cond_0
    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEglLock:[Ljava/lang/Object;

    monitor-enter v1

    .line 1341
    :try_start_0
    sget-object v0, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    if-nez v0, :cond_1

    monitor-exit v1

    goto :goto_0

    .line 1363
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1343
    :cond_1
    :try_start_1
    sget-object v0, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-static {v0}, Lcom/google/android/gles_jni/EGLImpl;->getInitCount(Ljavax/microedition/khronos/egl/EGLDisplay;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 1344
    #calls: Landroid/view/HardwareRenderer$Gl20Renderer;->usePbufferSurface(Ljavax/microedition/khronos/egl/EGLContext;)V
    invoke-static {p1}, Landroid/view/HardwareRenderer$Gl20Renderer;->access$300(Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 1345
    invoke-static {}, Landroid/view/GLES20Canvas;->terminateCaches()V

    .line 1347
    sget-object v0, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v2, p1}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 1348
    sget-object v0, Landroid/view/HardwareRenderer$GlRenderer;->sEglContextStorage:Ljava/lang/ThreadLocal;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1349
    sget-object v0, Landroid/view/HardwareRenderer$GlRenderer;->sEglContextStorage:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 1351
    sget-object v0, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-static {}, Landroid/view/HardwareRenderer$Gl20Renderer;->access$400()Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 1352
    sget-object v0, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v2, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 1355
    sget-object v0, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglReleaseThread()Z

    .line 1356
    sget-object v0, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 1358
    const/4 v0, 0x0

    sput-object v0, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 1359
    const/4 v0, 0x0

    sput-object v0, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 1360
    const/4 v0, 0x0

    sput-object v0, Landroid/view/HardwareRenderer$GlRenderer;->sEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 1361
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/view/HardwareRenderer$Gl20Renderer;->access$402(Ljavax/microedition/khronos/egl/EGLSurface;)Ljavax/microedition/khronos/egl/EGLSurface;

    .line 1363
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
