//
//  DetailView.swift
//  Fructus
//
//  Created by Sandesh Naik on 25/06/23.
//

import SwiftUI

struct DetailView: View {
    var fruit: Fruit
    var body: some View {
        NavigationView {
            ScrollView(showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    HeaderView(fruit: fruit)
                        .edgesIgnoringSafeArea(.top)
                    VStack(alignment: .leading, spacing: 20) {
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        NutrientsView(fruit: fruit)
                            .tint(.primary)
                        
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                        SourceView(fruit: fruit)
                            .padding(.top, 20)
                            .padding(.bottom, 40)
                            .tint(.primary)

                    }
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                }
            }
            .navigationBarTitle(fruit.title, displayMode: .inline)
            .navigationBarHidden(true)
            .edgesIgnoringSafeArea(.top)
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(fruit: fruitsData[6])
    }
}
