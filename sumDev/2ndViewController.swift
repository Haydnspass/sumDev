//
//  2ndViewController.swift
//  sumDev
//
//  Created by Lucas-Raphael Müller on 12.06.16.
//  Copyright © 2016 Lucas-Rapahel Müller. All rights reserved.
//

import Foundation
import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var number1: UITextField!
    @IBOutlet weak var number2: UITextField!
    @IBOutlet weak var modeSwitch: UISegmentedControl!
    @IBOutlet weak var exBttn: UIButton!
    @IBOutlet weak var outputlabel: UILabel!
    
    let simpleCalc = simpleCalculation()
    
    // MARK: Actions
    @IBAction func exCalc(sender: AnyObject) {
        // mode is wrong --> correct  next time
        let modeIx = modeSwitch.selectedSegmentIndex
        var mode: String
        switch modeIx {
        case 0:
            mode = "+"
        case 1:
            mode = "-"
        case 2:
            mode = "*"
        case 3:
            mode = "/"
        default:
            mode = ""
        }
        let aIn = number1.text!
        // replace comma decimal sign by dot and convert to double
        let aPar = Double(aIn.stringByReplacingOccurrencesOfString(",", withString: ".", options: NSStringCompareOptions.LiteralSearch, range: nil))
        let bIn = number2.text!
        let bPar = Double(bIn.stringByReplacingOccurrencesOfString(",", withString: ".", options: NSStringCompareOptions.LiteralSearch, range: nil))
        // calculate output by using the the simpleCalc class
        let output = simpleCalc.doCalc(mode, a: aPar!, b: bPar!)
        
        outputlabel.text = "Result: \(output)";
        
    }
}