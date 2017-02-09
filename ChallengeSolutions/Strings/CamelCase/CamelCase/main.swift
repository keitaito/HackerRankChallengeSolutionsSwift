//
//  main.swift
//  CamelCase
//
//  Created by Keita Ito on 2/8/17.
//  Copyright © 2017 Keita Ito. All rights reserved.
//

let input = readLine()!

let valueOfA = Int(UnicodeScalar("A")!.value)
let valueOfZ = Int(UnicodeScalar("Z")!.value)
let rangeOfUppercaseLetters = valueOfA...valueOfZ

let valuesOfInput = input.characters.map { Int(UnicodeScalar(String($0))!.value) }
let valuesOfOnlyUppercaseLetters = valuesOfInput.filter { rangeOfUppercaseLetters.contains($0) }

print(valuesOfOnlyUppercaseLetters.count + 1)
