//
//  FruitNutrientsView.swift
//  SwiftUI Fructus
//
//  Created by Khan on 18.04.2024.
//

import SwiftUI

struct FruitNutrientsView: View {
    
    // MARK: PROPERTIES
    var fruit: Fruit
    let nutrients: [String] = ["Energy", "Suger","Fat", "Protein", "Vitamins"]
    // MARK: BODY
    var body: some View {
        
        GroupBox() {
            DisclosureGroup("Nutritional value per 100g") {
                ForEach(0 ..< nutrients.count, id: \.self) { item in
                    
                    Divider().padding(.vertical, 2)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundStyle(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
           
        } 
        
        //: BOX
       
    }
}

#Preview {
    FruitNutrientsView(fruit: fruitsData[0])
        .preferredColorScheme(.dark)
        .previewLayout(.fixed(width: 375, height: 480))
        .padding()
}
