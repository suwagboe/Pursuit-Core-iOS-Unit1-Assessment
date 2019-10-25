//
//  Actual Game.swift
//  BlackJack
//
//  Created by World Domination a Brand on 10/24/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import Foundation
/*
 The Game object has the following instance properties:
 ☑️
 ☑️deck is an array of [Card]
 ☑️player is a Player
 ~hitPlayeris a Bool
 
 
 The Game object has the following computed properties:
 
 ~hasMoreCards returns a Bool
 ☑️randomComputerScore returns an Int
 
 
 
 */
//struct Game {
//    
//    // MARK: start PROPERTIES of Game
//    var deck = [Card]()
//    // holds all of the cards in a deck that can be drawn
//    
//    var pass = "pass".lowercased()
//    
//    var computersScore = Int()
//    
//    var hit = "hit".lowercased()
//    
//    var heresTheCard = [Card]()
//    
//    var wholeDeck: [Card]
//    
//    var player = "Player"
//    // who is playing
//    
//    var hitPlayer: Bool
//    // checking if the player wants the computer to hit them with a card
//    
//    var hasMoreCards: Bool {
//        // checking if there are more cards left inside of the DECK of cardas
//        return !deck.isEmpty
//    }
//    
//    var score = 0
//    // if they have hit 21
//    
//    var goalScore = 21
//    // this is the number they are trying to meet
//    
//    var randomComputerScore: Int
//    // holds the computer score
//    
//    // MARK: START of METHODS of game
//    /*
//     the Game object has the following methods:
//     
//     ☑️newGame() resets the game
//     ~stopHits() called if the user wishes to pass their turn. In that case the computer draws a random number and a winner is chosen between the computer's score and the player's score.
//     ☑️hitMe() called as the user requests more cards from the deck
//     ~computerVsPlayer() draws a random number for the computer and determines the winner of the game.
//     ~gameStatus() takes in the player's card and determines the current score. Here the player score options can be, BlackJack, Bust or Continue playing as their status is still valid for game play.
//     */
//    
//    
//    // I forget why this is a mutating func. but its necessary for me to do this function
//    
//    // MARK: hit me/ give player addtional card
//    mutating func hitMe() -> Int{
//        //called as the user requests more cards from the deck
//        // shuffles cards so that way the same card does not get picked.
//        var newCardPick: Card
//        // created this variable to hold a card..
//        
//        // this holds a shuffled deck
//        wholeDeck = deck.shuffled()
//        
//        // this holds the last card out of the whole shuffled deck
//        newCardPick = wholeDeck.popLast()!
//        
//        //adds the value of the last card to the score
//        newCardPick.value += score
//        return score
//        // this should return the last card in the deck and it should be used to become the next players card
//        
//    }
//    
//    // user no longet wants to hit and gain cards. they would like to see if they can win.
//    mutating func stopHits(userPromptResponse: String, computerVsPlayer: Card) {
//        //called if the user wishes to pass their turn. In that case the computer draws a random number and a winner is chosen between the computer's score and the player's score.
//        //        if userPromptResponse = pass
//        // starts the game and gives player the cards
//        
//        // we need to access the value from the deck of cards
//        //        computerVsPlayer
//    }
//    
//    mutating func computerScore() -> Int {
//            // generate the computer score
//            let firstRandomCardPick = hitMe()
//            
//            if firstRandomCardPick < goalScore {
//                let secondRandomCardPick = hitMe()
//                let computerScore = firstRandomCardPick + secondRandomCardPick
//                print(computerScore)
//                
//            }
//            //        if userPromptResponse == pass {
//            //            // below should mean that a card between 2 - 11 will be choosen or a suit
//            //            computersScore = deck.popLast()?
//            //        }
//            return computerScore()
//        }
//    
//    
//    //    mutating func playersScore()->{
//    //    // keeps track of players score
//    //static score
//    //        return score
//    //        }
//    
//    mutating func computerVsPlayer() {
//        if score < computerScore() {
//            print("The computers score is higher then your score... 😞 You lost 😞")
//        } else {
//            print("YOU BEAT THE COMPUTER🤯!!! 🎆 one small step for you onE giant leap for 🧬humans against the matrix💻.")
//        }
//    }
//    
//    func gameStatus() {
//        //takes in the player's card and determines the current score. Here the player score options can be, BlackJack, Bust or Continue playing as their status is still valid for game play.
//        if score < goalScore {
//            print(userPrompt)
//        }
//        
//    }
//    
//    mutating func newGame() {
//        // what is this one doing?
//        // and what is it returning??
//        score = 0
//        // questions =  [Questions]() WRONG AND CREATES A NEW!! INSTANCE
//        deck.removeAll()// removes all the values
//    } 
//    
//    
//    
//} // MARK: END OF GAME CLASS
