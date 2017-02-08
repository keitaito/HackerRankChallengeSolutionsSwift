//
//  main.swift
//  AngryProfessor
//
//  Created by Keita Ito on 2/5/17.
//  Copyright © 2017 Keita Ito. All rights reserved.
//

let t = Int(readLine()!)!

for _ in 0..<t {
    let input = readLine()!.characters.split(separator: " ").flatMap { Int(String($0)) }
    let n = input[0]
    let k = input[1]
    let arrivalTimesOfStudents = readLine()!.characters.split(separator: " ").flatMap { Int(String($0)) }
    
    let StudentsOnTime = arrivalTimesOfStudents.filter { $0 <= 0 }
    if StudentsOnTime.count < k {
        print("YES")
    } else {
        print("NO")
    }
}

//Sample Input
//2
//4 3
//-1 -3 4 2
//4 2
//0 -1 2 1
