//
//  ViewController.swift
//  Love Calculator
//
//  Created by Luis Franco R on 29/12/2017.
//  Copyright © 2017 Luis Franco R. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    var name1 = ""
    var name2 = ""

    @IBOutlet weak var yourName: UITextField!
    @IBOutlet weak var theirName: UITextField!
    @IBOutlet weak var displayLabel: UILabel!
    @IBOutlet weak var isThisLove: UIButton!
    @IBOutlet weak var reset: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        reset.isHidden = true
    }

    
    @IBAction func loveCalculatorButton(_ sender: UIButton) {
        
        if (yourName.text!.isEmpty) || (theirName.text!.isEmpty) {
            
            displayLabel.text = "Enter your & his/her name please"
            isThisLove.isEnabled = false
            
        }
        else {
            name1 = yourName.text!
            name2 = theirName.text!
            
            displayLabel.text = loveCalculator(yourName: name1, theirName: name2)
            isThisLove.isEnabled = false
        }
        reset.isHidden = false
    }
    
    
    @IBAction func resetPressed(_ sender: UIButton) {
        yourName.text = ""
        theirName.text = ""
        isThisLove.isEnabled = true
        displayLabel.text = "The answer is ..."
        
    }
    
    
    func loveCalculator (yourName: String, theirName: String) -> String {
        
        let names = name1 + " & " + name2
        let loveScore = arc4random_uniform(101)
        
        if loveScore > 60 {
            return "\(names). Your love score is: \(loveScore)%. You'll love each other forever like Kanye loves Kanye! ❤️"
        }
        else if loveScore > 20 && loveScore <= 59 {
            return "\(names). Your love score is: \(loveScore)%. You go together like Coke & Menthos! BOOM!!! 💥"
        }
        else {
            return "\(names). Your love score is: \(loveScore)%. No love possible here, you'll be forever alone! 💔"
        }
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
        
    }
    
}
