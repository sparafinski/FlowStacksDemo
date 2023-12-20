//
//  Example3.swift
//  FlowStackDemo
//
//  Created by Szymon Parafiński on 20/12/2023.
//

import SwiftUI
import FlowStacks

struct ViewAccesedFromSecondCoordinator: View {
    @EnvironmentObject private var navigator: FlowNavigator<FirstTabViews>
    let columnGrid = Array(repeating: GridItem(.fixed(90), spacing: 10), count: 3)


    var body: some View {
        ScrollView {
            VStack {
                // navigator on this cell works fine
                Text("That's the same cell that is showed in the list link below ")
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                Cell()
                    .frame(width: 100)

                // navigator to this view also works fine BUT navigators inside it doesn't work when called from SecondTab
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
    ViewAccesedFromSecondCoordinator()
}
