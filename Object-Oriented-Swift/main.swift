//
//  main.swift
//  Object-Oriented-Swift
//
//  Created by Thomas Dimnet on 12/04/2018.
//  Copyright © 2018 Thomas Dimnet. All rights reserved.
//

import Foundation

let x1: Int = 0
let y1: Int = 0

let coordinate1: (x: Int, y: Int) = (0, 0)
print(coordinate1.x) // <- will be equal to 0

// Struct is better
struct Point {
    // Here we are creating two stored properties: x and y
    let x: Int
    let y: Int
}

let p1 = Point(x: 0, y: 0)

