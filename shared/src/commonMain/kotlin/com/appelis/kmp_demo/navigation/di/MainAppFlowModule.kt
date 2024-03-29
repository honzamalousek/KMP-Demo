package com.appelis.kmp_demo.navigation.di

import com.appelis.kmp_demo.navigation.navigationComponents.mainAppFlow.MainFlowChildConfig
import com.appelis.kmp_demo.navigation.navigationComponents.root.RootSlotChildConfig
import com.appelis.kmp_demo.navigation.routers.AppStartupRouterImpl
import com.appelis.kmp_demo.navigation.routers.HomescreenRouterImpl
import com.appelis.kmp_demo.homescreen_ui_logic.HomescreenRouter
import com.appelis.kmp_demo.startup_ui_logic.AppStartupRouter
import com.arkivanov.decompose.router.slot.SlotNavigation
import com.arkivanov.decompose.router.stack.StackNavigation
import org.koin.core.module.Module
import org.koin.core.module.dsl.singleOf
import org.koin.dsl.bind
import org.koin.dsl.module


val navigationModule: Module = module {
    // navigation
    single<StackNavigation<MainFlowChildConfig>> { StackNavigation() }
    single<SlotNavigation<RootSlotChildConfig>> { SlotNavigation() }

    // routers
    singleOf(::AppStartupRouterImpl) bind AppStartupRouter::class
    singleOf(::HomescreenRouterImpl) bind HomescreenRouter::class
}