//
//  GameState.swift
//  Wordle+
//
//  Created by Loreni Garciapirul - 169073 on 5/5/22.
//

import Foundation

enum GameStateAfter {
    case win
    case lose
    
}

enum GameStateDuring {
    case incorrectLetter
    case correctLetter
    case NRPForLetter
}
