//
//  SettingLabelView.swift
//  SwiftUI Fructus
//
//  Created by Khan on 22.04.2024.
//

import SwiftUI

struct SettingLabelView: View {
    
    var labelTitle: String
    var labelImage: String
    var body: some View {
    
                    HStack {
            Text(labelTitle).textCase(.uppercase)
            Spacer()
            Image(systemName: labelImage)

            }
        
    }
}

#Preview {
    SettingLabelView(labelTitle: "Fructus", labelImage: "info.circle")
        .previewLayout(.sizeThatFits)
        .padding()
}
