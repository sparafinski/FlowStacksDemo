//
//  ThirdTabCoordinator.swift
//  FlowStackDemo
//
//  Created by Szymon Parafiński on 20/12/2023.
//

import SwiftUI
import FlowStacks

enum DetailsViews{
    case details
    case other
}
struct DetailsCoordinator: View {


    @State var routes: Routes<DetailsViews> = [.root(.details, embedInNavigationView: true)]

    var body: some View {
        Router($routes) { $view, _ in
            switch view {
            case .details:
                DetailsView()
            case .other:
                EmptyView()
            }
        }
    }
}

#Preview {
    DetailsCoordinator()
}
