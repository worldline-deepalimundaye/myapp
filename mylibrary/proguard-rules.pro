# Add project specific ProGuard rules here.
# You can control the set of applied configuration files using the
# proguardFiles setting in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

# Uncomment this to preserve the line number information for
# debugging stack traces.
#-keepattributes SourceFile,LineNumberTable

# If you keep the line number information, uncomment this to
# hide the original source file name.
#-renamesourcefileattribute SourceFile

-dontskipnonpubliclibraryclassmembers
-printusage unused.txt
-optimizations !code/simplification/arithmetic,!field/*,!class/merging/*
-optimizationpasses 5
#-allowaccessmodification
-printmapping mapping.txt
-dontusemixedcaseclassnames
#-repackageclasses ''
-keepattributes *Annotation*,SourceFile,LineNumberTable,InnerClasses,Signature,*Annotation*
-renamesourcefileattribute SourceFile
-dontpreverify
-verbose
-dontnote com.android.vending.licensing.ILicensingService
-dump class_files.txt
-printseeds seeds.txt

-keeppackagenames com.test.mylibrary

-keepnames class com.test.mylibrary.*

-keep public class com.test.mylibrary.MyApp {
    <fields>;
    <methods>;
}

-keep public class com.paynimo.android.payment.model.Checkout {
    public void setConsumerIdentifier(java.lang.String);
    public void setMerchantIdentifier(java.lang.String);
    public void setTransactionIdentifier(java.lang.String);
    public void setTransactionReference(java.lang.String);
    public void setTransactionType(java.lang.String);
    public void setTransactionSubType(java.lang.String);
    public void setTransactionCurrency(java.lang.String);
    public void setTransactionAmount(java.lang.String);
    public void setTransactionDateTime(java.lang.String);
    public void setConsumerEmailID(java.lang.String);
    public void setConsumerMobileNumber(java.lang.String);
    public void setConsumerAccountNo(java.lang.String);
    public void setPaymentMethodToken(java.lang.String);
    public com.paynimo.android.payment.model.response.ResponsePayload getMerchantResponsePayload();
    public void addCartItem(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String);
    public void setMerchantAdditionalParamsUPIDTO(com.paynimo.android.payment.model.request.UPIDTO);
    public void setMerchantAdditionalParamsMerchantName(java.lang.String);
    public void setMerchantAdditionalParamsMerchantCategoryCode(java.lang.String);
    public void setMerchantAdditionalParamsUpiTimeout(java.lang.String);
}

-keep class com.test.mylibrary.* {
    <fields>;
    <methods>;
}

-keep public class * extends android.app.Activity

-keep public class * extends androidx.appcompat.app.AppCompatActivity

-keep public class * extends android.app.Application

-keep public class * extends android.app.Service

-keep public class * extends android.app.backup.BackupAgentHelper

-keep public class * extends android.content.BroadcastReceiver

-keep public class * extends android.content.ContentProvider

-keep public class * extends android.preference.Preference

-keep public class com.android.vending.licensing.ILicensingService

-keep public class * extends android.view.View

-keep public class * extends android.app.Fragment

-keep public class * extends androidx.fragment.app.Fragment

# Explicitly preserve all serialization members. The Serializable interface
# is only a marker interface, so it wouldn't save them.
-keepclassmembers class * extends java.io.Serializable {
    static final long serialVersionUID;
    private static final java.io.ObjectStreamField[] serialPersistentFields;
    <fields>;
    private void writeObject(java.io.ObjectOutputStream);
    private void readObject(java.io.ObjectInputStream);
    java.lang.Object writeReplace();
    java.lang.Object readResolve();
    <methods>;
}

-keep public class * extends android.view.View {
    public <init>(android.content.Context);
    public <init>(android.content.Context,android.util.AttributeSet);
    public <init>(android.content.Context,android.util.AttributeSet,int);
    public void set*(...);
}

-keepclasseswithmembers class * {
    public <init>(android.content.Context,android.util.AttributeSet);
}

-keepclasseswithmembers class * {
    public <init>(android.content.Context,android.util.AttributeSet,int);
}

-keepclassmembers class * extends android.content.Context {
    public void *(android.view.View);
    public void *(android.view.MenuItem);
}

-keepclassmembers class * extends android.os.Parcelable {
    static android.os.Parcelable$Creator CREATOR;
}

-keepclassmembers class **.R$* {
    public static <fields>;
}

-keepclassmembers class android.webkit.JavascriptInterface{
    <methods>;
}

# Gson specific classes
-keep class sun.misc.Unsafe {
    <fields>;
    <methods>;
}

# -keep class com.google.gson.stream.** { *; }
# Application classes that will be serialized/deserialized over Gson
# #---------------End: proguard configuration for Gson  ----------
-keep class org.greenrobot.event.** {
    <fields>;
    <methods>;
}

## Eventbus proguard configuration
-keepclassmembers class * {
    @org.greenrobot.eventbus.Subscribe <methods>;
}
-keep enum org.greenrobot.eventbus.ThreadMode { *; }
## End here Eventbus proguard configuration

-keep class com.squareup.okhttp.OkHttpClient {
    <fields>;
    <methods>;
}

# Preserve all native method names and the names of their classes.
-keepclasseswithmembers,allowshrinking class * {
    native <methods>;
}

# keep all public and protected methods that could be used by java reflection
-keepclassmembers,allowshrinking class * {
    public protected <methods>;
}

# Also keep - Enumerations. Keep the special static methods that are required in
# enumeration classes.
-keepclassmembers enum  * {
    public static **[] values();
    public static ** valueOf(java.lang.String);
}

-dontwarn androidx.**
-keep class androidx.** { *; }
-keep interface androidx.** { *; }