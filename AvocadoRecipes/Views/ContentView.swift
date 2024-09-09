//
//  ContentView.swift
//  AvocadoRecipes
//
//  Created by Анастасия Кутняхова on 07.09.2024.
//

import SwiftUI

struct ContentView: View {
    enum Destination {
        case mainView
        case ripening
        case settings
    }
    
//    init() {
//        let appearance = UITabBarAppearance()
//        appearance.configureWithTransparentBackground()
//        UITabBar.appearance().standardAppearance = appearance
//        
//        if #available(iOS 15.0, *) {
//            UITabBar.appearance().scrollEdgeAppearance = appearance
//        }
//    }
    
    var body: some View {
        TabView {
            MainView()
            .tabItem {
                Image("tabicon-book")
                Text("Recipes")
            }
            RipeningStageView()
                .tabItem {
                    Image("tabicon-avocado")
                    Text("Ripening")
                }
            
            SettingsView()
                .tabItem {
                    Image("tabicon-settings")
                    Text("Settings")
                }
        }
        .foregroundStyle(.black)
    }
}

#Preview {
    ContentView()
}
