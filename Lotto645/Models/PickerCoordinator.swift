//
//  PickerCoordinator.swift
//  Lotto645
//
//  Created by 하진호 on 2021/12/24.
//

import SwiftUI

class PickerCoordinator: NSObject, UIPickerViewDelegate, UIPickerViewDataSource {
    var parent: PickerView
    let numbers = (1...45).map { $0 }
    
    init(parent: PickerView) {
        self.parent = parent
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 6
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return numbers.count * 3
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let numToStrings = numbers.map { String($0) }
        return numToStrings[row % 45]
    }
    
    func pickerView(_ pickerView: UIPickerView, widthForComponent component: Int) -> CGFloat {
        return 50
    }
}
