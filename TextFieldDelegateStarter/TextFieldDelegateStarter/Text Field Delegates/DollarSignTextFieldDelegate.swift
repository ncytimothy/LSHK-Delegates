//
//  DollarSignTextFieldDelegate.swift
//  TextFieldDelegateStarter
//
//  Created by Tim Ng on 1/26/19.
//  Copyright © 2019 timothyng. All rights reserved.
//

import UIKit

class DollarSignTextFieldDelegate: NSObject, UITextFieldDelegate {
//------------------------------------------------
    //MARK: - Properties
    var currentAmount: Double = 0
    var text = ""
    var validNumbers = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]

//------------------------------------------------
    //MARK: - Methods
    
    // Set the initial text for the textfield
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
       
        return true
    }
    
    // Determine if: 1) Text field should change text, 2) Deletion logic
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        // 1. Set a number formatter for the dollar amount
        // 2. Set the new text each time new characters are entered
        
       
        // 3. Check for initial state if delete key is pressed and will not fall through
       
        
        // 4. Set the hundredth place to be 0 when we try to remove the hundreth place when we try to return to the inital state
        
        
        // 5. Handle number deletion
        
        
        // 6. Set the value with formmating
      
        
        return false
    }
    
}
