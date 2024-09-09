//
//  RipeningStageView.swift
//  AvocadoRecipes
//
//  Created by Анастасия Кутняхова on 07.09.2024.
//

import SwiftUI

struct RipeningStageView: View {
    let ripeningStages: [RipeningModel] = ripeningData
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            
            HStack(spacing: 25) {
                ForEach(ripeningStages) { item in
                    RipeningView(viewModel: item)
                }
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    RipeningStageView()
}
