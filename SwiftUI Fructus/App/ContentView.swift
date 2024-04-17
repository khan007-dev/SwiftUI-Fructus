//
//  ContentView.swift
//  SwiftUI Fructus
//
//  Created by Khan on 13.04.2024.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: -  PROPERTIES
    
    var fruits: [Fruit] = fruitsData
    // MARK: - BODY
    var body: some View {
       
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item in
                    
                    NavigationLink(destination: FruitDetialView(fruit: item)) {
                        
                        FruitRowView(fruits: item)
                            .padding(.vertical, 4)
                    }
                }
            }.navigationTitle("List")
                
                .listStyle(.plain)
        } //: NAVIGATION
    }
}

#Preview {
    ContentView(fruits: fruitsData)
}
