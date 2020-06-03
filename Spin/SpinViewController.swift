//
//  ViewController.swift
//  Spin
//
//  Created by Temirlan Dzodziev on 02.06.2020.
//  Copyright © 2020 Temirlan Dzodziev. All rights reserved.
//

import UIKit

class SpinViewController: UIViewController {

    @IBOutlet weak var wheelUIImage: UIImageView!
    
    var animate = Animation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func markButtonPressed(_ sender: UIButton) {
        animate.rotateWheel(wheel: wheelUIImage)
    }
}

