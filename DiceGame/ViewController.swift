//
//  ViewController.swift
//  DiceGame
//
//  Created by Code Nation on 20/06/2019.
//  Copyright © 2019 Code Nation. All rights reserved.
//  

import UIKit

class ViewController: UIViewController {
    
    // MARK: Variables
    
    var dice = [#imageLiteral(resourceName: "Kismet-Ace"), #imageLiteral(resourceName: "Kismet-Deuce"), #imageLiteral(resourceName: "Kismet-Trey") ,#imageLiteral(resourceName: "Kismet-Four"), #imageLiteral(resourceName: "Kismet-Five"), #imageLiteral(resourceName: "Kismet-Six")]
    var randomDiceIndex: Int = 0
    var score: Int = 0
    var winCount: Int = 0
    var lossCount: Int = 0
    
    // MARK: Outlets
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var rulesLabel: UILabel!
    
    @IBOutlet weak var mainmessLabel: UILabel!
    
    @IBOutlet weak var secmessageLabel: UILabel!
    @IBOutlet weak var diceImage: UIImageView!
    @IBOutlet weak var lossCounter: UILabel!
    @IBOutlet weak var winCounter: UILabel!
    
    // MARK: Actions

    @IBAction func rollButtonAction(_ sender: Any) {
        
        randomDiceIndex = Int.random(in: 0...5) //will choose a number between 0 and 6 randomly.
        diceImage.image = dice[randomDiceIndex]
        diceLogic();
        score += (randomDiceIndex + 1)
        secmessageLabel.text = "Roll Again...";
        print(randomDiceIndex);
        scoreLabel.text = "Score: \(score)"
    }
    
    // Mark: Funtions
    
    // Get to 21 or higher, you win.
    // Roll a 1, you lose.
    func diceLogic() {
        
        
        if (randomDiceIndex == 0) {
            score = -1
            lossCount += 1
            mainmessLabel.text = "You Lost"
            lossCounter.text = "Loss: \(lossCount)"
        }
        else if (score >= 21) {
            score = -1
            winCount += 1
            mainmessLabel.text = "You Win!"
            winCounter.text = "Wins: \(winCount)"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

