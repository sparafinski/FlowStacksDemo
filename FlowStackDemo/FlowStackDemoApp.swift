//
//  FlowStackDemoApp.swift
//  FlowStackDemo
//
//  Created by Szymon Parafiński on 20/12/2023.
//

import SwiftUI
import FlowStacks

enum AppTabs {
    case first
    case second
    case third
}

@main
struct FlowStackDemoApp: App {
    @State var routes: Routes<AppTabs> = [.root(.first, embedInNavigationView: true)]
    @State private var selectedTab: AppTabs = .first
    
    var body: some Scene {
        WindowGroup {
            TabView(selection: $selectedTab) {
                FirstTabCoordinator()
                    .tabItem {
                        Label("First", systemImage: "lock.shield")
                    }
                SecondTabCoordinator()
                    .tabItem {
                        Label("Second", systemImage: "magnifyingglass.circle")
                    }
            }
        }
    }
}
