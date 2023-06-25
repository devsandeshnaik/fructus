//
//  HeaderView.swift
//  Fructus
//
//  Created by Sandesh Naik on 25/06/23.
//

import SwiftUI

struct HeaderView: View {
    var fruit: Fruit
    @State private var isAnimatingImage: Bool = false
    var body: some View {
        ZStack {
            LinearGradient(colors: fruit.gradientColors,
                           startPoint: .top,
                           endPoint: .bottom)
            
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .padding(.vertical, 20)
                .scaleEffect(isAnimatingImage ? 1.0 : 0.6)
        }
        .frame(height: 440)
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimatingImage = true
            }
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(fruit: fruitsData[3])
            .previewLayout(.fixed(width: 375, height: 440))
    }
}
