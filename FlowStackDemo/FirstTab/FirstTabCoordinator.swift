//
//  FirstTabCoordinator.swift
//  FlowStackDemo
//
//  Created by Szymon Parafiński on 20/12/2023.
//

import SwiftUI
import FlowStacks

enum FirstTabViews {
    case first
    case list
    case viewAccesedFromSecondTab
    case detailsView
}

struct FirstTabCoordinator: View {
    @State var routes: Routes<FirstTabViews> = [.root(.first, embedInNavigationView: true)]

    var body: some View {
        Router($routes) { $view, _ in
            switch view {
            case .first:
                First()
            case .list:
                List()
            case .viewAccesedFromSecondTab:
                AccesedFromSecondCoordinator()
            case .detailsView:
                DetailsCoordinator()
            }
        }
    }
}

#Preview {
    FirstTabCoordinator()
}
