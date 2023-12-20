//
//  SecondTabFirst.swift
//  FlowStackDemo
//
//  Created by Szymon Parafiński on 20/12/2023.
//

import SwiftUI

struct ShowViewFromFirstCoordinator: View {
    var body: some View {
        VStack {
            ZStack {
                Rectangle()
                    .fill(Color.black)
                    .frame(height: 120)
                    .border(.red)

                Text("Some UI")
                    .font(.title)
                    .foregroundColor(.red)
            }
            .padding(.bottom)

            Spacer()

            FirstTabCoordinator(routes: [.root(.viewAccesedFromSecondTab, embedInNavigationView: false)])

            Spacer()
        }
    }
}

#Preview {
    ShowViewFromFirstCoordinator()
}
