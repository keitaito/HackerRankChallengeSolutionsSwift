//
//  main.swift
//  Pangrams
//
//  Created by Keita Ito on 2/9/17.
//  Copyright © 2017 Keita Ito. All rights reserved.
//

import Foundation

extension String {
    func isPanagram() -> Bool {
        let copy = self
        let trimmedSpaces = copy.lowercased().trimmingCharacters(in: .whitespaces)
        
        let valueOfLowercaseA = Int(UnicodeScalar("a")!.value)
        let valueOfLowercaseZ = Int(UnicodeScalar("z")!.value)
        let alphabetValueRange = Array(valueOfLowercaseA...valueOfLowercaseZ)
        
        var flags = [Int: Bool]()
        let values = trimmedSpaces.characters.map { Int(UnicodeScalar(String($0))!.value) }
        values.forEach { (value) in
            if alphabetValueRange.contains(value) {
                if flags[value - valueOfLowercaseA] == nil {
                    flags[value - valueOfLowercaseA] = true
                }
            }
        }
        
        return flags.keys.count == 26
    }
}

// We promptly judged antique ivory buckles for the next prize  
// The quick brown fox jumps over the lazy dog
// We promptly judged antique ivory buckles for the prize

let input = readLine()!

let result = input.isPanagram()

if result {
    print("pangram")
} else {
    print("not pangram")
}
