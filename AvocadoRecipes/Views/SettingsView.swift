//
//  SettingsView.swift
//  AvocadoRecipes
//
//  Created by Анастасия Кутняхова on 09.09.2024.
//

import SwiftUI

struct SettingsView: View {
    @State private var enableNotification: Bool = true
    @State private var backgroundRefresh: Bool = false
    
    var body: some View {
        VStack {
            VStack(spacing: 5) {
                Image("avocado")
                    .resizable()
                    .scaledToFit()
                    .padding(.top)
                    .frame(width: 100, height: 100)
                    .shadow(color: Color.black.opacity(0.25), radius: 8, x: 0, y: 4)
                
                Text("Avocados".uppercased())
                    .modifier(TitleModifier(customPadding: 0))
            }
            
            List {
                // MARK: - SECTION #1
                Section(header: Text("General Settings")) {
                    Toggle(isOn: $enableNotification) {
                        Text("Enable notifiacation")
                    }
                    
                    Toggle(isOn: $backgroundRefresh) {
                        Text("Background refresh")
                    }
                }
                
                // MARK: - SECTION #2
                Section(header: Text("Application")) {
                    if enableNotification {
                        SettingsRowView(label: "Product", caption: "Avocado Recipes")
                        
                        SettingsRowView(label: "Compatibility", caption: "iPhone & iPad")
                        
                        SettingsRowView(label: "Developer", caption: "Kutnialhova Anastasiia")
                        
                        SettingsRowView(label: "Designer", caption: "Robert Petras")
                        
                        SettingsRowView(label: "Website", caption: "https://some.academy")
                        
                        SettingsRowView(label: "Version", caption: "1.0")
                    } else {
                        SettingsRowView(label: "Personal message", caption: "Happy coding 👍")
                    }
                }
            } //: LIST
        } //: VSTACK
        .frame(maxWidth: 640)
    }
}

#Preview {
    SettingsView()
}
