//
//  main.swift
//  DiagonalDifference
//
//  Created by Keita Ito on 1/19/17.
//  Copyright © 2017 Keita Ito. All rights reserved.
//

let n = Int(readLine()!)!

var inputs = [[Int]]()
for i in 0..<n {
    let anInput = readLine()!.characters.split(separator: " ").map { Int(String($0))! }
    inputs.append(anInput)
}

var ascendingValue = 0
for i in 0..<n {
    let value = inputs[i][i]
    ascendingValue += value
}
//print(ascendingValue)

let reversedInputs = Array(inputs.reversed())
var descendingValue = 0
for i in 0..<n {
    let value = reversedInputs[i][i]
    descendingValue += value
}
//print(descendingValue)

let result = abs(ascendingValue - descendingValue)
print(result)
