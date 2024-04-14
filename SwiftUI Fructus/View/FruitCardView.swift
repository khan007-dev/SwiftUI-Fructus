//
//  FruitCardView.swift
//  SwiftUI Fructus
//
//  Created by Khan on 13.04.2024.
//

import SwiftUI

struct FruitCardView: View {
    
    // MARK: - PROPERTIES
    
    @State private var isAnimating: Bool = false
    // MARK: - BODY
    var body: some View {
       
        ZStack {
            VStack(spacing: 20) {
                // FRUIT: IMAGE 2
                Image(.blueberry)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                // FRUIT: TITLE 3
                Text("Blueberry")
                    .foregroundStyle(Color.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0 , opacity: 0.15), radius: 2, x: 2, y: 2)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                // FRUIT: HEADLINE 4
                Text("Blueberries are sweet, nutritious and wildly popular fruit all over the world.")
                    .foregroundStyle(.white)
                    .multilineTextAlignment(.center)
                    .frame(maxWidth: 480)
                // BUTTON: START 8
                StartButtonView()
            } //: VSTACK
            
        } //: ZSTACK 7
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        })// 5
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: [Color("ColorBlueberry"), Color("ColorBlueberryDark")]), startPoint: .bottom, endPoint:.top))
        .cornerRadius(20)
        .padding(.horizontal, 20)
     
    }
}

// MARK: - PREVIEW 1
#Preview {
    FruitCardView()
        .previewLayout(.fixed(width: 320, height: 640))
}
