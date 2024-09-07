//
//  FactCard.swift
//  AvocadoRecipes
//
//  Created by Анастасия Кутняхова on 07.09.2024.
//

import SwiftUI

struct FactCard: View {
    let viewModel: FactsModel
    
    var body: some View {
        ZStack {
            // MARK: - TEXT
            Text(viewModel.content)
                .padding(
                    EdgeInsets(top: 0, leading: 55, bottom: 0, trailing: 10)
                )
                .multilineTextAlignment(.leading)
                .font(.footnote)
                .foregroundColor(Color.white)
                .frame(width: 300, height: 135)
                .background {
                    LinearGradient(
                        colors: [
                            Color("ColorGreenMedium"),
                            Color("ColorGreenLight")
                        ],
                        startPoint: .leading,
                        endPoint: .trailing
                    )
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                }
            // MARK: - IMAGE
            Image(viewModel.image)
                .resizable()
                .frame(width: 66, height: 66)
                .clipShape(Circle())
                .background(
                    Circle()
                        .fill(Color.white)
                        .frame(width: 74, height: 74)
                )
                .background(
                    Circle()
                        .fill(
                            LinearGradient(gradient: Gradient(colors: [Color("ColorGreenMedium"), Color("ColorGreenLight")]), startPoint: .trailing, endPoint: .leading)
                        )
                        .frame(width: 82, height: 82)
                )
                .background (
                    Circle()
                        .fill(Color("ColorAppearanceAdaptive"))
                        .frame(width: 90, height: 90)
                )
                .offset(x: -150)
        }
    }
}

#Preview {
    FactCard(viewModel: factsData.first!)
}
