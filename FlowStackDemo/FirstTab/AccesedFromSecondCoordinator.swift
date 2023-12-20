//
//  Example3.swift
//  FlowStackDemo
//
//  Created by Szymon Parafiński on 20/12/2023.
//

import SwiftUI
import FlowStacks

struct AccesedFromSecondCoordinator: View {
    @EnvironmentObject private var navigator: FlowNavigator<FirstTabViews>
    let columnGrid = Array(repeating: GridItem(.fixed(90), spacing: 10), count: 3)


    var body: some View {
        ScrollView {
            VStack {
                Button(action: {
                    navigator.push(.first)
                }, label: {
                    Text("Open view from first coordinator")
                })
            }
        }
        .padding()
    }
}

#Preview {
    AccesedFromSecondCoordinator()
}
