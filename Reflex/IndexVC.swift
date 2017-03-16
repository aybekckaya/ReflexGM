//
//  IndexVC.swift
//  Reflex
//
//  Created by Can Kaya on 16/03/17.
//  Copyright © 2017 Can Kaya. All rights reserved.
//

import UIKit

class IndexVC: BaseVC {

    @IBOutlet weak var stackViewBoxes: UIStackView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor.backgroundColor
        
        initializeGame()
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}


extension IndexVC {
    
    func initializeGame() {
        stackViewBoxes.alpha = 0
        designGame()
        assignBoxes()
        stackViewBoxes.alpha = 1
        
    }
    
    /**
        with chosen game type this function will re-design the game like 4-4 matrix , animative reflex game etc...
     */
    private func designGame() {
        let sharedGame = GameController.sharedInstance
        guard sharedGame.typeGame == .staticBoxesWith16Tiles || sharedGame.typeGame == .staticBoxesWith9Tiles else { return }
        
        // create game with 9 or 16 tiles HERE  !!!!
    }
    
    /**
       assign box views to game controller
     */
    private func assignBoxes() {
        var arrBoxes:[BoxView] = []
        stackViewBoxes.arrangedSubviews.forEach{viewItem in
            if let stackViewInner:UIStackView = viewItem as? UIStackView {
                stackViewInner.arrangedSubviews.forEach{ viewItemInner in
                    if let viewBox:BoxView = viewItemInner as? BoxView {
                        arrBoxes.append(viewBox)
                    }
                }
            }
        }
    }
    
    
}


