//
//  CardView.swift
//  Fructus
//
//  Created by Sandesh Naik on 23/06/23.
//

import SwiftUI

struct CardView: View {
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    let fruit: Fruit
    @State private var isAnimating = false
    var body: some View {
        ZStack {
            LinearGradient(colors: fruit.gradientColors,
                           startPoint: .top,
                           endPoint: .bottom)
            .cornerRadius(24)
            
            VStack(spacing: 16) {
                Image(fruit.image)
                    .resizable()
                    .frame(maxWidth: .infinity)
                    .frame(height: 300)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                
                Text(fruit.title)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                Text(fruit.headline)
                    .font(.body)
                    .multilineTextAlignment(.center)
                    .padding()
                
                Button {
                    isOnboarding = false
                } label: {
                    Capsule()
                        .stroke(lineWidth: 2)
                        .frame(width: 100, height: 40)
                        .overlay {
                            HStack{
                                Text("Start")
                                Image(systemName: "arrow.right.circle")
                                    .resizable()
                                    .frame(width: 22, height: 22)
                                    .fontWeight(.regular)
                            }
                        }
                        
                }
            }
            .foregroundColor(.white)
        }
        .padding(.horizontal, 16)
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(fruit: fruitsData[5])
    }
}
