//
//  GameController.swift
//  Reflex
//
//  Created by Can Kaya on 16/03/17.
//  Copyright © 2017 Can Kaya. All rights reserved.
//

import UIKit

enum GameType {
    case undefined
    case animatingBoxes
    case staticBoxesRandomLocation
    case staticBoxesWith16Tiles
    case staticBoxesWith9Tiles
}

class GameController: NSObject {
    
    static let sharedInstance:GameController = GameController()
    
    var typeGame:GameType = GameType.undefined
    
    var difficulty:Int = 5 {
        didSet {
            if difficulty < 1 { difficulty = 1 }
            else if difficulty > 10 { difficulty = 10 }
        }
    }
    
    private var marginBoxesArea:CGFloat = 10
    
    
    func initializeGame() {
        if typeGame == .undefined { initGameType() }
       
        
        
    }
    
    private func boxMargin()->CGFloat {
        if typeGame == .animatingBoxes || typeGame == .staticBoxesRandomLocation {
            return CGFloat.undefined
        }
        
        let screenWidth = UIScreen.main.bounds.size.width
        let gameAreaWidth = screenWidth - marginBoxesArea*2
        
        var margin:CGFloat = 10
        if typeGame == .staticBoxesWith9Tiles {
            
        }
        else if typeGame == .staticBoxesWith16Tiles {
            
        }
        
        return margin
    }
    
    
    
    
    private func initGameType() {
        if difficulty <= 5 { typeGame = GameType.staticBoxesWith9Tiles }
        else { typeGame = GameType.staticBoxesWith16Tiles }
    }
    
    
    
}
