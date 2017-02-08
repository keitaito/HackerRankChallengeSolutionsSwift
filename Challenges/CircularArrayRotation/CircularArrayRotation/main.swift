//
//  main.swift
//  CircularArrayRotation
//
//  Created by Keita Ito on 1/22/17.
//  Copyright © 2017 Keita Ito. All rights reserved.
//

let firstLine = readLine()!.characters.split(separator: " ").map { Int(String($0))! }
let n = firstLine[0]
let k = firstLine[1]
let q = firstLine[2]

let numbers = readLine()!.characters.split(separator: " ").map { Int(String($0))! }

let rotation = k % n

for i in 0..<q {
    let index = Int(readLine()!)!
    
    if index - rotation >= 0 {
        print(numbers[index - rotation])
    } else {
        print(numbers[index - rotation + n])
    }
}
