//
//  ViewController.swift
//  UIView.transition
//
//  Created by Jennifer Joseph on 11/20/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var delaySwitch: UISwitch!
    @IBOutlet weak var ghostButton: UIButton!
    @IBOutlet weak var pumpkinButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emojiLabel.text = "" 
    }
    
    func displayEmoji(emoji: String) {
        UIView.transition(with: emojiLabel, duration: 0.5, options: .transitionFlipFromBottom, animations: {
            self.emojiLabel.text = "\(emoji)"
        }, completion: nil)
    }
    
    
    @IBAction func ghostButtonPressed(_ sender: UIButton) {
        if delaySwitch.isOn {
            DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                self.displayEmoji(emoji: "👻")
            }
        } else {
            displayEmoji(emoji: "👻")
        }
    }
    
    @IBAction func pumpkinButtonPressed(_ sender: UIButton) {
        if delaySwitch.isOn {
            DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                self.displayEmoji(emoji: "🎃")
            }
        } else {
            displayEmoji(emoji: "🎃")
        }
    }
}

