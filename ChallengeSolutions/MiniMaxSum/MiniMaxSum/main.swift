//
//  main.swift
//  MiniMaxSum
//
//  Created by Keita Ito on 1/25/17.
//  Copyright © 2017 Keita Ito. All rights reserved.
//

let numbers = readLine()!.characters.split(separator: " ").map { Int(String($0))! }

let min = numbers.min()!
let max = numbers.max()!

let sum = numbers.reduce(0, +)

let minSum = sum - max
let maxSum = sum - min

print("\(minSum) \(maxSum)")
