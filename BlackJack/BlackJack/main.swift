//
//  main.swift
//  BlackJack
//
//  Created by Alex Paul on 10/15/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import Foundation

//var game = Game(deck: [Card](), heresTheCard: [Card](), computerScore: Int(), shuffleDeck: [Card](), hitPlayer: Bool(), newCardPick: Card())
//
    
    
// TODO: remove these lines after you have added the Suit and FaceCard enums as per the assessment README
print("There are \(Card.newDeck(aceValue: 1).count) in a deck of cards")
// There are 52 in a deck of cards

// pushing to github!!!! First Assessment

// file new swift file to create new file

// This is were the game gets played at.

/*
 ☑️
    ~Create an instance of the Game()
    ~Call newGame on the newly created instance above.
    ~Create a gameOver instance and set it to false. This will be used in your repeat-while to determine if game play should stop.
    ~Use a repeat-while to allow the user options between getting new cards by calling the hitMe() method or passing by calling the stopHits() method.
    ~When the player has won or lost ask them if they would wish to continue playing another round.

 */


//let game = Game()

var gameOver: Bool = false

print("Welcome to BlackJack... where you can win or lose??")

let userPrompt = """
Do you want to hit or pass?? (hit or pass)
"""

repeat{
 print(userPrompt)
    // prints prompt for user to see
    
    let userPromptResponse = readLine() ?? ""

    //game.hitMe()
    
    

//    repeat {
//
//    }while Game.gameStatus

    
    
} while gameOver
