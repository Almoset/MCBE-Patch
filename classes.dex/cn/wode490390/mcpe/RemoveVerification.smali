.class public Lcn/wode490390/mcpe/RemoveVerification;
.super Ljava/lang/Object;
.source "RemoveVerification.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# static fields
.field private static final GET_SIGNATURES:I = 0x40


# instance fields
.field private appPkgName:Ljava/lang/String;

.field private base:Ljava/lang/Object;

.field private sign:[[B


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcn/wode490390/mcpe/RemoveVerification;->appPkgName:Ljava/lang/String;

    return-void
.end method

.method private hook(Landroid/content/Context;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 35
    :try_start_1
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    const-string v3, "AQAAA3AwggNsMIICVKADAgECAgROPuATMA0GCSqGSIb3DQEBBQUAMHgxCzAJBgNVBAYTAlNFMRkw\nFwYDVQQIDBBTdG9ja2hvbG1zIEzigJ5uMRIwEAYDVQQHEwlTdG9ja2hvbG0xEjAQBgNVBAoTCU1v\namFuZyBBQjESMBAGA1UECxMJTW9qYW5nIEFCMRIwEAYDVQQDEwlNb2phbmcgQUIwHhcNMTEwODA3\nMTg1NzIzWhcNMzgxMjIzMTg1NzIzWjB4MQswCQYDVQQGEwJTRTEZMBcGA1UECAwQU3RvY2tob2xt\ncyBM4oCebjESMBAGA1UEBxMJU3RvY2tob2xtMRIwEAYDVQQKEwlNb2phbmcgQUIxEjAQBgNVBAsT\nCU1vamFuZyBBQjESMBAGA1UEAxMJTW9qYW5nIEFCMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIB\nCgKCAQEAhD5zm6F0AVIE/N3rl8MQ1v/HAbQI59Oy/EME8RQp99hORYmnWPx2HufFQ4K4sZQYrqGq\n5pxFXvxGqpWnKLUvCtxQbTFbs3KHaoMuDYtLSjfy1XtAPB6O4nshh1OsNoTEy3rlU7TNsMFHK2Nu\nZZuZKqIWvEEIcif8A83n+i20yHcU4D7ZN1/610Uu92ccT0Ls3K4SH8oDb7LKMd6O/ahllbngdNx0\nbKv0wLQfj4vyKhzX7HACDKNuigEOeuoOFa2o33YbxqHCbnSp+kXxdgwlynR0uz/udFgm5BgCtufp\niRrPJShz7JtYIy0rk3CzWy7s4oGZZlxQVtPJx7zwDnZg9wIDAQABMA0GCSqGSIb3DQEBBQUAA4IB\nAQAbeYC/oCRcgawXwI3hV9Cr0EcIPDOX4t9+9f320t2U1LZEJuf+o3O7hwehRx4jk0FOUPTjPlld\nTSZ0Ysm2KW6FFSQw14O98ksP64m0xpvRuBF6hjCXBk+OdqUM547WkdRRqNiyh81vwXgmleUyNuPg\nUyRcylMLhBmWgO0AG2PD2RJg010ZIvJQ8h3mk9VEukO+hWOIbvR62b6wcPRcmsRxe+AGF6dzQajz\nMBtT+F1Nbep4sThFmvMipQWTuUx30ElO0ejRPmtumztSDPgXi9TEbbv6XQwe8hJJWg1+u7XEF/Jw\nSfn2NW4NLAV5a5jWr9N/qJl/2sanTavjo4fddiXG\n"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 36
    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    new-array v2, v2, [[B

    .line 37
    :goto_1a
    array-length v3, v2

    if-lt v0, v3, :cond_82

    .line 41
    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 42
    const-string v0, "currentActivityThread"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v0, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Object;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 43
    const-string v3, "sPackageManager"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 44
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 45
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 46
    const-string v4, "android.content.pm.IPackageManager"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 47
    iput-object v3, p0, Lcn/wode490390/mcpe/RemoveVerification;->base:Ljava/lang/Object;

    .line 48
    iput-object v2, p0, Lcn/wode490390/mcpe/RemoveVerification;->sign:[[B

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/wode490390/mcpe/RemoveVerification;->appPkgName:Ljava/lang/String;

    .line 50
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3, p0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v2

    .line 51
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "mPM"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 54
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 55
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 56
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "PmsHook success."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 59
    :goto_81
    return-void

    .line 38
    :cond_82
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    new-array v3, v3, [B

    aput-object v3, v2, v0

    .line 39
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8f} :catch_92

    .line 37
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 56
    :catch_92
    move-exception v0

    .line 58
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "PmsHook failed."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_81
.end method

.method public static removeVerification(Landroid/content/Context;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 16
    new-instance v1, Lcn/wode490390/mcpe/RemoveVerification;

    invoke-direct {v1}, Lcn/wode490390/mcpe/RemoveVerification;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lcn/wode490390/mcpe/RemoveVerification;->hook(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 19
    const-string v0, "getPackageInfo"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 20
    aget-object v0, p3, v2

    check-cast v0, Ljava/lang/String;

    .line 21
    const/4 v1, 0x1

    aget-object v1, p3, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_4c

    iget-object v1, p0, Lcn/wode490390/mcpe/RemoveVerification;->appPkgName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 22
    iget-object v0, p0, Lcn/wode490390/mcpe/RemoveVerification;->base:Ljava/lang/Object;

    invoke-virtual {p2, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 23
    iget-object v1, p0, Lcn/wode490390/mcpe/RemoveVerification;->sign:[[B

    array-length v1, v1

    new-array v1, v1, [Landroid/content/pm/Signature;

    iput-object v1, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move v1, v2

    .line 24
    :goto_36
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v2, v2

    if-lt v1, v2, :cond_3c

    .line 30
    :goto_3b
    return-object v0

    .line 25
    :cond_3c
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    new-instance v3, Landroid/content/pm/Signature;

    iget-object v4, p0, Lcn/wode490390/mcpe/RemoveVerification;->sign:[[B

    aget-object v4, v4, v1

    invoke-direct {v3, v4}, Landroid/content/pm/Signature;-><init>([B)V

    aput-object v3, v2, v1

    .line 24
    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    .line 30
    :cond_4c
    iget-object v0, p0, Lcn/wode490390/mcpe/RemoveVerification;->base:Ljava/lang/Object;

    invoke-virtual {p2, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3b
.end method
