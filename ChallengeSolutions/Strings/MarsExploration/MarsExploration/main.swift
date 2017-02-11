//
//  main.swift
//  MarsExploration
//
//  Created by Keita Ito on 2/10/17.
//  Copyright © 2017 Keita Ito. All rights reserved.
//

let input = readLine()!
let sos = "SOS"
var count = 0

for i in 0..<input.characters.count {
    let inputCharacter = input[input.index(input.startIndex, offsetBy: i)]
    let sosCharacter = sos[sos.index(sos.startIndex, offsetBy: i % 3)]
    if inputCharacter != sosCharacter {
        count += 1
    }
}

print(count)

//// My Original Solution
//
//let input = readLine()!
//var counter = 0
//let sos = ["S", "O", "S"]
//
//for i in stride(from: 0, to: input.characters.count, by: 3) {
//    let firstIndex = input.index(input.startIndex, offsetBy: i)
//    let thirdIndex = input.index(input.startIndex, offsetBy: i + 3)
//    let indexRange = firstIndex..<thirdIndex
//    let subString = input.substring(with: indexRange)
//    
//    let charArray = subString.characters.map { String($0) }
//    for i in 0..<3 {
//        if charArray[i] != sos[i] {
//            counter += 1
//        }
//    }
//}
//
//print(counter)

// sample input
// SOSSPSSQSSOR
