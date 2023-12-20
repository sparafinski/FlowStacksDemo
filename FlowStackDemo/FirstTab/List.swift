//
//  Example2.swift
//  FlowStackDemo
//
//  Created by Szymon Parafiński on 20/12/2023.
//

import SwiftUI
import FlowStacks

struct List: View {

    @EnvironmentObject private var navigator: FlowNavigator<FirstTabViews>
    let columnGrid = Array(repeating: GridItem(.fixed(90), spacing: 10), count: 3)

    var body: some View {
        ScrollView {

            LazyVGrid(columns: columnGrid, spacing: 10) {
                ForEach((1...15), id: \.self) { _ in
                    Cell()
                }
            }

        }
    }
}

#Preview {
    List()
}
