//
//  TitleView.swift
//  TTT
//
//  Created by Anthony Lartey on 25/03/2024.
//

import SwiftUI

struct TitleView: View {
    var body: some View {
        VStack(spacing: 20.0) {
            Image(systemName: "number")
                .renderingMode(.original)
                .resizable()
                .frame(width: 180.0, height: 180.0)
            Text(AppStrings.appName)
                .font(.largeTitle)
                .fontWeight(.semibold)
        }
        .foregroundStyle(Color.indigo)
        .padding(.top, 50.0)
    }
}
#Preview {
    TitleView()
}
