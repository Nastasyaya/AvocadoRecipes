//
//  RecipeCardView.swift
//  AvocadoRecipes
//
//  Created by Анастасия Кутняхова on 09.09.2024.
//

import SwiftUI

struct RecipeCardView: View {
    // MARK: - PROPERTY
    @State private var showModal: Bool = false
    
    let viewModel: RecipeModel
    
    var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
    
    // MARK: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: .zero) {
            Image(viewModel.image)
                .resizable()
                .scaledToFit()
                .overlay {
                    HStack {
                        Spacer()
                        
                        VStack {
                            Image(systemName: "bookmark")
                                .font(Font.title.weight(.light))
                                .foregroundColor(Color.white)
                                .imageScale(.small)
                                .shadow(color: Color.black.opacity(0.25), radius: 2)
                                .padding(.trailing, 20)
                                .padding(.top, 22)
                            
                            Spacer()
                        }
                        
                    }
                }
            
            VStack(alignment: .leading, spacing: 12) {
                // MARK: - TITLE
                Text(viewModel.title)
                    .modifier(TitleModifier(customPadding: 0))
                
                // MARK: - HEADLINE
                Text(viewModel.headline)
                    .font(.system(.body, design: .serif))
                    .foregroundColor(Color.gray)
                    .italic()
                
                // MARK: - RATING
                RecipeRating(viewModel: viewModel)
                
                // MARK: - COMMENTS
                HStack {
                    RecipeCommentsView(imageName: "person.2", label: "Serves:", caption: (viewModel.serves))
                    
                    RecipeCommentsView(imageName: "clock", label: "Prep:", caption: (viewModel.preparation))
                    
                    RecipeCommentsView(imageName: "flame", label: "Cooking:", caption: (viewModel.cooking))
                }
            }
            .padding()
            .padding(.bottom, 12)
        }
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .shadow(radius: 8)
        
        .onTapGesture {
            hapticImpact.impactOccurred()
            showModal = true
        }
        .sheet(isPresented: $showModal, content: {
            RecipeDetailView(viewModel: viewModel)
        })
    }
}

// MARK: - PREVIEW
#Preview {
        RecipeCardView(viewModel: recipesData.first!)
}
