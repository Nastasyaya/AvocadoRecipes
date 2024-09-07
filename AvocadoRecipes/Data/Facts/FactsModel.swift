//
//  FactsModel.swift
//  AvocadoRecipes
//
//  Created by Анастасия Кутняхова on 07.09.2024.
//

import Foundation

struct FactsModel: Identifiable {
  var id = UUID()
  var image: String
  var content: String
}
