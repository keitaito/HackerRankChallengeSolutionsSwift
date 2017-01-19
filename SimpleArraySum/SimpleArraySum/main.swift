//
//  main.swift
//  SimpleArraySum
//
//  Created by Keita Ito on 1/18/17.
//  Copyright © 2017 Keita Ito. All rights reserved.
//

// input: an Integer. the size of the array.
let n = Int(readLine()!)!
// input: an array of Integer.
let numbers = readLine()!.characters.split(separator: " ").map { Int(String($0))! }
// Sum with reduce function.
let sum = numbers.reduce(0, +)
print(sum)
