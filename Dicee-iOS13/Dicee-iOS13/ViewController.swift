//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    let diceArray = [UIImage(imageLiteralResourceName: "DiceOne"), UIImage(imageLiteralResourceName: "DiceTwo"), UIImage(imageLiteralResourceName: "DiceThree"), UIImage(imageLiteralResourceName: "DiceFour"), UIImage(imageLiteralResourceName: "DiceFive"), UIImage(imageLiteralResourceName: "DiceSix")]
    
    // Executed when view is loaded, similar to onCreate in android I guess
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // diceImageView1.image = UIImage(imageLiteralResourceName: "DiceSix")
        // diceImageView1.alpha = 0.5
        // diceImageView2.image = UIImage(imageLiteralResourceName: "DiceTwo")
    }

    @IBAction func onRollDice(_ sender: UIButton) {
        NSLog("Roll clicked!")
        // diceImageView1.image = diceArray[Int.random(in: 0...5)]
        diceImageView1.image = diceArray.randomElement()
        // diceImageView2.image = diceArray[Int.random(in: 0...5)]
        diceImageView2.image = diceArray.randomElement()
    }
    
}

