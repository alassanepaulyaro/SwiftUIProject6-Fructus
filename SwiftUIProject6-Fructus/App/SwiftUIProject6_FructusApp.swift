//
//  SwiftUIProject6_FructusApp.swift
//  SwiftUIProject6-Fructus
//
//  Created by Yaro Paul  on 05/12/2024.
//

import SwiftUI

@main
struct SwiftUIProject6_FructusApp: App {

    @AppStorage("isOnBoarding") var isOnBoarding: Bool = true

    var body: some Scene {
        WindowGroup {
            if isOnBoarding {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
