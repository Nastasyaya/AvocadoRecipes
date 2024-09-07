//
//  DishesView.swift
//  AvocadoRecipes
//
//  Created by Анастасия Кутняхова on 07.09.2024.
//

import SwiftUI

struct DishesView: View {
    var body: some View {
        HStack(spacing: 4) {
            
            // 1st Column
            VStack(alignment: .leading, spacing: 4) {
                DishesLeftSideRowView(imageName: "icon-toasts", label: "Toasts")
                
                Divider()
                
                DishesLeftSideRowView(imageName: "icon-tacos", label: "Tacos")
                
                Divider()
                
                DishesLeftSideRowView(imageName: "icon-salads", label: "Salads")
                
                Divider()
                
                DishesLeftSideRowView(imageName: "icon-halfavo", label: "Spreads")
            }
            
            // 2nd Column
            VStack(spacing: 16) {
                HStack {
                    Divider()
                }
                Image(systemName: "heart.circle")
                    .font(Font.title.weight(.ultraLight))
                    .imageScale(.large)
                
                HStack {
                    Divider()
                }
            }
            
            // 3rd Column
            VStack(alignment: .trailing, spacing: 4) {
                DishesRightSideRowView(imageName: "icon-guacamole", label: "Guacamole")
                
                Divider()
                
                DishesRightSideRowView(imageName: "icon-sandwiches", label: "Sandwich")
                
                Divider()
                
                DishesRightSideRowView(imageName: "icon-soup", label: "Soup")
                
                Divider()
                
                DishesRightSideRowView(imageName: "icon-smoothies", label: "Smoothie")
            }
        }
        .foregroundColor(Color.gray)
        .padding(.horizontal)
        .frame(maxHeight: 220)
    }
}

#Preview {
    DishesView()
}
