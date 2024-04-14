//
//  FruitCardView.swift
//  SwiftUI Fructus
//
//  Created by Khan on 13.04.2024.
//

import SwiftUI

struct FruitCardView: View {
    
    // MARK: - PROPERTIES
    
    var fruit: Fruit
    @State private var isAnimating: Bool = false
    // MARK: - BODY
    var body: some View {
       
        ZStack {
            VStack(spacing: 20) {
                // FRUIT: IMAGE 2
                Image(fruit.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                // FRUIT: TITLE 3
                Text(fruit.title)
                    .foregroundStyle(Color.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0 , opacity: 0.15), radius: 2, x: 2, y: 2)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                // FRUIT: HEADLINE 4
                Text(fruit.headline)
                    .foregroundStyle(.white)
                    .multilineTextAlignment(.leading)
                    .frame(maxWidth: 480)
                    .padding()
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
        .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .bottom, endPoint:.top))
        .cornerRadius(20)
        .padding(.horizontal, 20)
     
    }
}

// MARK: - PREVIEW 1
#Preview {
    FruitCardView(fruit: fruitsData[0])
        .previewLayout(.fixed(width: 320, height: 640))
}
