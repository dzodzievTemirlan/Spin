//
//  ViewController.swift
//  Spin
//
//  Created by Temirlan Dzodziev on 02.06.2020.
//  Copyright © 2020 Temirlan Dzodziev. All rights reserved.
//

import UIKit

class spinViewController: UIViewController {

    @IBOutlet weak var wheelUIImage: UIImageView!
    
    var animate = Animation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    
    
   
    
    @IBAction func markButtonPressed(_ sender: UIButton) {
        animate.rotateWheel(wheel: wheelUIImage)
        
        
//            self.wheelUIImage.transform = CGAffineTransform(rotationAngle: self.radians(degrees: 5))
//            self.wheelUIImage.transform = __CGAffineTransformMake(0, -1, 1, 0, 0, 0)
//    func radians(degrees: Double) -> CGFloat{
//        return CGFloat( degrees * .pi / degrees)
    }
    
}

