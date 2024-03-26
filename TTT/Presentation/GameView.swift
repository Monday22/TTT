//
//  GameView.swift
//  TTT
//
//  Created by Anthony Lartey on 25/03/2024.
//

import SwiftUI

struct GameView: View {
    @Environment(\.dismiss) var dismiss
    @ObservedObject var viewModel: GameViewModel
    @ViewBuilder
    private func clouseButton() -> some View {
        HStack {
            Spacer()
            Button {
                viewModel.quitTheGame()
                dismiss()
            } label: {
                Text(AppStrings.exit)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundStyle(Color.red)
            }
            .frame(width: 80.0, height: 40.0)
            .background(
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
            )
        }
        .padding(.bottom, 20.0)
    }
    @ViewBuilder
    private func scoreView() -> some View {
        HStack {
            Text("\(viewModel.player1Name): \(viewModel.player1Score)")
            Spacer()
            Text("\(viewModel.player2Name): \(viewModel.player2Score)")
        }
        .foregroundStyle(Color.white)
        .font(.title2)
        .fontWeight(Font.Weight.semibold)
    }
    @ViewBuilder
    private func gameStatus() -> some View {
        VStack {
            Text(viewModel.gameNotification)
                .font(.title2)
            if viewModel.showLoading {
                ProgressView()
                    .progressViewStyle(CircularProgressViewStyle())
                    .tint(Color.white)
            }
        }
        .foregroundStyle(Color.white)
    }
    @ViewBuilder
    private func gameBoard(geometry: GeometryProxy) -> some View {
        VStack {
            LazyVGrid(columns: viewModel.columns, spacing: 0) {
                ForEach(0..<9) { index in
                    ZStack {
                        BoardCircleView(geometry: geometry)
                        BoardIndicatorView(imageName: viewModel.moves[index]?.indicator ?? "")
                    }
                    .onTapGesture {
                        viewModel.processMove(for: index)
                    }
                }
            }
        }
        .padding(.bottom, 10.0)
        .disabled(viewModel.isGameBoardDisabled)
    }
    @ViewBuilder
    private func main() -> some View {
        GeometryReader { geometry in
            VStack {
                clouseButton()
                scoreView()
                Spacer()
                gameStatus()
                Spacer()
                gameBoard(geometry: geometry)
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .padding(.horizontal, 16.0)
            .background(Color.indigo)
        }
    }
    var body: some View {
        main()
            .alert(isPresented: $viewModel.showAlert) {
                Alert(title: viewModel.alertItem!.title, message: viewModel.alertItem!.message, dismissButton: .default(viewModel.alertItem!.buttonTitle){
                    viewModel.restGame()
                })
            }
    }
}
#Preview {
    GameView(viewModel: GameViewModel(with: .vsHuman, onlineGameRepository: OnlineGameRepository()))
}
