//
//  SettingsView.swift
//  SwiftUI Fructus
//
//  Created by Khan on 22.04.2024.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - PROPERTIES
    
    @Environment(\.presentationMode) var presentationMode
    // MARK: - BODY
    var body: some View {
       
        NavigationView {
            
            ScrollView(.vertical, showsIndicators: false ) {
                
                VStack (spacing: 20) {
                    
                    
                }
                .navigationBarTitle(("Settings"), displayMode: .large)
                .navigationBarItems (trailing: Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "xmark")
                }))
            } //: SCROLLVIEW
        } //: NAVIATION VIEW
    }
}

#Preview {
    SettingsView()
        .preferredColorScheme(.dark)
        
}
