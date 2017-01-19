//
//  main.swift
//  TheLoveLetterMystery
//
//  Created by Keita Ito on 1/18/17.
//  Copyright © 2017 Keita Ito. All rights reserved.
//

let t = Int(readLine()!)!
var inputs = [String]()

for i in 0..<t {
    let string = readLine()!
    inputs.append(string)
}

for string in inputs {
    var copy = string
    var reversed = String(string.characters.reversed())
    
    let cValues = copy.unicodeScalars.map { Int($0.value) }
    let rValues = reversed.unicodeScalars.map { Int($0.value) }
    
    var count = 0
    for i in 0..<cValues.count {
        if cValues[i] < rValues[i] {
            count += rValues[i] - cValues[i]
        }
    }
    
    print(count)
}
