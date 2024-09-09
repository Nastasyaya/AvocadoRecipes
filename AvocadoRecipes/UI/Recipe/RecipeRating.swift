//
//  RecipeRating.swift
//  AvocadoRecipes
//
//  Created by Анастасия Кутняхова on 07.09.2024.
//

import SwiftUI

struct RecipeRating: View {
    let viewModel: RecipeModel
    
    var body: some View {
        HStack(spacing: 5) {
            ForEach(1...(viewModel.rating), id: \.self) { _ in
                Image(systemName: "star.fill")
                    .font(.body)
                    .foregroundColor(Color.yellow)
            }
        }
    }
}

#Preview {
    RecipeRating(viewModel: recipesData.first!)
}
