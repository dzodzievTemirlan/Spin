//
//  ShakeViewController.swift
//  Spin
//
//  Created by Temirlan Dzodziev on 03.06.2020.
//  Copyright © 2020 Temirlan Dzodziev. All rights reserved.
//

import UIKit

class ShakeViewController: UIViewController {
    var pickerModel = PickerModel()
    var animation = Animation()
    @IBOutlet weak var pickerView: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView.delegate = pickerModel
        pickerView.dataSource = pickerModel
        pickerView.transform = CGAffineTransform(rotationAngle: pickerModel.rotationAngle)
        pickerView.frame = CGRect(x: -100, y: (view.frame.height / 2) - 50, width: view.frame.width+200, height: 100)
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake{
            animation.shake(picker: pickerView)
        }
    }
}
