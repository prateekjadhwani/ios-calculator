//
//  ViewController.swift
//  Calculator
//
//  Created by Prateek Jadhwani on 5/2/17.
//  Copyright © 2017 Prateek Jadhwani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var display: UILabel!
    
    var isBeingUsedByUser = false
    var result: Double = 0.0
    
    @IBAction func NumberButton(_ sender: UIButton) {
        let title = sender.currentTitle!
        
        if(isBeingUsedByUser) {
            display.text = display.text! + title
        } else {
            display.text = title
            isBeingUsedByUser = true
        }
    }
    
    @IBAction func OperationButton(_ sender: UIButton) {
        let op = sender.currentTitle!
        let operand = Double(display.text!)!
        
        print("\(operand)")
        
        switch op {
        case "+":
            result += operand
        case "-":
            result -= operand
        case "x":
            result = result * operand
        case "/":
            result = result / operand
        default:
            break
        }
        
        display.text! = String(result)
        isBeingUsedByUser = false
    }
}

