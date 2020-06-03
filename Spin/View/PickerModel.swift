//
//  PickerModel.swift
//  Spin
//
//  Created by Temirlan Dzodziev on 03.06.2020.
//  Copyright © 2020 Temirlan Dzodziev. All rights reserved.
//

import UIKit

class PickerModel: UIPickerView {
    
    let animation = Animation()
    
    let rotationAngle: CGFloat = -90 * (.pi / 180)
    
}

extension PickerModel: UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return animation.data.count
    }
}

extension PickerModel: UIPickerViewDelegate{
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 150
    }
    func pickerView(_ pickerView: UIPickerView, widthForComponent component: Int) -> CGFloat{
        return 50
    }
    
    
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 150, height: 150))
        let label = UILabel(frame: CGRect(x:0, y:0, width:150, height: 150))
        
        label.text = animation.data[row]
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 22, weight: .bold)
        
        view.addSubview(label)
        view.transform = CGAffineTransform(rotationAngle: 90 * (.pi / 180))
        return view
    }
}
