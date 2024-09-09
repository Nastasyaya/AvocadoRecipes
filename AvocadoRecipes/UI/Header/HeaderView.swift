//
//  HeaderView.swift
//  AvocadoRecipes
//
//  Created by Анастасия Кутняхова on 08.09.2024.
//

import SwiftUI

struct HeaderView: View {
    @State private var showHeadline: Bool = false
    
    let viewModel: HeaderModel
    
    var slideInAnimation: Animation {
      Animation.spring(response: 1.5, dampingFraction: 0.5, blendDuration: 0.5)
        .speed(1)
        .delay(0.25)
    }
    
    var body: some View {
        ZStack {
            // MARK: - IMAGE
          Image(viewModel.image)
            .resizable()
            .aspectRatio(contentMode: .fill)
          
          HStack(alignment: .top, spacing: 0) {
            Rectangle()
              .fill(Color("ColorGreenLight"))
              .frame(width: 4)
              
              // MARK: - TEXT
            VStack(alignment: .leading, spacing: 6) {
              Text(viewModel.headline)
                .font(.system(.title, design: .serif))
                .fontWeight(.bold)
              
              Text(viewModel.subheadline)
                .font(.footnote)
                .multilineTextAlignment(.leading)
            }
            .shadow(radius: 3)
            .padding(.horizontal, 20)
            .frame(height: 105)
            .background(Color.black.opacity(0.25))
          } //: HSTACK
          .foregroundColor(Color.white)
          .frame(width: 285, height: 105)
          .offset(x: -66, y: showHeadline ? 75 : 220)
          .animation(slideInAnimation, value: showHeadline)
          .onAppear(perform: {
            showHeadline = true
          })
          .onDisappear(perform: {
            showHeadline = false
          })
        } //: ZSTACK
        .frame(width: 480, height: 320)
      }
    }

#Preview {
    HeaderView(viewModel: headersData.first!)
}
