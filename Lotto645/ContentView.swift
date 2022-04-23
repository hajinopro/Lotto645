//
//  ContentView.swift
//  Lotto645
//
//  Created by 하진호 on 2021/12/22.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedNumbers = ["7", "7", "7", "7", "7", "7"]
    
    var body: some View {
        VStack {
            Spacer()
            
            BevelText(text: "Lotto 645", width: 340, height: 60)
                .font(.largeTitle)
                .padding(.vertical, 50)
            
            PickerView(seletedNumbers: $selectedNumbers)
                .frame(maxWidth: .infinity)
            
            Button {
                randomNumber()
            } label: {
                Text("Let's win a Lotto 645.")
            }
            .buttonStyle(NeuButtonStyle(width: 340, height: 60))
            .font(.title2)
            .padding(.vertical, 50)

            BevelText(text: "\(selectedNumbers.joined(separator: "   "))", width: 340, height: 60)
                .font(.title)
                .foregroundColor(.blue)
                .padding()
            
            Spacer()
        }
        .edgesIgnoringSafeArea(.all)
        .background(Color.element)
    }
    
    func randomNumber() {
        var numbers: [Int] = []
        let number1 = Int.random(in: 1...45)
        numbers.append(number1)
        
        var number2 = Int.random(in: 1...45)
        while !numbers.filter({ $0 == number2 }).isEmpty {
            number2 = Int.random(in: 1...45)
        }
        numbers.append(number2)
        
        var number3 = Int.random(in: 1...45)
        while !numbers.filter({ $0 == number3 }).isEmpty {
            number3 = Int.random(in: 1...45)
        }
        numbers.append(number3)
        
        var number4 = Int.random(in: 1...45)
        while !numbers.filter({ $0 == number4 }).isEmpty {
            number4 = Int.random(in: 1...45)
        }
        numbers.append(number4)
        
        var number5 = Int.random(in: 1...45)
        while !numbers.filter({ $0 == number5 }).isEmpty {
            number5 = Int.random(in: 1...45)
        }
        numbers.append(number5)
        
        var number6 = Int.random(in: 1...45)
        while !numbers.filter({ $0 == number6 }).isEmpty {
            number6 = Int.random(in: 1...45)
        }
        numbers.append(number6)
        
        selectedNumbers = numbers.map { String($0) }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
