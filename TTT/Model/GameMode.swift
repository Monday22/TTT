//
//  GameMode.swift
//  TTT
//
//  Created by Anthony Lartey on 25/03/2024.
//

import SwiftUI

enum GameMode: CaseIterable, Identifiable {
    var id: Self { return self }
    case vsHuman
    case vsCPU
    case online
    var name: String {
        switch self {
        case .vsHuman:
            return AppStrings.vsHuman
        case .vsCPU:
            return AppStrings.vsCpu
        case .online:
            return AppStrings.online
        }
    }
    var color: Color {
        switch self {
        case .vsHuman:
            return Color.indigo
        case .vsCPU:
            return Color.red
        case .online:
            return Color.green
        }
    }
}
