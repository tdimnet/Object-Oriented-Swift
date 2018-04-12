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


/*
 Point Struct
 */
// Struct is better
struct Point {
    // Here we are creating two stored properties: x and y
    let x: Int
    let y: Int
    
    // The two lines below are documentation comments and return a description
    /// Returns the surrounding points in range of
    /// the current one
    func points(inRange range: Int = 1) -> [Point] {
        var results: [Point] = []
        
        let lowerBoundOfXRange: Int = x - range
        let upperBoundOfXRange: Int = x + range
        
        let lowerBoundOfYRange: Int = y - range
        let upperBoundOfYRange: Int = y + range
        
        for xCoordinate in lowerBoundOfXRange...upperBoundOfXRange {
            for yCoordinate in lowerBoundOfYRange...upperBoundOfYRange {
                let coordinatePoint = Point(x: xCoordinate, y: yCoordinate)
                results.append(coordinatePoint)
            }
        }
        
        return results
    }
}

let coordinatePoint = Point(x: 0, y: 2) // Here we create an instance of the struct

print(coordinate1.x)




/*
 User Struct
 */
struct User {
    let name: String
    let email: String
}

let user = User(name: "Jim", email: "jim@j.com")

print("Username: \(user.name), email: \(user.email)")





































