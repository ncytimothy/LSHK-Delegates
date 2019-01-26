//
//  ViewController.swift
//  TextFieldDelegateStarter
//
//  Created by Tim Ng on 1/26/19.
//  Copyright © 2019 timothyng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var zipCodeTextField: UITextField!
    @IBOutlet weak var dollarAmountTextField: UITextField!
    @IBOutlet weak var switchTextField: UITextField!
    @IBOutlet weak var textFieldSwitch: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // Set the delegates for all 3 textfields
        // For the 3rd textfield, you should set the delegate to the relevant View Controller
    }
    
    // Determine if 3rd text field should begin editing (should check with the switch's boolean value
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        return false
    }
    
    // Implement logic if the the return key is pressed on the keyboard
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return true
    }
    
    // Implement the logic for the 3rd if the switch is OFF when we are in the middle of typing
    @IBAction func turnOffTextField(_ sender: Any) {
    }
    

}

