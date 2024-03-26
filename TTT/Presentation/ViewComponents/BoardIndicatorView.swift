//
//  BoardIndicatorView.swift
//  TTT
//
//  Created by Anthony Lartey on 25/03/2024.
//

import SwiftUI

struct BoardIndicatorView: View {
    var imageName: String
    @State private var scale = 1.5
    var body: some View {
        Image(systemName: imageName)
            .resizable()
            .frame(width: 40.0, height: 40.0)
            .scaledToFit()
            .foregroundStyle(Color.indigo)
            .scaleEffect(scale)
            .animation(.spring(), value: scale)
            .shadow(radius: 5.0)
            .onChange(of: imageName) {
                self.scale = 2.5
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                    self.scale = 1.5
                }
            }
    }
}
#Preview {
    BoardIndicatorView(imageName: "applelogo")
}
