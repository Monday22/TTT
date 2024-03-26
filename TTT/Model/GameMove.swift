//
//  GameMove.swift
//  TTT
//
//  Created by Anthony Lartey on 26/03/2024.
//

import Foundation

struct GameMove: Codable {
    let player: Player
    let boardIndex: Int
    var indicator: String {
        player == .player1 ? "xmark" : "circle"
    }
}
