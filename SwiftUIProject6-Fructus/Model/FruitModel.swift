//
//  FruitModel.swift
//  SwiftUIProject6-Fructus
//
//  Created by Yaro Paul  on 05/12/2024.
//

import SwiftUI


struct Fruit: Identifiable {
    var id: UUID = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
