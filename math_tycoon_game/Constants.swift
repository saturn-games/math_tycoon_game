//
//  Constants.swift
//  math_tycoon_game
//
//  Created by Karl Thaler on 8/5/20.
//  Copyright © 2020 Saturn Games. All rights reserved.
//

import Foundation
import UIKit

enum problem_types {
    case add_sub    
    case mult_div
}

var digit: Int = 0
var prob_type: problem_types = .add_sub

extension UIView {
    
    func shake(){
        
        let animation = CAKeyframeAnimation(keyPath: "transform.translation.x")
        animation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.linear)
        animation.duration = 0.6
        animation.values = [-20.0, 20.0, -10.0, 10.0, -5.0, 5.0, 0.0]
        layer.add(animation, forKey: "shake")
        
    }
    
}
