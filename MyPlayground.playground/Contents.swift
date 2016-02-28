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



var firstForLoop = 0
for i in 0..<4 {
    firstForLoop += i
}
print(firstForLoop)


var secondForLoop = 1
for a in 1...10{
    secondForLoop += a
}
print(secondForLoop)


func greet(name: String, day: String) -> String {
    return "Hello \(name), today is \(day)."
}


greet("Anna", day: "Tuesday")
greet("Bob", day: "Friday")
greet("Charlie" , day: "a nice day")

let exampleString = "halo"
if exampleString.hasSuffix("lo") {
    print("ends in lo")
}



var array = ["apple", "muz", "df"]
array.insert("cherry", atIndex: 1)
array.append("arrmut")
array

class Shape {
    
    var numberOfSides = 0
    
    init() {
    }
    
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}

var shape = Shape()
var shapeDescription = shape.simpleDescription()
shape.numberOfSides = 7
shapeDescription = shape.simpleDescription()


class NamedShape {
    var numberOfSides = 0
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides and named as \(name)."
    }
}

let namedShape = NamedShape(name: "my named shape")
namedShape.simpleDescription()


class Square: NamedShape {
    var sideLength: Double
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }
    
    func area() ->  Double {
        return sideLength * sideLength
    }
    
    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)."
    }
}
let testSquare = Square(sideLength: 5.2, name: "my test square")
testSquare.area()
testSquare.simpleDescription()


class Circle: NamedShape {
    var radius: Double
    
    init?(radius: Double, name: String) {
        self.radius = radius
        super.init(name: name)
        numberOfSides = 1
        if radius <= 0 {
            return nil
        }
    }
    
    override func simpleDescription() -> String {
        return "A circle with a radius of \(radius)."
    }
}
let successfulCircle = Circle(radius: 4.2, name: "successful circle")
successfulCircle!.simpleDescription()

let failedCircle = Circle(radius: -7, name: "failed circle")
failedCircle?.simpleDescription()


class Triangle: NamedShape {
    init(sideLength: Double, name: String) {
        super.init(name: name)
        numberOfSides = 3
    }
}

let shapesArray = [Triangle(sideLength: 1.5, name: "triangle1"), Triangle(sideLength: 4.2, name: "triangle2"), Square(sideLength: 3.2, name: "square1"), Square(sideLength: 2.7, name: "square2")]
var squares = 0
var triangles = 0
for shape in shapesArray {
    if let squareaaada = shape as? Square {
        squares++
    } else if let triangle = shape as? Triangle {
        triangles++
    }
}
print("\(squares) squares and \(triangles) triangles.")



enum Rank: Int {
    case Ace = 1
    case Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten
    case Jack, Queen, King
    func simpleDescription() -> String {
        switch self {
        case .Ace:
            return "as"
        case .Jack:
            return "jack"
        case .Queen:
            return "queen"
        case .King:
            return "BABAZ"
        default:
            return String("\(self.rawValue) numero" )
        }
    }
}
let ace = Rank.Ace
let aceRawValue = ace.rawValue
ace.simpleDescription()
let bce = Rank.Ten
let bceRawValue = bce.rawValue
bce.simpleDescription()


if let convertedRank = Rank(rawValue: 3) {
    let threeDescription = convertedRank.simpleDescription()
}



enum Suit {
    case Spades, Hearts, Diamonds, Clubs
    func simpleDescription() -> String {
        switch self {
        case .Spades:
            return "spades"
        case .Hearts:
            return "hearts"
        case .Diamonds:
            return "diamonds"
        case .Clubs:
            return "clubs"
        }
    }
}
let hearts = Suit.Hearts
let heartsDescription = hearts.simpleDescription()

struct Card {
    var rank: Rank
    var suit: Suit
    func simpleDescription() -> String {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }
}
let threeOfSpades = Card(rank: .Three, suit: .Spades)
let threeOfSpadesDescription = threeOfSpades.simpleDescription()


protocol ExampleProtocol {
    var simpleDescription: String { get }
    func adjust()
}


class SimpleClass: ExampleProtocol {
    var simpleDescription: String = "A very simple class."
    var anotherProperty: Int = 69105
    func adjust()  {
        simpleDescription += "  Now 100% adjusted."
    }
}

var a = SimpleClass()
a.adjust()
let aDescription = a.simpleDescription
a.adjust()

class SimpleClass2: ExampleProtocol {
    var simpleDescription: String = "Another very simple class."
    func adjust() {
        simpleDescription += "  Adjusted."
    }
}

var protocolArray: [ExampleProtocol] = [SimpleClass(), SimpleClass(), SimpleClass2()]
for instance in protocolArray {
    instance.adjust()
}
protocolArray


