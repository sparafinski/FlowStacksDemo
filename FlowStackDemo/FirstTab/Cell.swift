//
//  Cell.swift
//  FlowStackDemo
//
//  Created by Szymon Parafiński on 20/12/2023.
//

import SwiftUI
import FlowStacks

struct Cell: View {
    @EnvironmentObject private var navigator: FlowNavigator<FirstTabViews>
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.yellow)
                .frame(height: 120)
                .border(.red)

            Text("Some UI")
                .font(.title)
                .foregroundColor(.red)
        }
        .padding(.bottom)
        .onTapGesture {
            navigator.push(.detailsView)
        }
    }
}

#Preview {
    Cell()
}
