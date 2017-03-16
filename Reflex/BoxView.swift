//
//  BoxView.swift
//  Reflex
//
//  Created by Can Kaya on 16/03/17.
//  Copyright © 2017 Can Kaya. All rights reserved.
//

import UIKit

enum BoxViewCondition
{
    case neutral
    case shine
    case danger
}

protocol BoxViewDelegate  {
    
    func boxViewDidTapped(view:BoxView)
}


class BoxView: UIView {
   
    var itemTag:Int = Int.min
    var delegate : BoxViewDelegate?
    
   
    
    var currentState:BoxViewCondition = .neutral {
        didSet {
            applyState()
            applyColorChangeAnimation()
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(self.viewTapped(_ :) ))
        addGestureRecognizer(tapGesture)
        applyInitDrawing()
    }
    
  
    private func applyColorChangeAnimation () {
        
    }
    
    func viewTapped(_ sender:UITapGestureRecognizer) {
        
        if  (delegate != nil) && itemTag > 0 {
            delegate?.boxViewDidTapped(view: self)
        }
    }
    
    private func applyInitDrawing() {
        layer.cornerRadius = 8
        layer.masksToBounds = true
        currentState = .neutral
    }
    
    private func applyState() {
        switch currentState {
        case .neutral :
            backgroundColor = UIColor.appColorNeutral
            break
        case .shine:
            backgroundColor = UIColor.appColorShine
            break
        case .danger:
            backgroundColor = UIColor.appColorDanger
            break
        default:
            break
        }
    }
}
