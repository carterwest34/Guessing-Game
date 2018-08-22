//
//  main.swift
//  Guessing Game
//
//  Created by Carter West on 8/20/18.
//  Copyright © 2018 Carter West. All rights reserved.
//

import Foundation

var playingGame = true


repeat {
    let randomNumber = Int(arc4random_uniform(101))
    

    
    //Welcome the user and prompt them for input
    print("Welcome to the Guessing Game")
    print("Please guess a number between 0 and 100.")
    var guessCounter = 5
    var userGuess = Int(readLine()!)
    
    
    while userGuess == nil {
        print("Please enter a valid number")
        userGuess = Int(readLine()!)
    }
    if userGuess! == randomNumber {
        print("You got it chief")
        print("Would you like to play again? Y/N")
        
        var stillPlaying = readLine()!.uppercased()
        
        while stillPlaying != "Y" && stillPlaying != "N" {
            print("Would you like to play again? Y/N")
            stillPlaying = readLine()!
        }
        if stillPlaying == "N" {
            playingGame = false
        }
    }
    while guessCounter > 1 && userGuess != randomNumber {
        if userGuess! < randomNumber {
            print("That aint it chief. Its higher")
            print("Try again?")
            guessCounter -= 1
            print("Number of Guesses: \(guessCounter)")
            userGuess = Int(readLine()!)
        } else if userGuess! > randomNumber {
            print("That aint it chief. Its lower")
            print("Try again?")
            guessCounter -= 1
            print("Number of Guesses: \(guessCounter)")
            userGuess = Int(readLine()!)
        }
        
    }
    if guessCounter == 1 && userGuess != randomNumber{
        print("Oh no! You lost the guessing game! The correct answer was \(randomNumber)! Wanna try again? Y/N")
        var stillPlaying = readLine()!.uppercased()
        while stillPlaying != "Y" && stillPlaying != "N" {
            print("Oh no! You lost the guessing game! The correct answer was \(randomNumber)! Wanna try again? Y/N")
            stillPlaying = readLine()!.uppercased()
        }
        if stillPlaying == "N" {
            playingGame = false
        }
    }
    if userGuess! == randomNumber {
        print("You got it chief")
        print("Would you like to play again? Y/N")
        
        var stillPlaying = readLine()!.uppercased()
        
        while stillPlaying != "Y" && stillPlaying != "N" {
            print("Would you like to play again? Y/N")
            stillPlaying = readLine()!
        }
        if stillPlaying == "N" {
            playingGame = false
        }
    }
    
} while playingGame == true

































