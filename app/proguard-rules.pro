# Keep the app's own classes: JNI entry points and reflection (SDL, ImGui, the game bridge) must
# stay intact. Minification here only removes truly unused library code; the app side is small.
-keep class com.shiinobu.basara.** { *; }
-keep class org.libsdl.app.** { *; }
-keep class android.** { *; }
-keep class androidx.** { *; }

-keepattributes Signature, InnerClasses, EnclosingMethod, *Annotation*, Exceptions
-keepattributes SourceFile, LineNumberTable

# Native methods and JNI callbacks.
-keepclasseswithmembernames class * {
    native <methods>;
}
-keepclassmembers class * {
    @android.webkit.JavascriptInterface <methods>;
}

-dontwarn javax.**, org.**, com.google.**, kotlin.**, kotlinx.**
-dontobfuscate