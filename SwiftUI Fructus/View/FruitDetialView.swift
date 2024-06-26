//
//  FruitDetialView.swift
//  SwiftUI Fructus
//
//  Created by Khan on 17.04.2024.
//

import SwiftUI

struct FruitDetialView: View {
    
    // MARK: PROPERTIES
    
    var fruit: Fruit
    // MARK: BODY
    var body: some View {
      
        NavigationView {
            
            ScrollView(.vertical, showsIndicators: false ) {
                VStack(alignment: .center, spacing: 20) {
               
                        
                        //HEADER
                        FruitHeaderView(fruit: fruit)
                    VStack(alignment: .center, spacing: 20)
                    {
                        
                        
                        // TITLE
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundStyle(fruit.gradientColors[1])
                        
                        // HEADLINE
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        // NUTRIENTS
                        FruitNutrientsView(fruit: fruit)
                        
                        // SUBHEADLINE
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundStyle(fruit.gradientColors[1])
                        
                        
                        // DESCRIPTION
                        
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                        // LINK
                        SourceLinkView()
                        
                    }
                            .padding(.horizontal, 20)
                            .frame(maxWidth: 640, alignment: .center)
                }//: VSTACK
              
                .navigationBarTitle(fruit.title, displayMode: .inline)
                .navigationBarHidden(true)
            } //: SCROLL
            .edgesIgnoringSafeArea(.top)
        } //: NAVIGATION
    }
}

#Preview {
    FruitDetialView(fruit: fruitsData[0])
}
