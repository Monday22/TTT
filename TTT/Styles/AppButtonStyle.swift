//
//  AppButtonStyle.swift
//  TTT
//
//  Created by Anthony Lartey on 25/03/2024.
//

import SwiftUI

struct AppButtonStyle: ButtonStyle {
    let color: Color
    init(color: Color) {
        self.color = color
    }
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(height: 40.0)
            .frame(maxWidth: .infinity)
            .font(.title2)
            .fontWeight(Font.Weight.semibold)
            .padding()
            .background(color)
            .foregroundStyle(Color.white)
            .clipShape(Capsule())
            .opacity(configuration.isPressed ? 0.5 : 1.0)
            .shadow(radius: 8.0)
    }
}
extension ButtonStyle where Self == AppButtonStyle {
    static func appButton(color: Color) -> AppButtonStyle {
        AppButtonStyle(color: color)
    }
}
