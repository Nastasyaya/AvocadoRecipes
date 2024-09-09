//
//  MainView.swift
//  AvocadoRecipes
//
//  Created by Анастасия Кутняхова on 09.09.2024.
//

import SwiftUI

struct MainView: View {
    // MARK: - PROPERTIES
    private let headers: [HeaderModel] = headersData
    private let facts: [FactsModel] = factsData
    private let recipes: [RecipeModel] = recipesData
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top, spacing: .zero) {
                        ForEach(headers) { header in
                            HeaderView(viewModel: header)
                        }
                    }
                } //: HEADERS SCROLL VIEW
                
                // MARK: - DISHES
                Text("Avocado Dishes")
                    .modifier(TitleModifier(customPadding: 8))
                
                DishesView()
                    .frame(maxWidth: 640)
                
                // MARK: - AVOCADO FACTS
                Text("Avocado Facts")
                  .modifier(TitleModifier(customPadding: 8))
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top, spacing: 60) {
                        ForEach(facts) { item in
                            FactCard(viewModel: item)
                        }
                    }
                    .padding(.leading, 60)
                    .padding(.trailing, 20)
                } //: FACTS SCROLL VIEW
                
                // MARK: - RECIPE CARDS
                Text("Avocado Recipes")
                  .modifier(TitleModifier(customPadding: 8))
                
                VStack(spacing: 20) {
                    ForEach(recipes) { recipe in
                        RecipeCardView(viewModel: recipe)
                    }
                }
                .padding(.horizontal)
                .frame(maxWidth: 640)

                // MARK: - FOOTER
                VStack(spacing: 20) {
                  Text("All About Avocados")
                    .modifier(TitleModifier(customPadding: 8))
                    
                  Text("Everything you wanted to know about avocados but were too afraid to ask.")
                    .font(.system(.body, design: .serif))
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.gray)
                    .frame(minHeight: 60)
                } //: VSTACK FOOTER
                .frame(maxWidth: 640)
                .padding()
                .padding(.bottom, 60)
            } //: VSTACK
        } //: VERTICAL SCROLL VIEW
        .ignoresSafeArea()
    }
}

#Preview {
    MainView()
}
