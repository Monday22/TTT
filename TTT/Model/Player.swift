//
//  Player.swift
//  TTT
//
//  Created by Anthony Lartey on 26/03/2024.
//

import Foundation

enum Player: Codable {
    case player1
    case player2
    case cpu
    var name: String {
        switch self {
        case .player1:
            return AppStrings.player1
        case .player2:
            return AppStrings.player2
        case .cpu:
            return AppStrings.computer
        }
    }
}
