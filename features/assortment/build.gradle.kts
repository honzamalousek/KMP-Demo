plugins {
    id(libs.plugins.kotlinMultiplatform.get().pluginId)
    id(libs.plugins.androidLibrary.get().pluginId)
    alias(libs.plugins.jetbrainsKotlinSerialization)
    id(libs.plugins.koin.annotations.plugin.get().pluginId)
    alias(libs.plugins.ksp)
}

kotlin {
    // Targets configuration
    androidTarget {
        compilations.all {
            kotlinOptions {
                jvmTarget = ProjectSettings.Android.KotlinJvmTarget
            }
        }
    }

    iosTargets()

    sourceSets {
        val commonMain by getting {
            kotlin.srcDir("build/generated/ksp/metadata/commonMain/kotlin")
            dependencies {
                implementation(project.dependencies.platform(libs.koin.bom))
                implementation(libs.bundles.common)
                implementation(libs.paging)
                api(projects.core)
                implementation(projects.grpcProto)
            }
        }
    }
}

android {
    namespace = libs.versions.namespace.feature.assortment.get()
    compileSdk = ProjectSettings.Android.CompileSdkVersion
    defaultConfig {
        minSdk = ProjectSettings.Android.MinSdkVersion
    }
    compileOptions {
        sourceCompatibility = ProjectSettings.Android.JavaCompatibility
        targetCompatibility = ProjectSettings.Android.JavaCompatibility
    }
}

dependencies {
    ksp(libs.koin.ksp.compiler)
}