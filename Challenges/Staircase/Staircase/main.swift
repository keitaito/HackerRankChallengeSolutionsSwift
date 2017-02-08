//
//  main.swift
//  Staircase
//
//  Created by Keita Ito on 1/22/17.
//  Copyright © 2017 Keita Ito. All rights reserved.
//

import Foundation

let n = Int(readLine()!)!

for i in 1...n {
    
    let hashes = String(repeating: "#", count: i)
    let spaces = String(repeating: " ", count: n - i)
    let output = spaces.appending(hashes)
    print(output)
}
