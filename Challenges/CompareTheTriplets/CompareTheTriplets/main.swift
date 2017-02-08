//
//  main.swift
//  CompareTheTriplets
//
//  Created by Keita Ito on 1/19/17.
//  Copyright © 2017 Keita Ito. All rights reserved.
//

// input for Alice.
let a = readLine()!.characters.split(separator: " ").map { Int(String($0))! }
// input for Bob.
let b = readLine()!.characters.split(separator: " ").map { Int(String($0))! }
// container for scores.
var (aScore, bScore) = (0, 0)

for i in 0..<a.count where a.count == b.count {
    if a[i] > b[i] {
        aScore += 1
    } else if a[i] < b[i] {
        bScore += 1
    }
}

print("\(aScore) \(bScore)")
