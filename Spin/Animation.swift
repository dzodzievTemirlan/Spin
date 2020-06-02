//
//  Animation.swift
//  Spin
//
//  Created by Temirlan Dzodziev on 02.06.2020.
//  Copyright © 2020 Temirlan Dzodziev. All rights reserved.
//

import UIKit

protocol AnimationDelegate {
    func rotateWheel(wheel: UIImageView )
    func shakeWheel()
    
}

class Animation: AnimationDelegate{
    
    func rotateWheel(wheel: UIImageView) {
         let rotate = CABasicAnimation(keyPath: #keyPath(CAShapeLayer.transform))
           rotate.valueFunction = CAValueFunction(name: .rotateZ)
           rotate.duration = 0.5
           rotate.repeatCount = 2
           rotate.fromValue = 0
           rotate.toValue = Float.random(in: 5..<9)
           rotate.fillMode = .forwards
           rotate.isRemovedOnCompletion = false
           rotate.autoreverses = false
           wheel.layer.opacity = 1
           wheel.layer.add(rotate, forKey: nil)
//           wheel.frame = view.bounds
    }
    func shakeWheel() {
        
    }

    

    
}
