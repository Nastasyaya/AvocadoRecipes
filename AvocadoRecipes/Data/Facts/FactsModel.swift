//
//  FactsModel.swift
//  AvocadoRecipes
//
//  Created by Анастасия Кутняхова on 07.09.2024.
//

import Foundation

struct FactsModel: Identifiable {
    let id = UUID()
    let image: String
    let content: String
}
