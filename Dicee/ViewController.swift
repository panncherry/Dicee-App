//
//  ViewController.swift
//  Dicee
//
//  Created by Pann Cherry on 5/16/19.
//  Copyright © 2019 Pann Cherry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    
    let diceImages = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDiceImages()
    }

    
    @IBAction func rollButtonPressed(_ sender: Any) {
        
        updateDiceImages()
    }
    
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    
    func updateDiceImages(){
        
        randomDiceIndex1 = Int.random(in: 0 ... 5)
        randomDiceIndex2 = Int.random(in: 0 ... 5)
        
        diceImageView1.image = UIImage(named: diceImages[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceImages[randomDiceIndex2])
    }
    
}

