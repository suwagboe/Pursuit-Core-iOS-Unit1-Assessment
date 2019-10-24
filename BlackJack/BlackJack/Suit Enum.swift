//
//  Suit.swift
//  BlackJack
//
//  Created by World Domination a Brand on 10/24/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import Foundation

/*
 ☑️Create a new Swift file called Suit, create an enum of the same name that has a diamond, heart, spade and club case.
 ☑️Make the raw value a String.
 ☑️Assign the diamond case "♦️", heart case "♥️", spade "♠️" and club "♣️"
 ~Make sure your enum conforms to CaseIterable in order for the newDeck() method to work.
 */

enum Suit: String, CaseIterable {
    // so if the raw value is String that makes everything below a type String

    case diamond = "♦️"
    case heart = "♥️"
    case spade = "♠️"
    case club = "♣️"
    // above the cases have their string assignments attached to them.
}
