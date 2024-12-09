//
//  SettingsRowView.swift
//  SwiftUIProject6-Fructus
//
//  Created by Yaro Paul  on 09/12/2024.
//

import SwiftUI

struct SettingsRowView: View {

    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil

    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack {
                Text(name)
                    .foregroundColor(.gray)
                Spacer()
                if content != nil {
                    Text(content!)
                } else if linkLabel != nil && linkDestination != nil {
                    Link(
                        linkLabel!,
                        destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(
                        .pink)
                } else {
                    /*@START_MENU_TOKEN@*/EmptyView() /*@END_MENU_TOKEN@*/
                }
            }
        }
    }
}

#Preview("Test1") {
    SettingsRowView(name: "Developper", content: "Yaro Paul")
}

#Preview("Test2") {
    SettingsRowView(
        name: "Website", linkLabel: "Visit my website",
        linkDestination: "https://gemini.google.com/")
}
