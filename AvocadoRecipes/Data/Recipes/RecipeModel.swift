//
//  RecipeModel.swift
//  AvocadoRecipes
//
//  Created by Анастасия Кутняхова on 07.09.2024.
//

import Foundation

struct RecipeModel: Identifiable {
  let id = UUID()
  let title: String
  let headline: String
  let image: String
  let rating: Int
  let serves: Int
  let preparation: Int
  let cooking: Int
  let instructions: [String]
  let ingredients: [String]
}
