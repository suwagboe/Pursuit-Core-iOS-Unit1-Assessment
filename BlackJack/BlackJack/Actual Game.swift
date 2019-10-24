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
struct Game {
    
    var deck = [Card]()
    // holds all of the cards in a deck that can be drawn
    
    var player = "Player"
    // who is playing
    
    var hitPlayeris: Bool
    // ??
    
    var hasMoreCards: Bool {
        // checking if there are more cards left inside of the DECK of cardas
        return !deck.isEmpty
    }
    
    var score = 0
    // if they have hit 21
    
    
    var randomComputerScore: Int
    // holds the computer score
    
// MARK: START of METHODS of game
    /*
     the Game object has the following methods:

     ~newGame() resets the game
     ~stopHits() called if the user wishes to pass their turn. In that case the computer draws a random number and a winner is chosen between the computer's score and the player's score.
     ~hitMe() called as the user requests more cards from the deck
     ~computerVsPlayer() draws a random number for the computer and determines the winner of the game.
     ~gameStatus() takes in the player's card and determines the current score. Here the player score options can be, BlackJack, Bust or Continue playing as their status is still valid for game play.
     */
   
    
    mutating func hitMe(){
           //called as the user requests more cards from the deck
        // shuffles cards so that way the same card does not get picked.
        deck = deck.shuffled()
      }
    
    
    
//    func newGame() -> Card?{
//        // what is this one doing?
//        // and what is it returning??
//            return Card?
//    }
    
    func stopHits() {
       //called if the user wishes to pass their turn. In that case the computer draws a random number and a winner is chosen between the computer's score and the player's score.
        
    }
    
    func computerVsPlayer(){
        //draws a random number for the computer and determines the winner of the game.
        // compare the scores of playersScore and computersScore..
        if playersScore() < computersScore() {
            print("The computers score is higher then your score... 😞 You lost 😞")
        } else {
            print("YOU BEAT THE COMPUTER🤯!!! 🎆 one small step for you onE giant leap for 🧬humans against the matrix💻.")
        }
        
    }
    
    func gameStatus() {
        //takes in the player's card and determines the current score. Here the player score options can be, BlackJack, Bust or Continue playing as their status is still valid for game play.
        
    }
    
    func playersScore(){
        // keeps track of players score
            }
    
    func computersScore(){
        //keeps track of compters score
        // generate random cards here for the computer
    }
    
    
    
    
} // MARK: END OF GAME CLASS
