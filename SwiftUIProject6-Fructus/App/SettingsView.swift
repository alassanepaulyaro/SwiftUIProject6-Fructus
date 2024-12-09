//
//  SettingsView.swift
//  SwiftUIProject6-Fructus
//
//  Created by Yaro Paul  on 05/12/2024.
//

import SwiftUI

struct SettingsView: View {

    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {

                    GroupBox(
                        label:
                            SettingsLabelView(
                                labelText: "Fructus", labelImage: "info.circle"
                            )
                    ) {

                        Divider().padding(.vertical, 4)
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)

                            Text(
                                "Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are source of many essential nutrients, including vitamins A, C, and E, and minerals like potassium, magnesium, dietary fiber,and much more. "
                            )
                            .font(.footnote)

                        }
                    }

                    GroupBox(
                        label: SettingsLabelView(
                            labelText: "Application", labelImage: "apps.iphone")
                    ) {
                        SettingsRowView(
                            name: "Developper", content: "Yaro Paul")
                        SettingsRowView(name: "Designer", content: "Yaro Paul")
                        SettingsRowView(
                            name: "Compatiblility", content: "IOS 18")
                        SettingsRowView(
                            name: "Website", linkLabel: "Google",
                            linkDestination: "https://www.google.com/")
                        SettingsRowView(name: "SwiftUI Version", content: "5.0")
                        SettingsRowView(name: "version", content: "1.0.0")

                    }

                }
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(
                    trailing: Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }) {
                        Image(systemName: "xmark")
                    }
                )
                .padding()
            }
        }
    }
}

#Preview {
    SettingsView()
}
