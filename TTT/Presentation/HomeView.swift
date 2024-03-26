//
//  ContentView.swift
//  TTT
//
//  Created by Anthony Lartey on 25/03/2024.
//

import SwiftUI

struct HomeView: View {
    @State private var gameMode: GameMode?
    
    @ViewBuilder
    private func TitleView() -> some View {
        VStack(spacing: 20) {
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
    @ViewBuilder
    private func ButtonView() -> some View {
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
    @ViewBuilder
    private func main() -> some View {
        VStack {
            TitleView()
            Spacer()
            ButtonView()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.init(red: 0.91, green: 0.89, blue: 0.90))
    
    }
    
    
    var body: some View {
        main()
            .fullScreenCover(item: $gameMode) { gameMode in
                GameView(viewModel: GameViewModel(with: gameMode, onlineGameRepository: OnlineGameRepository()))
            }
    }
}
#Preview {
    HomeView()
}
