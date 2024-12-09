//
//  FruitHeaderView.swift
//  SwiftUIProject6-Fructus
//
//  Created by Yaro Paul  on 05/12/2024.
//

import SwiftUI

struct FruitHeaderView: View {

    var fruit: Fruit
    @State private var isAnimatingImage: Bool = false

    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: fruit.gradientColors),
                startPoint: .topLeading, endPoint: .bottomTrailing)

            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(
                    color: Color(red: 0, green: 0, blue: 0, opacity: 0.15),
                    radius: 10, x: 6, y: 8
                )
                .padding(.vertical, 20)
                .scaleEffect(isAnimatingImage ? 1.0 : 0.6)
        }
        .frame(height: 440)
        .onAppear {
            withAnimation(.easeInOut(duration: 0.5)) {
                isAnimatingImage = true
            }
        }
    }
}

#Preview {
    FruitHeaderView(fruit: fruitsData[0])
}
