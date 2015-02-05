//
//  ViewController.swift
//  Calculator
//
//  Created by eng on 03/02/15.
//  Copyright (c) 2015 Engin Bulanık. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var display: UILabel!
    
    var userIsInTheMiddleofTypingANumber: Bool = false

    @IBAction func appendDigit(sender: UIButton) {
        
        let digit = sender.currentTitle!
        if userIsInTheMiddleofTypingANumber {
            display.text = display.text! + digit
        }
        else {
            display.text = digit
        }
        userIsInTheMiddleofTypingANumber = true
        
        println("digit = \(digit)")
    }
 
}
