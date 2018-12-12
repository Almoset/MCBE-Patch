# MCBE-Patch
Patch of Minecraft: Bedrock Edition for Android

## com.mojang.minecraftpe.MainActivity

onCreate().prologue

```jasmin
invoke-static {p0}, Lcn/wode490390/mcpe/RemoveVerification;->removeVerification(Landroid/content/Context;)V
```

## com.googleplay.licensing.ServerManagedPolicy

allowAccess().prologue

`const 0x0` (false) -> `const 0x1` (true)
