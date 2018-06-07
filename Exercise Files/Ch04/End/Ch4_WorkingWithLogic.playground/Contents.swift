
/* Ch 4 -> Working with Logic Flows */

import UIKit

/* Traditional IF Statements */

var myAge = 27
var drivingAge = 16

if myAge >= drivingAge {
    print("Let's go get you a license")
} else {
    print("Sorry, you'll have to wait a bit")
}

var firstCondition: Bool = false
var secondCondition = false

if ((firstCondition == true) && (secondCondition == true)) {
    print("Continue with the operation")
} else if firstCondition {
    print("Only our first condition was met.")
} else {
    print("Neither conditions were met")
}



/* Using FOR-IN loops */

for i in 1...5 {
    print(i)
}

var itemArray = ["Item 1", "Item 2", "Item 3"]
for item in itemArray {
    print(item)
}

var levelDict = ["Level 1": 1, "Level 2": 2, "Level 3": 3]
for (levelName, levelNumber) in levelDict {
    print("\(levelName) => \(levelNumber)")
}

var firstName = "Harrison"
for char in firstName.characters {
    if char == "i" {
        continue
    } else if char == "s" {
        break
    }
    
    print(firstName)
}



/* The WHILE Loop */

var alive = true
var playerLives = 3

while alive {
    playerLives -= 1
    
    if playerLives <= 0 {
        alive = false
    }
    
    print("It's alive!")
}



/* The SWITCH Statement */

var catLives = 9

switch catLives {
    case 1:
        print("I need to be careful here")
    case 2...5:
        print("I can take some risks")
    case 6..<9:
        print("I'm pretty comfortable here")
    case 9:
        print("Fully loaded")
    default:
        print("Too many risks")
}

var compoundCaseCheck = "h"

switch compoundCaseCheck {
    case "h", "H":
        print("Hit!")
    default:
        print("No match found")
}

var tupleCheck = ("Hello World", 23)

switch tupleCheck {
    case ("Hello World", 20):
        print("Not it")
    case ("Hello World", 23):
        print("Got one!")
    default:
        print("Nothing here")
}

enum PlayerState {
    case Alive
    case KO(restartLevel: Int)
    
    var message: String {
        switch self {
        case .Alive:
            return "Phew, I made it"
        case .KO(let restartLevel):
            return "Back to \(restartLevel)"
        }
    }
}

var playerState = PlayerState.KO(restartLevel: 1)
playerState.message







