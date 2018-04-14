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
    
    // Intializer method
    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
    
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
print(coordinatePoint.points())

let coordinatePoint2 = Point(x: 2, y: 4)
print(coordinatePoint2.points())



/*
 User Struct
 */
struct User {
    let name: String
    let email: String
}

let user = User(name: "Jim", email: "jim@j.com")

print("Username: \(user.name), email: \(user.email)")



struct Person {
    let firstName: String
    let lastName: String
    
    func fullName() -> String {
        return "\(firstName) \(lastName)"
    }
}

let aPerson = Person(firstName: "Thomas", lastName: "Dimnet")
let myFullName: String = aPerson.fullName()

print(myFullName)


/*
 RGBColor Struct
 */
struct RGBColor {
    let red: Double
    let green: Double
    let blue: Double
    let alpha: Double
    
    let description: String
    
    init(red: Double, green: Double, blue: Double, alpha: Double) {
        self.red = red
        self.green = green
        self.blue = blue
        self.alpha = alpha
        self.description = "red: \(red), green: \(green), blue: \(blue), alpha: \(alpha)"
    }
}

let firstRGBColor = RGBColor(red: 86.0, green: 191.0, blue: 131.0, alpha: 1.0)
print(firstRGBColor.description)


/*
 Enemy Class
 */
class Enemy {
    var life: Int = 2 // Every instance will have a life value set to two
    let position: Point
    
    init(x: Int, y: Int) {
        self.position = Point(x: x, y: y)
    }
    
    func decreaseLife(by factor: Int) -> Void {
        life -= factor
    }
}





















