//
//  UIColor+AppColors.swift
//  Reflex
//
//  Created by Can Kaya on 16/03/17.
//  Copyright © 2017 Can Kaya. All rights reserved.
//

import Foundation
import  UIKit

extension UIColor {
    
    static let backgroundColor = RGBColor(red: 66, green: 66, blue: 66)
    
    static let appColorNeutral = RGBColor(red: 230, green: 230, blue: 230)
    static let appColorDanger = RGBColor(red: 255, green: 71, blue: 52)
    static let appColorShine = RGBColor(red: 155, green: 232, blue: 52)
    static let appColorOrange = RGBColor(red: 255, green: 135, blue: 6)
    static let appColorYellow = RGBColor(red: 255, green: 215, blue: 71)

    
    class func RGBColor (red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat = 1.0) -> UIColor {
        return UIColor (red: red / 255.0, green: green / 255.0, blue: blue / 255.0, alpha: 1)
    }
}



