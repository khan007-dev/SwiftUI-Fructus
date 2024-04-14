//
//  StartButtonView.swift
//  SwiftUI Fructus
//
//  Created by Khan on 14.04.2024.
//

import SwiftUI

struct StartButtonView: View {
    
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var body: some View {
        
        Button(action: {
            
            print("Exit, the onBoarding")
        }, label: {
            HStack (spacing: 8) {
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
                    
            }.padding(.horizontal, 16)
                .padding(.vertical, 10)
                .background(
                    Capsule().strokeBorder(Color.white, lineWidth: 1.25)
                )
                
            
        })//: BUTTON
        .accentColor(Color.white)
    }
}

// MARK: - PREVIEW

#Preview {
    StartButtonView()
        .preferredColorScheme(.dark)
        .previewLayout(.sizeThatFits)
}
