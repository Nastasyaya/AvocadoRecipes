//
//  RipeningView.swift
//  AvocadoRecipes
//
//  Created by Анастасия Кутняхова on 07.09.2024.
//

import SwiftUI

struct RipeningView: View {
    // MARK: - PROPERTY
    @State private var slideInAnimation: Bool = false
    
    let viewModel: RipeningModel
    
    var body: some View {
        VStack {
            Image(viewModel.image)
                .resizable()
                .frame(width: 100, height: 100)
                .clipShape(Circle())
                .background(
                    Circle()
                        .fill(Color("ColorGreenLight"))
                        .frame(width: 110, height: 110)
                )
                .background(
                    Circle()
                        .fill(Color("ColorAppearanceAdaptive"))
                        .frame(width: 120, height: 120)
                )
                .zIndex(1)
                .animation(Animation.easeInOut(duration: 1), value: slideInAnimation)
                .offset(y: slideInAnimation ? 55 : -55)
            
            VStack(spacing: 10) {
                // MARK: - STAGE
                VStack {
                    Text(viewModel.stage)
                        .font(.system(.largeTitle, design: .serif))
                        .fontWeight(.bold)
                    
                    Text("STAGE")
                        .font(.system(.body, design: .serif))
                        .fontWeight(.heavy)
                }
                .foregroundColor(Color("ColorGreenMedium"))
                .padding(.top, 65)
                .frame(width: 180)
                
                // MARK: - TITLE
                Text(viewModel.title)
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorGreenMedium"))
                    .padding(.vertical, 12)
                    .frame(width: 220)
                    .background(
                        RoundedRectangle(cornerRadius: 12)
                            .fill(LinearGradient(gradient: Gradient(colors: [Color.white, Color("ColorGreenLight")]), startPoint: .top, endPoint: .bottom))
                            .shadow(color: Color("ColorBlackTransparentLight"), radius: 6, x: 0, y: 6)
                    )
                
                Spacer()
                
                // MARK: - DESCRIPTION
                Text(viewModel.description)
                    .foregroundColor(Color("ColorGreenDark"))
                    .fontWeight(.bold)
                
                Spacer()
                
                // MARK: - RIPENESS
                Text(viewModel.ripeness.uppercased())
                    .foregroundColor(Color.white)
                    .font(.system(.callout, design: .serif))
                    .fontWeight(.bold)
                    .shadow(radius: 3)
                    .padding(.vertical)
                    .frame(width: 185)
                    .background(
                        RoundedRectangle(cornerRadius: 12)
                            .fill(LinearGradient(gradient: Gradient(colors: [Color("ColorGreenMedium"), Color("ColorGreenDark")]), startPoint: .top, endPoint: .bottom))
                            .shadow(color: Color("ColorBlackTransparentLight"), radius: 6, x: 0, y: 6)
                    )
                
                // MARK: - INSTRUCTION
                Text(viewModel.instruction)
                    .font(.footnote)
                    .foregroundColor(Color("ColorGreenLight"))
                    .fontWeight(.bold)
                    .frame(width: 160)
                
                Spacer()
            }
            .multilineTextAlignment(.center)
            .padding(.horizontal)
            .frame(width: 260, height: 485)
            .background {
                LinearGradient(gradient: Gradient(colors: [Color("ColorGreenLight"), Color("ColorGreenMedium")]), startPoint: .top, endPoint: .bottom)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
            }
        }
        .onAppear(perform: {
            slideInAnimation = true
        })
    }
}
// MARK: - PREVIEW
#Preview {
    RipeningView(viewModel: ripeningData.first!)
}
