//
//  ZipCodeTextFieldDelegate.swift
//  TextFieldDelegateStarter
//
//  Created by Tim Ng on 1/26/19.
//  Copyright © 2019 timothyng. All rights reserved.
//

import UIKit

class ZipCodeTextFieldDelegate: NSObject, UITextFieldDelegate {
    
    // Determine when should the characters in the text field should change
    // Set this to test for 5 characters requirement
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
       
        
        return false
    }
    
}
