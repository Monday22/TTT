//
//  ServiceDependencies.swift
//  TTT
//
//  Created by Anthony Lartey on 26/03/2024.
//

import Foundation
import Factory

extension Container {
    var firebaseRepository: Factory<FirebaseRepositoryProtocol> {
        self { FirebaseRepository() }
            .shared
    }
}
