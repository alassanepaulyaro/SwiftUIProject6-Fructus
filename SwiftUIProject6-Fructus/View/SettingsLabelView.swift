//
//  SettingsLabelView.swift
//  SwiftUIProject6-Fructus
//
//  Created by Yaro Paul  on 09/12/2024.
//

import SwiftUI

struct SettingsLabelView: View {

    var labelText: String
    var labelImage: String

    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

#Preview {
    SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
}
