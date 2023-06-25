//
//  FruitListView.swift
//  Fructus
//
//  Created by Sandesh Naik on 24/06/23.
//

import SwiftUI

struct FruitListView: View {
    @Binding var showSettings: Bool
    let fruit: [Fruit] = fruitsData
    var body: some View {
        NavigationStack {
            List {
                ForEach(fruit) { fruit in
                    NavigationLink(value: fruit, label: {
                        HStack {
                            RoundedRectangle(cornerRadius: 8)
                                .fill(LinearGradient(colors: fruit.gradientColors,
                                                     startPoint: .top,
                                                     endPoint: .bottom))
                                .frame(width: 80, height: 80)
                                .overlay {
                                    Image(fruit.image)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(maxWidth: .infinity)
                                        .shadow(radius: 2)
                                }
                            
                            VStack(alignment: .leading,spacing: 8) {
                                Text(fruit.title)
                                    .font(.title)
                                    .fontWeight(.bold)
                                
                                Text(fruit.headline)
                                    .font(.caption)
                                    .foregroundColor(.secondary)
                            }
                        }
                    })
                }
            }
            .listStyle(.plain)
            .navigationTitle("Fruits")
            .navigationDestination(for: Fruit.self) { fruit in
                DetailView(fruit: fruit)
            }
            .navigationBarItems(trailing:
                                    Button {
                showSettings.toggle()
            } label: {
                Image(systemName: "slider.horizontal.3")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 24, height: 24)
                    .fontWeight(.bold)
                    .tint(.primary)
                    .padding()
                    .padding(.bottom, 8)
            }
            )
        }.tint(.primary)
    }
}

struct FruitListView_Previews: PreviewProvider {
    static var previews: some View {
        FruitListView(showSettings: .constant(false))
    }
}
