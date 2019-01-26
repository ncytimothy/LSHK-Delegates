//
//  DollarAmountTextFieldDelegate.swift
//  TextFieldDelegateFinal
//
//  Created by Tim Ng on 1/26/19.
//  Copyright © 2019 timothyng. All rights reserved.
//

import UIKit

class DollarAmountTextFieldDelegate: NSObject, UITextFieldDelegate {
    //------------------------------------------------
    //MARK: - Properties
    var currentAmount: Double = 0
    var text = "0"
    var validNumbers = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
    
    //------------------------------------------------
    //MARK: - Methods
    
    // Set the initial text for the textfield
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        textField.text = "$0.00"
        return true
    }
    
    // Determine if: 1) Text field should change text, 2) Deletion logic
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        
        // 1. Set a number formatter for the dollar amount
        // 2. Set the new text each time new characters are entered
        let formatter = NumberFormatter()
        let newText = string
        text = text + newText
        
        // 3. Set the hundredth place to be 0 when we try to remove the hundreth place  (we try to return to the inital state)
        if textField.text?.count == 1 {
            text = "0"
        }
        
        
        // 4. Handle number deletion
        if !validNumbers.contains(newText) {
            text = String(text.dropLast())
        }
        
        // 5. Set the value with formmating
        print("text: \(text)")
        print("newText: \(newText)")
        if let amount = Double(text) {
            currentAmount = amount / 100
        } else {
            currentAmount = 0
        }
        formatter.numberStyle = .currencyAccounting
        let displayAmount = NSNumber(value: currentAmount)
        textField.text = formatter.string(from: displayAmount)
        
        
        return false
    }
    
}

