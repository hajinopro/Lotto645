//
//  PickerView.swift
//  Lotto645
//
//  Created by 하진호 on 2021/12/24.
//

import SwiftUI

struct PickerView: UIViewRepresentable {
    @Binding var seletedNumbers: [String]
    
    func makeCoordinator() -> PickerCoordinator {
        PickerCoordinator(parent: self)
    }
    
    func makeUIView(context: Context) -> UIPickerView {
        let picker = UIPickerView()
        picker.delegate = context.coordinator
        picker.dataSource = context.coordinator
        
        for component in (0..<6) {
            picker.selectRow(22, inComponent: component, animated: true)
        }
        return picker
    }
    
    func updateUIView(_ uiView: UIPickerView, context: Context) {
        for i in (0..<6) {
            uiView.selectRow(Int(seletedNumbers[i])! + 44, inComponent: i, animated: true)
        }
        
    }
}
