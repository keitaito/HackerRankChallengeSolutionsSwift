//
//  main.swift
//  BonAppetit
//
//  Created by Keita Ito on 2/3/17.
//  Copyright © 2017 Keita Ito. All rights reserved.
//

let inputLine1 = readLine()!.characters.split(separator: " ").flatMap { Int(String($0)) }
let numberOfItem = inputLine1[0]
let indexOfAnnaDidNotEat = inputLine1[1]

let itemPrices = readLine()!.characters.split(separator: " ").flatMap { Int(String($0)) }
let chargedPrice = Int(readLine()!)!

let priceOfItemAnnaDidNotEat = itemPrices[indexOfAnnaDidNotEat]
let averagePriceOfAllItems = itemPrices.reduce(0, +) / 2
let averageWithOutPriceOfItemAnnaDidNotEat = (itemPrices.reduce(0, +) - priceOfItemAnnaDidNotEat) / 2

if chargedPrice != averageWithOutPriceOfItemAnnaDidNotEat {
    print(chargedPrice - averageWithOutPriceOfItemAnnaDidNotEat)
} else {
    print("Bon Appetit")
}
