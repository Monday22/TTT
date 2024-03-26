//
//  AlertItem.swift
//  TTT
//
//  Created by Anthony Lartey on 26/03/2024.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    var title: Text
    var message: Text
    var buttonTitle: Text
    init(title: String, message: String, buttonTitle: String = AppStrings.rematch) {
        self.title = Text(title)
        self.message = Text(message)
        self.buttonTitle = Text(buttonTitle)
    }
}
