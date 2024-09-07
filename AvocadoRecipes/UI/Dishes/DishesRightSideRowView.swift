//
//  DishesRightSideRowView.swift
//  AvocadoRecipes
//
//  Created by Анастасия Кутняхова on 07.09.2024.
//

import SwiftUI

struct DishesRightSideRowView: View {
    let imageName: String
    let label: String
    
    var body: some View {
        HStack {
            Text(label)
                .font(.system(.callout, design: .serif))
            
            Spacer()
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 42, height: 42)
        }
    }
}
