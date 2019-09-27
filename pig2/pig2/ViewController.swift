//
//  ViewController.swift
//  pig2
//
//  Created by Kasumarthi, Sriya R on 9/23/19.
//  Copyright © 2019 Kasumarthi, Sriya R. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var player1final: Int = 0
    var player2final: Int = 0
    var p1current: Int = 0
    var p2current: Int = 0
    var turn: Bool = true
    
    @IBOutlet var wantEnd: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    func scoreTracker (randNum num: Int){
        if(num  == 1){
            if turn {
                p1current = 0
                turn.toggle()
            } else {
                p2current = 0
                turn.toggle()
            }
        } else {
            if turn {
               p1current += num
            } else {
                p2current += num
            }
    }
    }
    
    
    @IBAction func playerWantsEnd(_ sender: Any) {
        if turn {
            player1final += p1current
            p1current = 0
        } else {
            player2final += p2current
            p2current = 0
        }
        turn.toggle()
    }
}

