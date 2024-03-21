package com.appelis.kmp_demo.extractToModules.appStartup.di

import com.appelis.kmp_demo.extractToModules.appStartup.AppStartupViewModel
import org.koin.core.module.Module
import org.koin.core.module.dsl.factoryOf
import org.koin.dsl.module

val appStartupUILogicModule: Module = module {
    factoryOf(::AppStartupViewModel)
}