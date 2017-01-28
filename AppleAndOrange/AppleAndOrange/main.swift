//
//  main.swift
//  AppleAndOrange
//
//  Created by Keita Ito on 1/27/17.
//  Copyright © 2017 Keita Ito. All rights reserved.
//

let regionsPoints = readLine()!.characters.split(separator: " ").map { Int(String($0))! }
let houseRegion = regionsPoints[0]...regionsPoints[1]
let treePoints = readLine()!.characters.split(separator: " ").map { Int(String($0))! }
let applePoint = treePoints[0]
let orangePoint = treePoints[1]

let numbers = readLine()!.characters.split(separator: " ").map { Int(String($0))! }
let numberOfApple = numbers[0]
let numberOfOrange = numbers[1]

let distancesOfFallingApples = readLine()!.characters.split(separator: " ").map { Int(String($0))! }
let distancesOfFallingOranges = readLine()!.characters.split(separator: " ").map { Int(String($0))! }

let positionsOfFallingApples = distancesOfFallingApples.map { applePoint + $0 }
let positionsOfFallingOranges = distancesOfFallingOranges.map { orangePoint + $0 }

let applesInHouseRegion = positionsOfFallingApples.filter { houseRegion.contains($0) }
let orangesInHouseRegion = positionsOfFallingOranges.filter { houseRegion.contains($0) }

print(applesInHouseRegion.count)
print(orangesInHouseRegion.count)
