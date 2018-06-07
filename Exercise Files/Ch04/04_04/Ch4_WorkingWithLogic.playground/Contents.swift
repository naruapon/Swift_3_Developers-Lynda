
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








