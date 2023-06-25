//
//  ContentView.swift
//  Fructus
//
//  Created by Sandesh Naik on 23/06/23.
//

import SwiftUI

struct ContentView: View {
    @State private var showSettings: Bool = false
    var body: some View {
        FruitListView(showSettings: $showSettings)
            .sheet(isPresented: $showSettings) {
                SettingsView()
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView()
        }
    }
}
