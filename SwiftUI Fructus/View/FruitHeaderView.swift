//
//  FruitHeaderView.swift
//  SwiftUI Fructus
//
//  Created by Khan on 17.04.2024.
//

import SwiftUI

struct FruitHeaderView: View {
    // MARK: - PROPERTIES
    var fruit: Fruit
    @State private var isAnimatingImage: Bool = false
    // MARK: - BODY
    var body: some View {
     
        ZStack {
            
            LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 6)
                .padding(.vertical, 20)
                .scaleEffect(isAnimatingImage ? 1.0 : 0.6)
        }//: ZSTACK
        .frame(height: 440)
        .onAppear(perform: {
            withAnimation (.easeOut(duration: 0.5)) {
                
                isAnimatingImage = true
            }
        })
    }
}

#Preview {
    FruitHeaderView(fruit: fruitsData[0])
        .previewLayout(.fixed(width: 375, height: 440))
}
