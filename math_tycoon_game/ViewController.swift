//
//  ViewController.swift
//  math_tycoon_game
//
//  Created by Karl Thaler on 8/4/20.
//  Copyright © 2020 Saturn Games. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var digits: UILabel!
    
    @IBOutlet weak var spend_informer: UILabel!
    
    @IBOutlet weak var mult_div_button: UIButton!
    
    @IBOutlet weak var unlock_button: UIButton!

    @IBOutlet weak var button_button: UIButton!
    
    
    var unlock: Bool = false
    
    @IBAction func button_tapped(_ sender: UIButton) {

        switch sender.tag {
        case 20:
            prob_type = .add_sub
        case 21:
            prob_type = .mult_div            
        case 22:
            if digit >= 10{
                mult_div_button.isEnabled = true
                button_button.isEnabled = false
                unlock_button.isHidden = true
                spend_informer.isHidden = true
                mult_div_button.setTitleColor(UIColor.darkText, for: .normal)
                digit -= 1
                digits.text = "Digits: \(digit)"
            }
            else{
                spend_informer.shake()
                digits.shake()
            }
        case 23:
            spend_informer.shake()
            digits.shake()
            
        default:
            print("no")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        NotificationCenter.default.addObserver(self, selector: #selector(didGetNotification(_:)), name: Notification.Name("d"), object: nil)
        digits.text = "Digits: \(digit)"
        
    }
    
    @objc func didGetNotification(_ notification: Notification){
        let d = notification.object as! String
        digits.text = d
    }
    
}

