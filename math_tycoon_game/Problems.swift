//
//  Problems.swift
//  math_tycoon_game
//
//  Created by Karl Thaler on 8/5/20.
//  Copyright © 2020 Saturn Games. All rights reserved.
//

import Foundation

func arithmatic(type: problem_types)->[Int]{
    
    var num1, num2: Int
    let operation = Int.random(in: 0..<2)
    
    if type == .add_sub {
        num1 = Int.random(in: 2..<20)
        num2 = Int.random(in: 2..<20)
        
        if operation == 1{
            // Subtraction
            return getSubList(n1: num1, n2: num2, op: operation)
        }
        else{
            // Addition
            return [num1, num2, operation, num1+num2]
        }
    }
    else{
        if operation == 0{
            // Multiply
            num1 = Int.random(in: 2..<12)
            num2 = Int.random(in: 2..<12)
            
            return [num1, num2, operation, num1*num2]
        }
        else{
            // Divide
            num1 = Int.random(in: 2..<12)
            num2 = num1 * Int.random(in: 2..<12)
            
            return [num2, num1, operation, num2/num1]
        }
        
    }

}

func getSubList(n1: Int, n2: Int, op: Int) -> [Int]{
    if n1 >= n2{
        return [n1+1, n2, op, (n1+1)-n2]
    }
    else{
        return [n2, n1, op, n2-n1]
    }
}

