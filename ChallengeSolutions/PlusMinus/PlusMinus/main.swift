//
//  main.swift
//  PlusMinus
//
//  Created by Keita Ito on 1/22/17.
//  Copyright © 2017 Keita Ito. All rights reserved.
//

import Foundation

let n = Int(readLine()!)!
let numbers = readLine()!.characters.split(separator: " ").map { Int(String($0))! }

let numbersCount = Double(numbers.count)
var positiveNumbersCount: Double = 0
var negativeNumbersCount: Double = 0
var zerosCount: Double = 0

for number in numbers {
    if number > 0 {
        positiveNumbersCount += 1
    } else if number < 0 {
        negativeNumbersCount += 1
    } else {
        zerosCount += 1
    }
}

let positivieFraction = positiveNumbersCount / numbersCount
let negativeFraction = negativeNumbersCount / numbersCount
let zeroFraction = zerosCount / numbersCount

print(positivieFraction)
print(negativeFraction)
print(zeroFraction)

print(String(format: "%.5f", positivieFraction))
print(String(format: "%.5f", negativeFraction))
print(String(format: "%.5f", zeroFraction))
