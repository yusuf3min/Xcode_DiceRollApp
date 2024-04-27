//
//  ViewController.swift
//  DiceRollApp
//
//  Created by yusufeminguney on 27.04.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var rightDice: UIImageView!
    @IBOutlet weak var leftDice: UIImageView!
    
    let items = [UIImage(named: "dice1"), UIImage(named: "dice2"),UIImage(named: "dice3"),UIImage(named: "dice4"),UIImage(named: "dice5"),UIImage(named: "dice6")]
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func btn(_ sender: Any) {
        
        let first = Int(arc4random_uniform(6))
        let second = Int(arc4random_uniform(6))
        
        leftDice.image = items[first]
        rightDice.image = items[second]
    }
    
}

