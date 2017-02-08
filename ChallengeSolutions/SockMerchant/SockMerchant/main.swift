//
//  main.swift
//  SockMerchant
//
//  Created by Keita Ito on 2/4/17.
//  Copyright © 2017 Keita Ito. All rights reserved.
//

let n = Int(readLine()!)!
let numbers = readLine()!.characters.split(separator: " ").flatMap { Int(String($0)) }

var colors = [Int: Int]()
var pairs = 0

for number in numbers {
    if let count = colors[number] {
        pairs += 1
        colors[number] = nil
    } else {
        colors[number] = 1
    }
}

print(pairs)

// 9
// 10 20 20 10 10 30 50 10 20


// -----

//let n = Int(readLine()!)!
//let numbers = readLine()!.characters.split(separator: " ").flatMap { Int(String($0)) }
//
//var numberCounts = [Int: Int]()
//
//for number in numbers {
//    if let count = numberCounts[number] {
//        numberCounts[number] = count + 1
//    } else {
//        numberCounts[number] = 1
//    }
//}
//
//var arrayOfNumbersOfPairs = [Int]()
//
//for value in numberCounts.values {
//    let numberOfPairs = value / 2
//    arrayOfNumbersOfPairs.append(numberOfPairs)
//}
//
//let totalCount = arrayOfNumbersOfPairs.reduce(0, +)
