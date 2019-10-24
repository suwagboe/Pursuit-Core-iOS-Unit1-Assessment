//
//  FaceCard Enum.swift
//  BlackJack
//
//  Created by World Domination a Brand on 10/24/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import Foundation

/*
 ☑️
 ☑️Create a new Swift file called FaceCard, create an enum of the same name that has a jack, queen and king case.
 ☑️Make the raw value a String.
 ☑️Assign the jack case "🎃", queen case "👸" and king "🤴"
 ☑️Make sure your enum conforms to CaseIterable in order for the newDeck() method to work.
 */


enum FaceCard: String, CaseIterable{
    // to assign the rawvalue and declare a case iteralbe you need to put a comma between the two.
    case queen = "👸"
    case king  = "🤴"
    case jack = "🎃"
}
