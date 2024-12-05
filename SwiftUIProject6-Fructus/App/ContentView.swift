//
//  ContentView.swift
//  SwiftUIProject6-Fructus
//
//  Created by Yaro Paul  on 05/12/2024.
//

import SwiftUI

struct ContentView: View {

    var fruits: [Fruit] = fruitsData

    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item in
                    FruitRowView(fruit: item)
                        .padding(.vertical, 4)
                }
            }
            .navigationBarTitle("Fruits")
        }
    }
}

#Preview {
    ContentView(fruits: fruitsData)
}
