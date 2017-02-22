//
//  main.swift
//  AlternatingCharacters
//
//  Created by Keita Ito on 2/14/17.
//  Copyright © 2017 Keita Ito. All rights reserved.
//

import Foundation

func numberOfConsecutiveCharactersToRemove(from string: String) -> Int {
    var count = 0
    var stringIndex = string.startIndex
    for _ in 0..<string.characters.count - 1 {
        let currentCharacter = string[stringIndex]
        let nextIndex = string.index(after: stringIndex)
        let nextCharacter = string[nextIndex]
        
        if currentCharacter == nextCharacter {
            count += 1
        }
        
        stringIndex = nextIndex
    }
    
    return count
}

let numberOfTestCase = Int(readLine()!)!

for i in 0..<numberOfTestCase {
    let string = readLine()!
    let result = numberOfConsecutiveCharactersToRemove(from: string)
    print(result)
}

