//
//  Main.swift
//  TTT
//
//  Created by Anthony Lartey on 25/03/2024.
//

import SwiftUI

struct Main: View {
    @Binding var gameMode: GameMode
    var body: some View {
        VStack {
            TitleView()
            Spacer()
            ButtonView()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.init(red: 0.91, green: 0.89, blue: 0.90))
    }
}
#Preview {
    Main()
}
