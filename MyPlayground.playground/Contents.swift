//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
let implicitInteger = 70
let implicitDouble = 70.0
let explicitDouble: Double = 70

let label = "The width is "
let width = 94
let widthLabel = label + String(width)

let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) pieces of fruit."


let optionalInt: Int? = 9

let actualInt: Int = optionalInt!

var myString = "7"
var possibleInt = Int(myString)
print(possibleInt)

myString = "banana"
possibleInt = Int(myString)
print(possibleInt)

var ratingList = ["Poor", "Fine", "Good", "Excellent"]
ratingList[1] = "OK"
ratingList

// Creates an empty array.
let emptyArray = [String]()

var implicitlyUnwrappedOptionalInt: Int!

let number = 23

if number < 10 {
    print("The number is small")
} else if number > 100 {
    print("The number is pretty big")
} else {
    print("The number is between 10 and 100")
}


let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0
for score in individualScores {
    if score > 50 {
        print("goood")
        teamScore += 3
    } else {
        print("work bitch")
        teamScore += 1
    }
}
print(teamScore)


var optionalName: String? = "John Appleseed"
//optionalName = nil
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
}else{greeting = "Yine de hos geldin"}


var optionalHello: String? = "Hella"
if let hello = optionalHello where hello.hasSuffix("o"), let name = optionalName {
    greeting = "\(hello), \(name)"
}else{greeting = "Yine de hos geldin"}



let vegetable = "red pepper"
//vegetable = "celery"
switch vegetable {
case "celery":
    let vegetableComment = "Add some raisins and make ants on a log."
case "cucumber", "watercress":
    let vegetableComment = "That would make a good tea sandwich."
case let x where x.hasSuffix("pepper"):
    let vegetableComment = "Is it a spicy \(x)?"
default:
    let vegetableComment = "Everything tastes good in soup."
}

