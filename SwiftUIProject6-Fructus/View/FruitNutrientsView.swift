//
//  FruitNutrientsView.swift
//  SwiftUIProject6-Fructus
//
//  Created by Yaro Paul  on 05/12/2024.
//

import SwiftUI

struct FruitNutrientsView: View {

    var fruit: Fruit
    let nutrients: [String] = [
        "Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals",
    ]

    var body: some View {
        GroupBox {
            DisclosureGroup("Nutritional value per 100g") {
                ForEach(0..<nutrients.count, id: \.self) { item in

                    Divider().padding(.vertical, 2)

                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())

                        Spacer(minLength: 25)

                        Text(String(fruit.nutrition[item]))
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
        }
    }
}

#Preview {
    FruitNutrientsView(fruit: fruitsData[0])
}
