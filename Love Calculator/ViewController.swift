//
//  ViewController.swift
//  Love Calculator
//
//  Created by Luis Franco R on 29/12/2017.
//  Copyright © 2017 Luis Franco R. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var yourName: UITextField!
    @IBOutlet weak var theirName: UITextField!
    
    @IBOutlet weak var displayLabel: UILabel!
    
    @IBAction func loveCalculatorButton(_ sender: UIButton) {
        
        let name1 = yourName.text!
        let name2 = theirName.text!
        
        func loveCalculator (yourName : String, theirName : String) -> String {
            
            let names = name1 + " & " + name2
            let loveScore = arc4random_uniform(101)
            
            if loveScore > 60 {
                return "\(names). Your love socre is: \(loveScore)%. You'll love each other forever like Kanye loves Kanye! ❤️"
            }
            else if loveScore > 20 && loveScore <= 60 {
                return "\(names). Your love score is: \(loveScore)%. You go together like Coke & Menthos! BOOM!!! 💥"
            }
            else {
                return "\(names). Your love score is: \(loveScore)%. No love possible here, you'll be forever alone! 💔"
            }
            
        }
        
        displayLabel.text = loveCalculator(yourName: name1, theirName: name2)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
        
        override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            self.view.endEditing(true)
            
        }
        
        func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            textField.resignFirstResponder()
            return true
        }
    
}
