//
//  main.swift
//  BeautifulBinaryString
//
//  Created by Keita Ito on 2/24/17.
//  Copyright © 2017 Keita Ito. All rights reserved.
//  https://www.hackerrank.com/challenges/beautiful-binary-string

import Foundation

let n = Int(readLine()!)!
let string = readLine()!

func bbs(string: String) -> Int {
    if string.contains("010") {
        let replaced = string.replacingOccurrences(of: "010", with: "")
        let result = (string.characters.count - replaced.characters.count) / 3
        return result
    } else {
        return 0
    }
}

print(bbs(string: string))

// Sample input
// 100
// 1110011110001100010100000011011101100001101010001111101101000010111111001110110000010110010011100010
