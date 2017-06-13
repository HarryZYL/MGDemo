//
//  UILabel.swift
//  MGDemo
//
//  Created by Harry on 13/06/2017.
//  Copyright © 2017 harry. All rights reserved.
//

import Foundation
import UIKit

public enum labelSize:CGFloat {
    case giant   = 28
    case large   = 24
    case medium  = 20
    case system  = 18
    case small   = 16
    case tiny    = 14
    case little   = 12
    case micro   = 10
}

extension UILabel{
  
    
    func setStyle(size:labelSize,color:UIColor){
        textColor = color
        font = UIFont(name: SYSTEM_FONT_NAME, size: size.rawValue)
    }
    
    
}
