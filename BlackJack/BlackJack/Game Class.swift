//
//  Game Class.swift
//  BlackJack
//
//  Created by World Domination a Brand on 10/24/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import Foundation

class Game {
    
    // MARK: start PROPERTIES of Game
    var score = 0
    // if they have hit 21
    var pass = "pass".lowercased()
    var player = Player(score: 0, cardsArray: [Card](), playerName: "Antonio")
    // who is playing
//    var playersScore = 0
    var hit = "hit".lowercased()
    var goalScore = 21
var playersScore = 0
    
    static var lastCardPicked: Card?
    var deck = Card.newDeck(aceValue: 1)
    // holds all of the cards in a deck that can be drawn
    var heresTheCard = [Card]()
   static var computersScore = Int()
//    var shuffleDeck: [Card]
    var hitPlayer: Bool = true
    // checking if the player wants the computer to hit them with a card
    
    
//    init( deck: [Card], heresTheCard: [Card], computerScore: Int, shuffleDeck: [Card], hitPlayer: Bool, lastCardPicked: Card){
//        self.deck = deck
//        self.heresTheCard = heresTheCard
//        Game.self.computersScore = computerScore
//        self.shuffleDeck = shuffleDeck
//        self.hitPlayer = hitPlayer
//        Game.self.lastCardPicked = lastCardPicked
//        // What !! Does this MEANS!!!?!?!?!?!
//
//    }
//
    
    var hasMoreCards: Bool {
        // checking if there are more cards left inside of the DECK of cardas
        return !deck.isEmpty
    }
    
    
    
  
    
    // MARK: START of METHODS of game
    /*
     the Game object has the following methods:
     
     ☑️newGame() resets the game
     ~stopHits() called if the user wishes to pass their turn. In that case the computer draws a random number and a winner is chosen between the computer's score and the player's score.
     ☑️hitMe() called as the user requests more cards from the deck
     ~computerVsPlayer() draws a random number for the computer and determines the winner of the game.
     ~gameStatus() takes in the player's card and determines the current score. Here the player score options can be, BlackJack, Bust or Continue playing as their status is still valid for game play.
     */
    
    
    // I forget why this is a mutating func. but its necessary for me to do this function
    
    // MARK: hit me/ give player addtional card
    func hitMe() -> Int{
        // this should generate a new card everytime
        
        //called as the user requests more cards from the deck
        // shuffles cards so that way the same card does not get picked.
       
        //var newCardPick: Card
        // created this variable to hold a card..

        // this holds a shuffled deck
       var shuffleDeck = deck.shuffled()
        
        // this holds the last card out of the whole shuffled deck
        Game.lastCardPicked = shuffleDeck.popLast()!
        
        //adds the value of the last card to the score
        return Game.lastCardPicked?.value ?? 0

        // this should return the last card in the deck and it should be used to become the next players card
        
    }
    
    func WhatIsPlayersScore () -> Int{
        playersScore += Game.lastCardPicked?.value ?? 0
        return playersScore
    }
    
    // user no longet wants to hit and gain cards. they would like to see if they can win.
     func stopHits(userPromptResponse: String, computerVsPlayer: Card) {
        //called if the user wishes to pass their turn. In that case the computer draws a random number and a winner is chosen between the computer's score and the player's score.
        //        if userPromptResponse = pass
        // starts the game and gives player the cards
        
        // we need to access the value from the deck of cards
        //        computerVsPlayer
    }
    
    
//    if isLeapYear(year: year) == true {

    func computerScore(hitme: Int) -> Int {
            // generate the computer score
        //HELP MEEEEE!!!!!
        let firstRandomCardPick = Game.lastCardPicked?.value ?? 0

        var computerScore = 0
        
        computerScore = firstRandomCardPick
            if computerScore < goalScore {
                let secondRandomCardPick = Game.lastCardPicked!.value
                computerScore = firstRandomCardPick + secondRandomCardPick
            } else if computerScore < 18 {
                var thirdRandomCardPick = Game.lastCardPicked!.value
                thirdRandomCardPick += computerScore}
                print(computerScore)
            
            //        if userPromptResponse == pass {
            //            // below should mean that a card between 2 - 11 will be choosen or a suit
            //            computersScore = deck.popLast()?
            //        }
            return computerScore
        }
    //    mutating func playersScore()->{
    //    // keeps track of players score
    //static score
    //        return score
    //        }
    
     func computerVsPlayer() {
        if playersScore < computerScore(hitme: Game.lastCardPicked?.value ?? 0) {
            print("The computers score is higher then your score... 😞 You lost 😞")
        } else {
            print("YOU BEAT THE COMPUTER🤯!!! 🎆 one small step for you onE giant leap for 🧬humans against the matrix💻.")
        }
    }
    
    func gameStatus(){
        //takes in the player's card and determines the current score. Here the player score options can be, BlackJack, Bust or Continue playing as their status is still valid for game play.
        if playersScore == goalScore {
            // blackjack
            _ = "You have won!!! You made it to 21."
        } else if playersScore > goalScore {
            // bust
            _ = "You lose your score goes over 21.🥺"
        } 
//        else if score < goalScore && userPromptResponse == "hit"{
//            print("you can keep going?")
//        }
    }
    
     func newGame() {
        // what is this one doing?
        // and what is it returning??
        playersScore = 0
       // computerScore = 0 this wont work why???
        
        // questions =  [Questions]() WRONG AND CREATES A NEW!! INSTANCE
        
        // this is wrong I should have a new deck of cards but instead im removing cards
        deck.removeAll()// removes all the values
        
    }
    
    
    
} // MARK: END OF GAME CLASS
