//
//  ViewController.swift
//  Storyboard Bullseye
//
//  Created by Tony Hong on 1/13/22.
//

import UIKit
//at the very top after UIKit
import Foundation

var randomNumber = 0

override func viewDidLoad() {
        super.viewDidLoad()
        randomNumber = Int(arc4random_uniform(101))
        numLabel.text = String(randomNumber)
}

import Foundation

class ViewController: UIViewController {
    
    // switch that switches on and off from exact mode
    @IBOutlet weak var exactSwitch: UISwitch!
    
    // displays whether user hit bullseye
    @IBOutlet weak var resultLabel: UILabel!
    
    // displays the number user must hit to win
    @IBOutlet weak var numLabel: UILabel!
    
    // displays the current level the user is on
    @IBOutlet weak var currentLevel: UILabel!
    
    // displays high score of user
    @IBOutlet weak var highScore: UILabel!
    
    // slider user can slide to match random number given
    @IBOutlet weak var numSlider: UISlider!
    
    // IBOutlet for play again button
    @IBOutlet weak var playAgainButton: UIButton!
    
    //switch for exact mode
    @IBOutlet weak var exactSwitch: UISwitch!
    
    // displays the max value of slider
    @IBOutlet weak var rangeLabel: UILabel!
    
    @IBAction func checkValue(_ sender: Any) {
        if exactSwitch.isOn == false {
                    if randomNumber - 3 <= Int(numSlider.value) && randomNumber + 3 >= Int(numSlider.value) {
                        resultLabel.text = "You were right on point! Bullseye!"
                    } else {
                        resultLabel.text = "Whoops! You missed! Try again later"
                    }
        } else { //if exactSwitch.isOn is true
            if randomNumber - 3 == Int(numSlider.value) {
                resultLabel.text = "Bullseye!"
                } else {
                        resultLabel.text = "Missed"
                }
        }
        resultLabel.isHidden = false //we'll come back to this
             playAgainButton.isHidden = false
    }
    
    @IBAction func playAgain(_ sender: Any) {
        numSlider.setValue(50.0, animated: false)
           randomNumber = Int(arc4random_uniform(101))
           numLabel.text = String(randomNumber)
           resultLabel.isHidden = true //must reappear next time it is checked ^
           playAgainButton.isHidden = true

        
    }
    
    @IBAction func sliderValueChanged(_ sender: Any) {
        numLabel.text = "\(Int(numSlider.value))"
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

