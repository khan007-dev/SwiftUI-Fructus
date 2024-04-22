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
                    
                    // MARK: - SECTION 1
                    
                    GroupBox(label: 
                             SettingLabelView(labelTitle: "Fructus", labelImage: "info.circle")) {
                        
                        Divider().padding(.vertical, 4)
                        HStack {
                          
                            HStack (alignment: .center, spacing: 10) {
                                Image(.logo)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 80, height: 80)
                                    .cornerRadius(9)
                                Text("Most Fruits are naturally low in fat, sodium and calories.")
                                    .font(.footnote)
                            }
                        }
                    }
                    
                    // MARK: - SECTION 2
                    // MARK: - SECTION 3
                    
                    
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
