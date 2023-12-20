//
//  Example1.swift
//  FlowStackDemo
//
//  Created by Szymon Parafiński on 20/12/2023.
//

import SwiftUI
import FlowStacks

struct First: View {

    @EnvironmentObject private var navigator: FlowNavigator<FirstTabViews>

    var body: some View {
        ScrollView {
            Text("First view from first tab")

            HStack {
                ForEach((1...3), id: \.self) { _ in
                    Cell()
                }
            }

            Button(action: {
                navigator.push(.list)
            }, label: {
                Text("List of cells")
            })

        }
        .padding()
    }
}

#Preview {
    First()
}
