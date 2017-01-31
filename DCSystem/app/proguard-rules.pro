# Add project specific ProGuard rules here.
# By default, the flags in this archiveApproval are appended to flags specified
# in /Users/pheynix/Documents/coding/sdk/tools/proguard/proguard-android.txt
# You can edit the include path and order by changing the proguardFiles
# directive in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# Add any project specific keep options here:

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

#-verbose

-printmapping mapping.txt

-renamesourcefileattribute MyApplication

-keepattributes SourceFile,LineNumberTable

# 使用注解
-keepattributes *Annotation*

# 过滤泛型
-keepattributes Signature,EnclosingMethod

# 枚举不混淆
-keepclassmembers enum * {
    **[] $VALUES;
    public *;
}

-dontpreverify

-keepclassmembers class * {
   public <init> (org.json.JSONObject);
}

# Android
-dontwarn android.support.v4.**
-dontwarn android.support.v7.**

# Marshmallow removed Notification.setLatestEventInfo()
-dontwarn android.app.Notification

# Keep the support library
-keep class android.support.v4.** { *; }
-keep class android.support.v7.** { *; }
-keep interface android.support.v4.app.** { *; }
-keep interface android.support.v7.app.** { *; }

# Child class for android component
-keep public class * extends android.support.v4.**
-keep public class * extends android.app.Activity
-keep public class * extends android.app.Fragment
-keep public class * extends android.app.Application
-keep public class * extends android.app.Service
-keep public class * extends android.app.backup.BackupAgentHelper
-keep public class * extends android.content.BroadcastReceiver
-keep public class * extends android.content.ContentProvider
-keep public class * extends android.preference.Preference

# design
-dontwarn android.support.design.**
-keep class android.support.design.** { *; }
-keep interface android.support.design.** { *; }
-keep public class android.support.design.R$* { *; }

# v7-appcompat
-keep public class android.support.v7.widget.** { *; }
-keep public class android.support.v7.internal.widget.** { *; }
-keep public class android.support.v7.internal.view.menu.** { *; }

-keep public class * extends android.support.v4.view.ActionProvider {
    public <init>(android.content.Context);
}

# cardView
-keep class android.support.v7.widget.RoundRectDrawable { *; }

# 实体类不需要混淆
-keep class com.plusmoney.managerplus.base.** { *; }
-keep class com.plusmoney.managerplus.bean.** { *; }
-keep class com.plusmoney.managerplus.beanv2.** { *; }
-keep class com.plusmoney.managerplus.utils.** { *; }
-keep class com.plusmoney.managerplus.BuildConfig { *; }

-keep class com.plusmoney.managerplus.api.response.** { *; }
-keep class com.plusmoney.managerplus.user.data.** { *; }
-keep class com.plusmoney.managerplus.money.data.** { *; }
-keep class com.plusmoney.managerplus.task.data.** { *; }
-keep class com.plusmoney.managerplus.contact.data.** { *; }
-keep class com.plusmoney.managerplus.kpi.data.** { *; }
-keep class com.plusmoney.managerplus.approval.data.** { *; }
-keep class com.plusmoney.managerplus.attendance.data.** { *; }
-keep class com.plusmoney.managerplus.connection.data.** { *; }

# dagger
-keepclassmembers,allowobfuscation class * {
    @javax.inject.* *;
    @dagger.* *;
    <init>();
}

-keep class javax.inject.** { *; }
-keep class **$$ModuleAdapter
-keep class **$$InjectAdapter
-keep class **$$StaticInjection
-keep class dagger.** { *; }
-dontwarn dagger.internal.codegen.**
-dontwarn dagger.shaded.auto.common.**

#butterknife7
-keep class butterknife.** { *; }
-dontwarn butterknife.internal.**
-keep class **$$ViewBinder { *; }

-keepclasseswithmembernames class * {
    @butterknife.* <fields>;
}

-keepclasseswithmembernames class * {
    @butterknife.* <methods>;
}

# Gson
-keepattributes *Annotation*
-keep class sun.misc.Unsafe { *; }
-keep class com.idea.fifaalarmclock.entity.***
-keep class com.google.gson.stream.** { *; }

# AutoValue
-keep class **.AutoValue_*
-dontwarn javax.lang.**
-dontwarn javax.tools.**
-dontwarn javax.annotation.**
-dontwarn autovalue.shaded.com.**
-dontwarn com.google.auto.value.**


# For RxJava from drakeet
-dontwarn org.mockito.**
-dontwarn org.junit.**
-dontwarn org.robolectric.**
-dontwarn sun.misc.**

-keep class rx.subscriptions.CompositeSubscription.** { *; }

-keep class rx.schedulers.Schedulers {
    public static <methods>;
}
-keep class rx.schedulers.ImmediateScheduler {
    public <methods>;
}
-keep class rx.schedulers.TestScheduler {
    public <methods>;
}
-keep class rx.schedulers.Schedulers {
    public static ** test();
}
-keepclassmembers class rx.internal.util.unsafe.*ArrayQueue*Field* {
    long producerIndex;
    long consumerIndex;
}
-keepclassmembers class rx.internal.util.unsafe.BaseLinkedQueueProducerNodeRef {
    long producerNode;
    long consumerNode;
}

-keepclassmembers class rx.internal.util.unsafe.BaseLinkedQueueProducerNodeRef {
 rx.internal.util.atomic.LinkedQueueNode producerNode;
}
-keepclassmembers class rx.internal.util.unsafe.BaseLinkedQueueConsumerNodeRef {
 rx.internal.util.atomic.LinkedQueueNode consumerNode;
}

# OkHttp
-keepattributes Signature
-keepattributes *Annotation*
-keep class com.squareup.okhttp.** { *; }
-keep interface com.squareup.okhttp.** { *; }
-dontwarn com.squareup.okhttp.**

# OkHttp3
-keepattributes Signature
-keepattributes *Annotation*
-keep class okhttp3.** { *; }
-keep class okhttp3.internal.** { *; }
-keep interface okhttp3.** { *; }
-dontwarn okhttp3.**

# Okio
-keep class sun.misc.Unsafe { *; }
-dontwarn java.nio.file.*
-dontwarn org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement
-dontwarn okio.**

# Retrofit 1.X
-keep class com.squareup.okhttp.** { *; }
-keep class retrofit.** { *; }
-keep interface com.squareup.okhttp.** { *; }

-dontwarn com.squareup.okhttp.**
-dontwarn okio.**
-dontwarn retrofit.**
-dontwarn rx.**

-keepclasseswithmembers class * {
    @retrofit.http.* <methods>;
}

# Retrofit 2.X
-dontwarn retrofit2.**
-keep class retrofit2.** { *; }
-keepattributes Signature
-keepattributes Exceptions

-keepclasseswithmembers class * {
    @retrofit2.http.* <methods>;
}

# Platform calls Class.forName on types which do not exist on Android to determine platform.
-dontnote retrofit2.Platform
# Platform used when running on RoboVM on iOS. Will not be used at runtime.
-dontnote retrofit2.Platform$IOS$MainThreadExecutor
# Platform used when running on Java 8 VMs. Will not be used at runtime.
-dontwarn retrofit2.Platform$Java8

# Retrolambda
-dontwarn java.lang.invoke.*

# glide
-keep public class * implements com.bumptech.glide.module.GlideModule
-keep public enum com.bumptech.glide.load.resource.bitmap.ImageHeaderParser$** {
  **[] $VALUES;
  public *;
}

# for DexGuard only
-keepresourcexmlelements manifest/application/meta-data@value=GlideModule

# For Guava:
-dontwarn javax.annotation.**
-dontwarn javax.inject.**
-dontwarn sun.misc.Unsafe

#autolayout
-dontwarn com.zhy.autolayout.**
-keep class com.zhy.autolayout.** { *; }


#BadgeView
-dontwarn com.jauker.widget.**
-keep class com.jauker.widget.** { *; }


# photo view
-dontwarn uk.co.senab.**
-keep class uk.co.senab.** { *; }

# tag view
-dontwarn me.gujun.android.**
-keep class me.gujun.android.** { *; }

# leakcanary
-dontwarn com.squareup.haha.guava.**
-dontwarn com.squareup.haha.perflib.**
-dontwarn com.squareup.haha.trove.**
-dontwarn com.squareup.leakcanary.**

-keep class com.squareup.haha.** { *; }
-keep class com.squareup.leakcanary.** { *; }

# DeepLinkDispatch
-keep class com.airbnb.deeplinkdispatch.** { *; }
-keepclasseswithmembers class * {
     @com.airbnb.deeplinkdispatch.DeepLink <methods>;
}

# netty4.1
-dontwarn io.netty.build.**
-dontwarn io.netty.channel.**
-dontwarn io.netty.handler.**
-dontwarn io.netty.util.**

-keep class io.netty.bootstrap.Bootstrap
-keep class io.netty.buffer.Unpooled
-keep class io.netty.channel.** { *; }

-keep class io.netty.handler.codec.string.StringDecoder
-keep class io.netty.handler.codec.string.StringEncoder
-keep class io.netty.handler.timeout.IdleStateHandler

-keep class io.netty.util.CharsetUtil

# others
-dontwarn com.google.**
-keep class com.google.** { *; }

-dontwarn com.mcxiaoke.**
-keep class com.mcxiaoke.** { *; }

-dontwarn com.squareup.**
-keep class com.squareup** { *; }

-dontwarn com.loopj.**
-keep class com.loopj.** { *; }

-dontwarn com.github.**
-keep class com.github.** { *; }

-keep public class $com.plusmoney.managerplus.R$*{
    public static final int *;
}

# tencent X5 webview
-dontwarn com.tencent.smtt.export.external.DexLoader

-keepattributes *Annotation*

-keep class com.taobao.** {*;}
-keep class org.android.** {*;}
-keep class anet.channel.** {*;}
-keep class com.umeng.** {*;}
-keep class com.xiaomi.** {*;}
-keep class com.huawei.** {*;}
-keep class org.apache.thrift.** {*;}

-keep public class **.R$*{
   public static final int *;
}

-dontwarn com.google.**
-keep class com.google.gson.** {*;}
-keep class com.google.protobuf.** {*;}