//
//  main.swift
//  FunnyString
//
//  Created by Keita Ito on 2/11/17.
//  Copyright © 2017 Keita Ito. All rights reserved.
//
// https://www.hackerrank.com/challenges/funny-string

import Foundation

//extension String {
//    func character(at index: Int) -> Character {
//        return self[self.index(self.startIndex, offsetBy: index)]
//    }
//}

extension Character {
    func unicodeValue() -> Int {
        return Int(UnicodeScalar(String(self))!.value)
    }
}

let t = Int(readLine()!)!

for _ in 0..<t {
    let string = readLine()!
    var isFunny = true
    
    var index = string.startIndex
    var reverseIndex = string.index(before: string.endIndex)
    
    for i in 0..<string.characters.count / 2 {
        let valueOfCurrentCharacter = string[index].unicodeValue()
        let valueOfPreviousCharacter = string[string.index(after: index)].unicodeValue()
        index = string.index(after: index)
        let differenceOfValues = abs(valueOfCurrentCharacter - valueOfPreviousCharacter)
        
        let valueOfCurrentCharacterReversed = string[reverseIndex].unicodeValue()
        let valueOfPreviousCharacterReversed = string[string.index(before: reverseIndex)].unicodeValue()
        reverseIndex = string.index(before: reverseIndex)
        let differenceOfValuesForReversed = abs(valueOfCurrentCharacterReversed - valueOfPreviousCharacterReversed)
        
        if differenceOfValues != differenceOfValuesForReversed {
            isFunny = false
            break
        }
    }
    
    if isFunny {
        print("Funny")
    } else {
        print("Not Funny")
    }
}

//// Ray Fix's solution: https://gist.github.com/rayfix/4cc72bc19a59407bd32f3b19d03cbeb0
//
//let str = "acxz"
//func isFunny(_ s: AnySequence<UInt8>) -> Bool {
//    let n1: [Int] = zip(s.dropFirst(), s).map { Int($0)-Int($1) }
//    let n2: [Int] = zip(s.reversed().dropFirst(), s.reversed()).map { Int($1)-Int($0) }
//    return n1 == n2
//}
//if isFunny(AnySequence(str.utf8)) {
//    print("Funny")
//} else {
//    print("Not Funny")
//}

// Sample Input
//2
//acxz
//bcxz

// https://www.hackerrank.com/challenges/funny-string
