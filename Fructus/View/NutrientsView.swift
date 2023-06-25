//
//  NutrientsView.swift
//  Fructus
//
//  Created by Sandesh Naik on 25/06/23.
//

import SwiftUI

struct NutrientsView: View {
    var fruit: Fruit
    let nutrients = ["Energy", "Sugar", "Fat", "Protien", "Vitamis", "Minerals"]
    var body: some View {
        GroupBox {
            DisclosureGroup("Nutritional values per 100g") {
                ForEach(0..<nutrients.count, id: \.self) { item in
                    Divider()
                    HStack {
                        HStack(alignment: .top, spacing: 0) {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                            Spacer()
                        }
                        .foregroundColor(.red)
                        .font(.body)
                        .fontWeight(.bold)
                        .frame(width: 100)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.leading)
                        Spacer()
                    }
                }
            }
        }
    }
}

struct NutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        NutrientsView(fruit: fruitsData[3])
            .previewLayout(.fixed(width: 374, height: 480))
            .tint(.black)
    }
}
