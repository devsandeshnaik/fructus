//
//  SourceView.swift
//  Fructus
//
//  Created by Sandesh Naik on 25/06/23.
//

import SwiftUI

struct SourceView: View {
    var fruit: Fruit
    var body: some View {
        GroupBox {
            HStack {
                Text("Content Source")
                Spacer()
                Link("Wikipedia",
                     destination: URL(string:"https://wikipedia.com")!)
                Image(systemName: "arrow.up.right.square")
            }
            .font(.footnote)
        }
    }
}

struct SourceView_Previews: PreviewProvider {
    static var previews: some View {
        SourceView(fruit: fruitsData[2])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
