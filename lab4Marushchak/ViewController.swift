//
//  ViewController.swift
//  lab4Marushchak
//
//  Created by Serhii on 25.03.24.
//  Copyright © 2024 Serhii. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    var flipCount : Int = 0
    {
        didSet
            {
                flipCountLabel.text = "Flips: \(flipCount)"

        }
    }

    var emojiChoises: Array<String> = ["🐶", "🧤", "🐶", "🧤"]
    
    @IBOutlet weak var flipCountLabel: UILabel!
    @IBOutlet var cardButtons: [UIButton]!
    
    @IBAction func touchCard(_ sender: UIButton)
    {
        flipCount += 1
        if let cardNumber = cardButtons.index(of: sender)
        {
             print("cardNumber = \(cardNumber)")
            flipCard(withEmoji: emojiChoises[cardNumber], on: sender)
        }
       
    }
    
    
    
    
    
    func flipCard(withEmoji emoji: String,
                  on button: UIButton)
    {
        print("flipCard(withEmoji: \(emoji)")
        if button.currentTitle == emoji
        {
            button.setTitle("", for: .normal)
            button.backgroundColor = #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)
        }
        else
        {
            button.setTitle(emoji, for: .normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
    }
}

