//
//  CalculatorController.swift
//  math_tycoon_game
//
//  Created by Karl Thaler on 8/5/20.
//  Copyright © 2020 Saturn Games. All rights reserved.
//

import UIKit

class CalculatorController: UIViewController {
    
    
    var prob_array = [Int]()
    var op = ""
    var num: Int = -1


    
    @IBOutlet weak var problem: UILabel!
    
    @IBOutlet weak var input: UILabel!
    
    @IBOutlet weak var digits_2: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        input.text = ""
        digits_2.text = "Digits: \(digit)"
        set_prob()
        
    }
    
    @IBAction func buttons(_ sender: UIButton) {
        
        switch sender.tag {
        case 11:
            if Int(input.text!) == prob_array[3]{
                if prob_type == .add_sub{
                    digit+=1
                    digits_2.text = "Digits: \(digit)"
                    
                }
                else if prob_type == .mult_div{
                    digit+=3
                    digits_2.text = "Digits: \(digit)"
                }
                print("Correct!")
                
                input.text = ""
                set_prob()
            }
            else{
                print("Incorrect")
                problem.shake()
                input.text = ""
            }
        case 12:
            input.text = ""
        default:
            num = sender.tag - 1
            input.text = input.text! + String(num)
        }
        
        NotificationCenter.default.post(name: Notification.Name("d"), object: digits_2.text)
        
    }
    
    func set_prob(){
        
        if prob_type == .add_sub{
            
            prob_array = arithmatic(type: .add_sub)
            
            if prob_array[2] == 0{
                op = "+"
            }
            else{
                op = "-"
            }
        }
        
        if prob_type == .mult_div{
            
            prob_array = arithmatic(type: .mult_div)
            if prob_array[2] == 0{
                op = "x"
            }
            else{
                op = "/"
            }
        }
        
        problem.text = "\(prob_array[0]) \(op) \(prob_array[1]) = "
        
    }
    

}
