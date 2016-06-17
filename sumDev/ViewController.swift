//
//  ViewController.swift
//  sumDev
//
//  Created by Lucas-Raphael Müller on 12.06.16.
//  Copyright © 2016 Lucas-Rapahel Müller. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var bttnQuestionWhat: UIButton!
    
    @IBOutlet weak var labelAnswerWhat: UILabel!

    @IBOutlet weak var bttnStart: UIButton!
    
    // MARK: Actions
    
    @IBAction func enableAnswerLabel(sender: AnyObject) {
        if labelAnswerWhat.hidden == true {
            labelAnswerWhat.hidden = false;
            bttnStart.hidden = false;
        } else {
            labelAnswerWhat.hidden = true;
            bttnStart.hidden = true;
        }
    }

}

