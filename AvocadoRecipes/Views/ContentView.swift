//
//  ContentView.swift
//  AvocadoRecipes
//
//  Created by Анастасия Кутняхова on 07.09.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab = 0
    
    var body: some View {
        TabView {
            MainView()
                .tabItem {
                    Image("tabicon-book")
                    Text("Recipes")
                }
                .tag(0)
            
            RipeningStageView()
                .tabItem {
                    Image("tabicon-avocado")
                    Text("Ripening")
                }
                .tag(1)
            
            SettingsView()
                .tabItem {
                    Image("tabicon-settings")
                    Text("Settings")
                }
                .tag(2)
        }
        .tint(.green)
        .onAppear {
            UITabBar.appearance().unselectedItemTintColor = UIColor.gray
        }
    }
}

#Preview {
    ContentView()
}
