//
//  main.swift
//  DesignerPDFViewer
//
//  Created by Keita Ito on 1/26/17.
//  Copyright © 2017 Keita Ito. All rights reserved.
//

let heights = readLine()!.characters.split(separator: " ").map { Int(String($0))! }
let word = readLine()!

let scalarValuesOfWord = word.unicodeScalars.map { Int($0.value) }
let scalarValueOfA = Int(UnicodeScalar("a")!.value)
let adjustedScalarValuesOfWord = scalarValuesOfWord.map { $0 - scalarValueOfA }
let heightsOfWord = adjustedScalarValuesOfWord.map { heights[$0] }
let heightOfMaxElement = heightsOfWord.max()!
let result = heightOfMaxElement * word.characters.count

print(result)
