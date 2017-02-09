//
//  main.swift
//  SuperReducedString
//
//  Created by Keita Ito on 2/7/17.
//  Copyright © 2017 Keita Ito. All rights reserved.
//

enum Reduced {
    case remainder(String)
    case allUniqueCharacaters(String)
}

func reduce(string: String) -> Reduced {
    var copy = string
    for i in 0..<copy.characters.count - 1 {
        let charIndex = copy.index(copy.startIndex, offsetBy: i)
        let nextCharIndex = copy.index(after: charIndex)
        let currentCharacter = copy[charIndex]
        let nextCharacter = copy[nextCharIndex]
        
        if currentCharacter == nextCharacter {
            copy.removeSubrange(charIndex...nextCharIndex)
            return .remainder(copy)
        }
    }
    return .allUniqueCharacaters(copy)
}

func printOut(input: String) {
    if input.isEmpty {
        print("Empty String")
    } else {
        let result = reduce(string: input)
        
        switch result {
        case .remainder(let string):
            printOut(input: string)
        case .allUniqueCharacaters(let string):
            print(string)
        }
    }
}

let input = readLine()!
printOut(input: input)

//// test
//let test1 = ""
//let test2 = "a"
//let test3 = "ab"
//let test4 = "aab"
//let test5 = "abb"
//let test6 = "abbbc"
//let test7 = "aaabccddd"
//let test8 = "aa"
//
//for test in [test1, test2, test3, test4, test5, test6, test7, test8] {
//    printOut(input: test)
//}
