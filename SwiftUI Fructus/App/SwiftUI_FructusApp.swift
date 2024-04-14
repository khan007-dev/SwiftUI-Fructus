//
//  SwiftUI_FructusApp.swift
//  SwiftUI Fructus
//
//  Created by Khan on 13.04.2024.
//

import SwiftUI

@main
struct SwiftUI_FructusApp: App {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    var body: some Scene {
        WindowGroup {
            
            if isOnboarding {
                OnBoardingView()
            }
            else {
                ContentView()
            }
        
        }
    }
}
