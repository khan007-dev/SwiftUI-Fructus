//
//  FruitCardView.swift
//  SwiftUI Fructus
//
//  Created by Khan on 13.04.2024.
//

import SwiftUI

struct FruitCardView: View {
    
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var body: some View {
       
        ZStack {
            VStack(spacing: 20) {
                // FRUIT: IMAGE
                Image(.blueberry)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                // FRUIT: TITLE
                Text("Blueberry")
                    .foregroundStyle(Color.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0 , opacity: 0.15), radius: 2, x: 2, y: 2)
                // FRUIT: HEADLINE
                // BUTTON: START
            } //: VSTACK
            
        } //: ZSTACK
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: [Color("ColorBlueberry"), Color("ColorBlueberryDark")]), startPoint: .bottom, endPoint:.top))
        .cornerRadius(20)
     
    }
}

// MARK: - PREVIEW
#Preview {
    FruitCardView()
        .previewLayout(.fixed(width: 320, height: 640))
}
