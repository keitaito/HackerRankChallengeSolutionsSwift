//
//  main.swift
//  DivisibleSumPairs
//
//  Created by Keita Ito on 2/1/17.
//  Copyright © 2017 Keita Ito. All rights reserved.
//

let input = readLine()!.characters.split(separator: " ").flatMap { Int(String($0)) }
let n = input[0]
let k = input[1]
let numbers = readLine()!.characters.split(separator: " ").flatMap { Int(String($0)) }

var resultCount = 0

for i in 0..<numbers.count {
    for j in (i + 1)..<numbers.count {
        let iNumber = numbers[i]
        let jNumber = numbers[j]
        
        if (iNumber + jNumber) % k == 0 {
            resultCount += 1
        }
    }
}

print(resultCount)
