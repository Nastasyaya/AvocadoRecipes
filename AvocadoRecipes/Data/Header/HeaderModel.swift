//
//  HeaderModel.swift
//  AvocadoRecipes
//
//  Created by Анастасия Кутняхова on 07.09.2024.
//

import Foundation

struct HeaderModel: Identifiable {
    let id = UUID()
    let image: String
    let headline: String
    let subheadline: String
}
