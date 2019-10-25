//
//  main.swift
//  BlackJack
//
//  Created by Alex Paul on 10/15/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import Foundation

//var game = Game(deck: [Card](), heresTheCard: [Card](), computerScore: Int(), shuffleDeck: [Card](), hitPlayer: Bool(), lastCardPicked: Card(suit: Suit(rawValue: "some String")!, value: Int(1), isFaceCard: Bool(false)))
//
//
var game = Game()

// TODO: remove these lines after you have added the Suit and FaceCard enums as per the assessment README


//print("There are \(Card.newDeck) in a deck of cards")
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



//var gameOver: Bool = false

print("Welcome to BlackJack... where you can win or lose??")


let userPrompt = """
Do you want to hit or pass?? (hit or pass)
"""





    print(userPrompt)
    // prints prompt for user to see
    
    repeat {
        let userResponseOne = readLine()?.lowercased() ?? ""
        switch userResponseOne {
        case "hit":
            let firstCardFace = game.whatIsPlayersScore()
            //            let firstCardValue = game.WhatArePlayersActualValueScore()
            
            // need to review maps
            print("This is persons  stuff \(firstCardFace.cardsArray.map{ $0.stringify() }) score: \(firstCardFace.score)")
            // this inputs the cards into the array. map allows for the cards to go into the array.
            
        // need to check game status here
        case "pass":
            let computersScore = game.computerScore(hitme: Game.lastCardPicked!.value)
        default:
            print("please choose one")}
    }while game.whatIsPlayersScore().score < 20


