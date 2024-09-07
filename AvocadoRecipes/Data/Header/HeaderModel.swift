//
//  HeaderModel.swift
//  AvocadoRecipes
//
//  Created by Анастасия Кутняхова on 07.09.2024.
//

import Foundation

struct HeaderModel: Identifiable {
  var id = UUID()
  var image: String
  var headline: String
  var subheadline: String
}
