//
//  main.swift
//  TimeConversion
//
//  Created by Keita Ito on 1/22/17.
//  Copyright © 2017 Keita Ito. All rights reserved.
//

import Foundation

let s = readLine()!

let dateFormatter = DateFormatter()
let inputFormat = "hh:mm:ssa"
let outputFormat = "HH:mm:ss"

dateFormatter.dateFormat = inputFormat
dateFormatter.locale = Locale(identifier: "en_US_POSIX")

if let date = dateFormatter.date(from: s) {
    dateFormatter.dateFormat = outputFormat
    let output = dateFormatter.string(from: date)
    print(output)
}
