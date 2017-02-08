//
//  main.swift
//  AVeryBigSum
//
//  Created by Keita Ito on 1/19/17.
//  Copyright © 2017 Keita Ito. All rights reserved.
//

let n = Int(readLine()!)!
let numbers = readLine()!.characters.split(separator: " ").map { Int(String($0))! }

let result = numbers.reduce(0, +)
print(result)
