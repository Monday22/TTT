//
//  ButtonView.swift
//  TTT
//
//  Created by Anthony Lartey on 25/03/2024.
//

import SwiftUI

struct ButtonView: View {
    @Binding var gameMode: GameMode
    var body: some View {
        VStack(spacing: 15.0) {
            ForEach(GameMode.allCases, id: \.self) { mode in
                Button {
                    self.gameMode = mode
                } label: {
                    Text(mode.name)
                }
                .buttonStyle(.appButton(color: mode.color))
            }
        }
        .padding(.horizontal, 16.0)
        .padding(.bottom, 50.0)
    }
}
#Preview {
    ButtonView(gameMode: .constant(GameMode.online))
}
