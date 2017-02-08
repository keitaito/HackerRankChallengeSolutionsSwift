//
//  main.swift
//  UtopianTree
//
//  Created by Keita Ito on 2/4/17.
//  Copyright © 2017 Keita Ito. All rights reserved.
//

func grow(height: Int, cycle: Int) -> Int {
    guard cycle != 0 else { return height }
    
    var result = height
    
    if cycle % 2 == 0 {
        
        let x = cycle / 2
        
        for _ in 0..<x {
            result = result * 2 + 1
        }
        
    } else { //cycle % 2 == 1
        let x = cycle / 2
        
        for _ in 0..<x {
            result = result * 2 + 1
        }
        
        result += 1
    }
    
    return result
}

let t = Int(readLine()!)!

let height = 1

for i in 0..<t {
    let n = Int(readLine()!)!
    
    let result = grow(height: 1, cycle: n)
    
    print(result)
}


//3
//0
//1
//4
