//
//  RipeningModel.swift
//  AvocadoRecipes
//
//  Created by Анастасия Кутняхова on 07.09.2024.
//

import Foundation

struct RipeningModel: Identifiable {
  let id = UUID()
  let image: String
  let stage: String
  let title: String
  let description: String
  let ripeness: String
  let instruction: String
}
