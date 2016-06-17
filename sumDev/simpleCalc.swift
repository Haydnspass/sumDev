//
//  simpleCalc.swift
//  sumDev
//
//  Created by Lucas-Raphael Müller on 12.06.16.
//  Copyright © 2016 Lucas-Rapahel Müller. All rights reserved.
//

import Foundation

class simpleCalculation {
    var output: Double = 0;
    
    func doCalc(mode: String, a: Double, b: Double) -> Double {
        switch mode {
        case "+":
            output = a + b
        case "-":
            output = a - b
        case "*":
            output = a * b
        case "/":
            output = a / b
        default:
            output = 0
        }
        return output
    }
}