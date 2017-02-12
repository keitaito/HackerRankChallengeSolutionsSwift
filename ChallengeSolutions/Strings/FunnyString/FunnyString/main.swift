//
//  main.swift
//  FunnyString
//
//  Created by Keita Ito on 2/11/17.
//  Copyright © 2017 Keita Ito. All rights reserved.
//
// https://www.hackerrank.com/challenges/funny-string

import Foundation

extension String {
    func character(at index: Int) -> Character {
        return self[self.index(self.startIndex, offsetBy: index)]
    }
}

extension Character {
    func unicodeValue() -> Int {
        return Int(UnicodeScalar(String(self))!.value)
    }
}

let t = Int(readLine()!)!

for _ in 0..<t {
    let string = readLine()!
    var isFunny = true
    
    for i in 0..<string.characters.count / 2 {
        let valueOfCurrentCharacter = string.character(at: i).unicodeValue()
        let valueOfPreviousCharacter = string.character(at: i + 1).unicodeValue()
        let differenceOfValues = abs(valueOfCurrentCharacter - valueOfPreviousCharacter)
        
        let valueOfCurrentCharacterReversed = string.character(at: string.characters.count - i - 1).unicodeValue()
        let valueOfPreviousCharacterReversed = string.character(at: string.characters.count - i - 2).unicodeValue()
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

// Sample Input
//2
//acxz
//bcxz

// https://www.hackerrank.com/challenges/funny-string
