//
//  GameState.swift
//  TTT
//
//  Created by Anthony Lartey on 26/03/2024.
//

import Foundation

enum GameState {
    case finished
    case draw
    case waitingForPlayer
    case quit
    var name: String {
        switch self {
        case .finished:
            return AppStrings.gameHasFinished
        case .draw:
            return AppStrings.draw
        case .waitingForPlayer:
            return AppStrings.waitingForPlayer
        case .quit:
            return AppStrings.playerLeft
        }
    }
}
