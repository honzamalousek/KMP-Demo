package com.appelis.kmp_demo.navigation.navigationComponents.mainAppFlow

import com.appelis.kmp_demo.category_ui_logic.CategoryComponent
import com.appelis.kmp_demo.category_ui_logic.CategoryComponentImpl
import com.appelis.kmp_demo.core.ChildConfig
import com.appelis.kmp_demo.core.NavigationChild
import com.appelis.kmp_demo.homescreen_ui_logic.HomescreenComponent
import com.appelis.kmp_demo.homescreen_ui_logic.HomescreenComponentImpl
import com.arkivanov.decompose.ComponentContext
import com.arkivanov.decompose.router.stack.ChildStack
import com.arkivanov.decompose.router.stack.StackNavigation
import com.arkivanov.decompose.router.stack.childStack
import com.arkivanov.decompose.router.stack.popTo
import com.arkivanov.decompose.value.Value
import kotlinx.serialization.Serializable
import org.koin.core.component.KoinComponent
import org.koin.core.component.inject

interface MainNavigationComponent {
    val stack: Value<ChildStack<*, MainFlowNavigationChild>>
    fun onBackClicked(toIndex: Int)
}

internal class MainNavigationComponentImpl(
    componentContext: ComponentContext,
) : MainNavigationComponent, ComponentContext by componentContext, KoinComponent {
    private val navigation: StackNavigation<MainFlowChildConfig> by inject()

    override val stack: Value<ChildStack<*, MainFlowNavigationChild>> = childStack(
        source = navigation,
        serializer = MainFlowChildConfig.serializer(),
        key = this::class.simpleName.toString(),
        initialStack = {
            listOf(MainFlowChildConfig.Homescreen)
        },
        handleBackButton = true,
        childFactory = { childConfig, childContext -> childConfig.createChild(childContext) }
    )

    override fun onBackClicked(toIndex: Int) = navigation.popTo(toIndex)
}

/***
 * represents "to where we want to navigate", including arguments
 */
@Serializable
sealed class MainFlowChildConfig: ChildConfig<MainFlowNavigationChild> {
    @Serializable
    data object Homescreen: MainFlowChildConfig() {
        override fun createChild(componentContext: ComponentContext): MainFlowNavigationChild {
            return MainFlowNavigationChild.Homescreen(HomescreenComponentImpl(componentContext))
        }
    }

    @Serializable
    data class Category(private val id: String): MainFlowChildConfig() {
        override fun createChild(componentContext: ComponentContext): MainFlowNavigationChild {
            return MainFlowNavigationChild.Category(CategoryComponentImpl(componentContext, id))
        }
    }
}

/**
 * Represents item in navigation stack from which view can be generated
 */
sealed class MainFlowNavigationChild: NavigationChild {
    data class Homescreen(val component: HomescreenComponent): MainFlowNavigationChild()
    data class Category(val component: CategoryComponent): MainFlowNavigationChild()
}
