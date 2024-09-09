//
//  RecipeDetailView.swift
//  AvocadoRecipes
//
//  Created by Анастасия Кутняхова on 08.09.2024.
//

import SwiftUI

struct RecipeDetailView: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var pulsate: Bool = false
    
    let viewModel: RecipeModel
    
    var body: some View {
        // MARK: - BODY
        ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing: 16) {
                // IMAGE
                Image(viewModel.image)
                    .resizable()
                    .scaledToFit()
                
                // TITLE
                Text(viewModel.title)
                    .font(.system(.largeTitle, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorGreenAdaptive"))
                    .padding(.top, 10)
                
                // RATING
                RecipeRating(viewModel: viewModel)
                    .padding(.top, 4)
                
                // MARK: - COOKING DETAILS
                HStack {
                    RecipeCommentsView(imageName: "person.2", label: "Serves:", caption: (viewModel.serves))
                    
                    RecipeCommentsView(imageName: "clock", label: "Prep:", caption: (viewModel.preparation))
                    
                    RecipeCommentsView(imageName: "flame", label: "Cooking:", caption: (viewModel.cooking))
                }
                
                // MARK: - INGREDIENTS
                Text("Ingredients")
                    .modifier(TitleModifier(customPadding: 8))
                
                VStack(alignment: .leading) {
                    ForEach(viewModel.ingredients, id: \.self) { ingredient in
                        Text(ingredient)
                            .font(.footnote)
                        
                        Divider()
                    }
                }
                .padding(.horizontal, 20)
                
                // MARK: -INSTRUCTIONS
                Text("Instructions")
                    .modifier(TitleModifier(customPadding: 8))
                
                VStack {
                    ForEach(viewModel.instructions, id: \.self) { item in
                        VStack(spacing: 5) {
                                ChevronImageView()
                                Text(item)
                                .multilineTextAlignment(.center)
                                    .font(.system(.body, design: .serif))
                                    .padding()
                            }
                    }
                }
                .padding(.horizontal, 20)
                .padding(.bottom, 24)
            }
        }
        .ignoresSafeArea()
        // MARK: - BACK BUTTON
        .overlay {
            HStack {
                Spacer()
                VStack {
                    Button(
                        action: {
                            self.presentationMode.wrappedValue.dismiss()
                        }, label: {
                            Image(systemName: "chevron.down.circle.fill")
                                .font(.title)
                                .foregroundColor(Color.white)
                                .shadow(radius: 4)
                                .opacity(self.pulsate ? 1 : 0.6)
                                .scaleEffect(self.pulsate ? 1.2 : 0.8, anchor: .center)
                                .animation(.easeInOut(duration: 1.5).repeatForever(autoreverses: true), value: pulsate)
                        })
                    .padding(.trailing, 20)
                    .padding(.top, 24)
                    
                    Spacer()
                }
            }
        }
        .onAppear() {
          self.pulsate.toggle()
        }
    }
}

#Preview {
    RecipeDetailView(viewModel: recipesData.first!)
}

struct ChevronImageView: View {
    var body: some View {
        Image(systemName: "chevron.down.circle")
            .resizable()
            .frame(width: 42, height: 42)
            .imageScale(.large)
            .font(Font.title.weight(.ultraLight))
            .foregroundColor(Color("ColorGreenAdaptive"))
    }
}
