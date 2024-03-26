//
//  Game.swift
//  TTT
//
//  Created by Anthony Lartey on 26/03/2024.
//

import Foundation

struct Game: Codable, Identifiable {
    let id: String
    var player1Id: String
    var player2Id: String
    var player1Score: Int
    var player2Score: Int
    var activePlayerId: String
    var winningPlayerId: String
    var moves: [GameMove?]
}
