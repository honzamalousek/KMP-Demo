//
//  RootView.swift
//  iosApp
//
//  Created by Jan Maloušek on 20.03.2024.
//  Copyright © 2024 orgName. All rights reserved.
//

import Shared
import SwiftUI
import SwiftUICore
import KoinHelpers

struct RootNavigationView: View {
    @StateValue
    private var slot: ChildSlot<RootDestination, RootEntry>
    
    init(_ component: RootNavigationComponent) {
        self._slot = StateValue(component.slot)
    }
    
    var body: some View {
        ZStack {
            if let navigationEntry = slot.child?.instance {
                switch onEnum(of: navigationEntry) {
                case let .appStartup(entry):
                    AppStartupView(screen: entry.screen)
                case let .mainAppFlow(entry):
                    MainFlowNavigationView(component: entry.navigation)
                }
            }
        }
    }
}

struct AppStartupView: View {
    @StateValue
    private var viewState: AppStartupViewState
    
    private var router: AppStartupRouter = inject()
    private let actions: AppStartupComponentActions
    
    public init(screen: AppStartupComponent) {
        self._viewState = StateValue(screen.viewState)
        self.actions = screen.actions
    }
    
    var body: some View {
        VStack {
            Text("AppStartupView")
                .font(.title)
            
            Spacer()
            
            Button(
                action: {
                    router.navigateTo(route: .MainAppFlow())
                },
                label: {
                    Text("continue to app")
                }
            )
            
            Spacer()
        }
    }
}
