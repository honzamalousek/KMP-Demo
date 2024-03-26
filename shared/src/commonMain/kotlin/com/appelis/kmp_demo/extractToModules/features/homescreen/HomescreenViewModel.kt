package com.appelis.kmp_demo.extractToModules.features.homescreen

import com.appelis.kmp_demo.core.SharedViewModel
import com.appelis.kmp_demo.core.ViewState
import com.appelis.kmp_demo.extractToModules.navigation.mainAppFlow.MainFlowNavigator
import kotlinx.coroutines.flow.MutableStateFlow

internal class HomescreenViewModel(
    private val mainFlowNavigator: MainFlowNavigator
): SharedViewModel<HomescreenViewState, Nothing>(), HomescreenScreen.Actions {
    override val viewState: MutableStateFlow<HomescreenViewState> = MutableStateFlow(
        HomescreenViewState()
    )

    override fun navigateToCategory(id: String) {
        mainFlowNavigator.navigateToCategory(id)
    }
}

class HomescreenViewState: ViewState