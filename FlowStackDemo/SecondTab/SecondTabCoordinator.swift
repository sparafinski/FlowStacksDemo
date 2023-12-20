//
//  SecondTabCoordinator.swift
//  FlowStackDemo
//
//  Created by Szymon Parafiński on 20/12/2023.
//

import SwiftUI
import FlowStacks

enum SecondTabViews {
    case secondTabFirst
}

struct SecondTabCoordinator: View {
    @State var routes: Routes<SecondTabViews> = [.root(.secondTabFirst, embedInNavigationView: true)]

    var body: some View {
        Router($routes) { $view, _ in
            switch view {
            case .secondTabFirst:
                ShowViewFromFirstCoordinator()
            }
        }
    }
}

#Preview {
    SecondTabCoordinator()
}
