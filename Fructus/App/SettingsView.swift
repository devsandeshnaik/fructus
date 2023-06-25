//
//  SettingsView.swift
//  Fructus
//
//  Created by Sandesh Naik on 25/06/23.
//

import SwiftUI

struct SettingsView: View {
    @Environment(\.dismiss) var dismiss
    @AppStorage("isOnboarding") var isOnboarding: Bool = true

    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(spacing: 20) {
                GroupBox {
                    VStack(alignment: .leading) {
                        Text("Fructus")
                            .font(.title)
                            .fontWeight(.bold)
                        
                        Divider()
                        
                        HStack {
                            Image("logo")
                                .resizable()
                                .frame(width: 80, height: 80)
                                .clipShape(RoundedRectangle(cornerRadius: 8))
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                                .fontDesign(.rounded)
                        }
                    }
                }
                .padding(.horizontal, 16)
                
                GroupBox {
                    VStack(alignment: .leading) {
                        Text("Customization")
                            .font(.title)
                            .fontWeight(.bold)
                        
                        Divider()
                        
                        Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
                            .font(.footnote)
                        GroupBox {
                            Toggle(isOn: $isOnboarding) {
                              if isOnboarding {
                                Text("Restarted".uppercased())
                                  .fontWeight(.bold)
                                  .foregroundColor(Color.green)
                              } else {
                                Text("Restart".uppercased())
                                  .fontWeight(.bold)
                                  .foregroundColor(Color.secondary)
                              }
                            }
                        }
                    }
                }
                .padding(.horizontal, 16)
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
