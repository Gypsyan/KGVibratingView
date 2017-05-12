//
//  ViewController.swift
//  KGVibratingViewApp
//
//  Created by Anantha Krishnan K G on 11/05/17.
//  Copyright © 2017 Ananth. All rights reserved.
//

import UIKit
import KGVibratingView

class ViewController: UIViewController {

    @IBOutlet var button: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func touched(_ sender: UIButton) {
        sender.startShakingWith(direction: .Vertical_Top, numberOfTimes: 140, totalDuration: 5, completion: nil)
        
    }
   
}

