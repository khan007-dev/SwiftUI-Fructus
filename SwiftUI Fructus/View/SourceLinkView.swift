//
//  SourceLinkView.swift
//  SwiftUI Fructus
//
//  Created by Khan on 17.04.2024.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
       
        GroupBox() {
            HStack {
                Text("Content Source")
                Spacer()
                Link("Google", destination: URL(string: "https: //www.google.com")!)
                Image(systemName: "arrow.up.right.square")
            }
            .font(.footnote)
        }
    }
}

#Preview {
    SourceLinkView()
        .previewLayout(.sizeThatFits)
        .padding()
}
