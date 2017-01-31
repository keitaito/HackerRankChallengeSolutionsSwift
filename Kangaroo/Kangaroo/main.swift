//
//  main.swift
//  Kangaroo
//
//  Created by Keita Ito on 1/29/17.
//  Copyright © 2017 Keita Ito. All rights reserved.
//

let inputs = readLine()!.characters.split(separator: " ").map { Int(String($0))! }
var x1 = inputs[0]
var v1 = inputs[1]
let x2 = inputs[2]
let v2 = inputs[3]

if v2 > v1 || v2 == v1 {
    print("NO")
} else {
    if (x1 - x2) % (v2 - v1) == 0 {
        print("YES")
    } else {
        print("NO")
    }
}
