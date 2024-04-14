//
//  OnBoardingView.swift
//  SwiftUI Fructus
//
//  Created by Khan on 14.04.2024.
//

import SwiftUI

struct OnBoardingView: View {
    
    // MARK: - PROPERTIES 6
    
    // MARK: - BODY
    var body: some View {
        TabView {
            
            
            ForEach(0 ..< 5) { item in
                FruitCardView()
            }
            
        } // TAB:
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}


// MARK: - PREVIEW
#Preview {
    OnBoardingView()
}
