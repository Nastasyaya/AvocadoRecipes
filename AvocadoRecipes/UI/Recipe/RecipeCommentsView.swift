//
//  RecipeCommentsView.swift
//  AvocadoRecipes
//
//  Created by Анастасия Кутняхова on 07.09.2024.
//

import SwiftUI

struct RecipeCommentsView: View {
    let imageName: String
    let label: String
    let caption: Int
    
    var body: some View {
        HStack(spacing: 2) {
            Image(systemName: "\(imageName)")
            Text(
                "\(Text(label)) \(caption)")
        }
        .font(.footnote)
        .foregroundColor(Color.gray)
    }
}

#Preview {
    RecipeCommentsView(imageName: "person.fill", label: "Services:", caption: 4)
}
