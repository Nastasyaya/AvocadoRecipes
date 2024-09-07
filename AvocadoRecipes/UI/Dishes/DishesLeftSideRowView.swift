//
//  DishesLeftSideRowView.swift
//  AvocadoRecipes
//
//  Created by Анастасия Кутняхова on 07.09.2024.
//

import SwiftUI

struct DishesLeftSideRowView: View {
    let imageName: String
    let label: String
    
    var body: some View {
        HStack {
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 42, height: 42)
            Spacer()
            
            Text(label)
                .font(.system(.callout, design: .serif))
        }
    }
}

#Preview {
    DishesLeftSideRowView(imageName: "icon-sandwiches", label: "Sandwich")
}
