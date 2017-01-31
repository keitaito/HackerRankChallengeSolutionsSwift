//
//  main.swift
//  BetweenTwoSets
//
//  Created by Keita Ito on 1/30/17.
//  Copyright © 2017 Keita Ito. All rights reserved.
//

func gcd(_ a: Int, _ b: Int) -> Int {
    if b == 0 {
        return a
    } else {
        return gcd(b, a % b)
    }
}

func lcm(_ a: Int, _ b: Int) -> Int {
    return (a * b) / gcd(a, b)
}

func gcd(_ array: [Int]) -> Int {
    var result = array.first!
    for i in 1..<array.count {
        result = gcd(result, array[i])
    }
    return result
}

func lcm(_ array: [Int]) -> Int {
    var result = array.first!
    for i in 1..<array.count {
        result = lcm(result, array[i])
    }
    return result
}

func check(factor: Int, array: [Int]) -> Bool {
    for element in array {
        if element % factor != 0 {
            return false
        }
    }
    return true
}

let numbers = readLine()!.characters.split(separator: " ").map { Int(String($0))! }
let aArray = readLine()!.characters.split(separator: " ").map { Int(String($0))! }
let bArray = readLine()!.characters.split(separator: " ").map { Int(String($0))! }

let aLCM = lcm(aArray)
let bGCD = gcd(bArray)

var result = [Int]()

for multipleOfA in stride(from: aLCM, through: bGCD, by: aLCM) {
    if check(factor: multipleOfA, array: bArray) {
        result.append(multipleOfA)
    }
}

print(result.count)





// ---

//func lcm(_ array: [Int]) -> Int {
//    guard array.count != 0 else { return 0 }
//    var lcm = array.max()!
//    var isFactor = false
//
//    while true {
//        isFactor = true
//        array.forEach { element in
//            if lcm % element == 0 {
//                // the element is a factor of tmax.
//            } else {
//                isFactor = false
//            }
//        }
//
//        if isFactor == true {
//            return lcm
//        } else {
//            lcm += 1
//        }
//    }
//}
