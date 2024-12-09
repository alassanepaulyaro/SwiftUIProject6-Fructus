//
//  StarButtonView.swift
//  SwiftUIProject6-Fructus
//
//  Created by Yaro Paul  on 05/12/2024.
//

import SwiftUI

struct StarButtonView: View {
    
    @AppStorage("isOnBoarding") var isOnBoarding: Bool?

    
    var body: some View {
        Button(action: {
            isOnBoarding = false
        }) {
            HStack {
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(.white, lineWidth: 1.25)
            )

        }
        .accentColor(.white)
    }
}

#Preview {
    StarButtonView()
}
