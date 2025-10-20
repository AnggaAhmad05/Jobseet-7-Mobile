plugins {
    id("com.android.application")
    id("kotlin-android")
    // Flutter Gradle plugin harus diletakkan setelah plugin Android dan Kotlin.
    id("dev.flutter.flutter-gradle-plugin")
}

android {
    namespace = "com.example.ord_sederhana"
    compileSdk = flutter.compileSdkVersion
    ndkVersion = flutter.ndkVersion

    compileOptions {
        // Menggunakan Java 17 agar kompatibel dengan Gradle 8+ dan Kotlin terbaru
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_17.toString()
        // Menghindari error "default interface methods" pada plugin lama
        freeCompilerArgs = listOf("-Xjvm-default=all")
    }

    defaultConfig {
        // Application ID unik untuk proyek
        applicationId = "com.example.ord_sederhana"

        // Mengambil versi dari konfigurasi Flutter
        minSdk = flutter.minSdkVersion
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }

    buildTypes {
        release {
            // Menggunakan debug key agar bisa build release dengan mudah
            signingConfig = signingConfigs.getByName("debug")
        }
    }
}

flutter {
    source = "../.."
}
