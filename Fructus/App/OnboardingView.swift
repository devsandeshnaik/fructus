//
//  OnboardingView.swift
//  Fructus
//
//  Created by Sandesh Naik on 23/06/23.
//

import SwiftUI

struct OnboardingView: View {
    
    let fruits: [Fruit] = Array(fruitsData.prefix(6))
    var body: some View {
        TabView {
            ForEach(fruits) { fruit in
               CardView(fruit: fruit)
            }
        }.tabViewStyle(.page)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
