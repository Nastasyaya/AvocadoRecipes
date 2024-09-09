//
//  TextModifire.swift
//  AvocadoRecipes
//
//  Created by Анастасия Кутняхова on 09.09.2024.
//

import SwiftUI

struct TitleModifier: ViewModifier {
    let customPadding: CGFloat
    
  func body(content: Content) -> some View {
    content
      .font(.system(.title, design: .serif))
      .fontWeight(.bold)
      .foregroundColor(Color("ColorGreenAdaptive"))
      .padding(customPadding)
  }
}
