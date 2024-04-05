plugins {
    alias(libs.plugins.kotlinMultiplatform)
    alias(libs.plugins.androidLibrary)
    alias(libs.plugins.jetbrainsKotlinSerialization)
    alias(libs.plugins.ksp)
}

kotlin {
    // Targets configuration
    androidTarget {
        compilations.all {
            kotlinOptions {
                jvmTarget = "11"
            }
        }
    }

    listOf(
        iosX64(),
        iosArm64(),
        iosSimulatorArm64()
    ).forEach {
        it.binaries.framework {
            baseName = "Leaflet"
            isStatic = true
        }
    }

    sourceSets {
        val commonMain by getting {
            kotlin.srcDir("build/generated/ksp/metadata/commonMain/kotlin")
            dependencies {
                implementation(project.dependencies.platform(libs.koin.bom))
                implementation(libs.koin.core)
                implementation(libs.koin.annotations)

                implementation(libs.decompose)
                implementation(libs.kotlinx.coroutines.core)
                api(projects.core)

                implementation(projects.grpcProto)
                implementation(libs.wire.runtime)
                implementation(libs.wire.grpc.client)
            }
        }

        val commonTest by getting {}
    }
}

android {
    namespace = "com.appelis.kmm_demo.leaflet.leaflet"
    compileSdk = 34
    defaultConfig {
        minSdk = 26
    }
    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_11
        targetCompatibility = JavaVersion.VERSION_11
    }
}

ksp {
    // enable compile time check
    arg("KOIN_CONFIG_CHECK","false")
//    // disable default module generation
//    arg("KOIN_DEFAULT_MODULE","false")
}

dependencies {
    implementation(project(":GrpcProto"))
    add("kspCommonMainMetadata", libs.koin.ksp.compiler)
}

tasks.withType<org.jetbrains.kotlin.gradle.tasks.KotlinCompile>().all {
    if (name != "kspCommonMainKotlinMetadata") {
        dependsOn("kspCommonMainKotlinMetadata")
    }
}

task("testClasses")