//
//  ViewController.swift
//  pig2
//
//  Created by Kasumarthi, Sriya R on 9/23/19.
//  Copyright © 2019 Kasumarthi, Sriya R. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet var RandomNumButton: UIButton!
    
    @IBOutlet var RandomNumLabel: UILabel!
     var randomInt = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
      
    }
 
    @IBAction func buttonPressed(sender: AnyObject) {
        
        randomInt = Int.random(in: 1..<7)
        self.RandomNumLabel.text = "\(self.randomInt)"
        
    }
}

