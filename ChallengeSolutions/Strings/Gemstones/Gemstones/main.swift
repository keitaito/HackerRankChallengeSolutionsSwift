//
//  main.swift
//  Gemstones
//
//  Created by Keita Ito on 2/12/17.
//  Copyright © 2017 Keita Ito. All rights reserved.
//

import Foundation

let n = Int(readLine()!)!
var counts = [Int](repeatElement(0, count: 26))
let valueOfLowercaseA = Int(UnicodeScalar("a")!.value)

for _ in 0..<n {
    let stringOfElements = readLine()!
    let mappedToIntArray = stringOfElements.unicodeScalars.flatMap { Int($0.value) }
    var filteredDuplicates = [Int]()
    for value in mappedToIntArray {
        if !filteredDuplicates.contains(value) {
            filteredDuplicates.append(value)
        }
    }
    
    filteredDuplicates.forEach { element in
        counts[element - valueOfLowercaseA] += 1
    }
}

var count = 0
counts.forEach {
    if $0 == n {
        count += 1
    }
}

print(count)

// Sample Input
//3
//abcdde
//baccd
//eeabg
