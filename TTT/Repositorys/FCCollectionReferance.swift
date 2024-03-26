//
//  FCCollectionReferance.swift
//  TTT
//
//  Created by Anthony Lartey on 26/03/2024.
//

import Foundation
import Firebase

enum FCollectionReferance: String {
    case Game
}
func FirebaseReference(_ refernce: FCollectionReferance) -> CollectionReference {
    Firestore.firestore().collection(refernce.rawValue)
}
