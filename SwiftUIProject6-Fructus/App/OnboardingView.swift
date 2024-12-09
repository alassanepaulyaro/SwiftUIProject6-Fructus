//
//  OnboardingView.swift
//  SwiftUIProject6-Fructus
//
//  Created by Yaro Paul  on 05/12/2024.
//

import SwiftUI

struct OnboardingView: View {

    var fruits: [Fruit] = fruitsData

    var body: some View {
        TabView {
            ForEach(fruits[0...fruits.count - 1]) { item in
                FruitCardView(fruit: item)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

#Preview {
    OnboardingView()
}
