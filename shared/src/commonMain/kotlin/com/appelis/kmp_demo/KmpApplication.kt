package com.appelis.kmp_demo

import com.appelis.kmp_demo.di.DI
import org.koin.core.module.Module
import org.koin.dsl.KoinAppDeclaration

object KmpApplication {
    fun initSharedModule(
        nativeModule: Module,
        appDeclaration: KoinAppDeclaration? = null,
    ) {
        // setup DI
        DI.initDI(nativeModule, appDeclaration)

        // Do other stuff like analytics, logging, crashlytics etc.
    }

    fun test() {}
}