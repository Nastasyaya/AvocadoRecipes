//
//  SettingsRowView.swift
//  AvocadoRecipes
//
//  Created by Анастасия Кутняхова on 09.09.2024.
//

import SwiftUI

struct SettingsRowView: View {
    let label: String
    let caption: String
    
    var body: some View {
        HStack {
            Text(label).foregroundColor(Color.gray)
            Spacer()
            Text(caption)
        }
    }
}

#Preview {
    SettingsRowView(label: "Website", caption: "https://someinformation")
}
