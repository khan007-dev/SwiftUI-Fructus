//
//  ContentView.swift
//  SwiftUI Fructus
//
//  Created by Khan on 13.04.2024.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: -  PROPERTIES
    
    @State private var isShowingSettings: Bool = false
    
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
                .navigationBarItems(trailing: Button(action: {
                    isShowingSettings = true
                }, label: {
                    Image(systemName: "slider.horizontal.3")
                })) //: BUTTON
                .sheet(isPresented: $isShowingSettings, content: {
                    SettingsView()
                })
                
                .listStyle(.plain)
        } //: NAVIGATION
    }
}

#Preview {
    ContentView(fruits: fruitsData)
}
