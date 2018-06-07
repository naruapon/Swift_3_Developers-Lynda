
/* Ch 2 -> Back to Basics: Variables & Operators */

import UIKit

/* Operators in Swift */

var assignmentOperator = "="
var mathOperators = "+, -, *, /"
var remainderOPerator = "%"

var compoundOperators = "+=, -=, *="
var comparisonOperators = "==, !=, >, <, >=, <="

var logic = "!, &&, ||"

var closedRanged = "value1...value2"
var halfOpenRange = "value1..<value2"


/* Declaring Variables & Types */

var canChange = "This variable can change"
let cannotChange = "This variable cannot change, it's a constant"

canChange = "Here's proof"
//cannotChange = "This should give an error"

// Explicitly typed variable
var playerHealth_Explicit: Int = 100

// Inferred type variable
var playerHealth_Inferred = 100

// Multiple explicitly typed variables
var playerDamage: Int, playerAttack: Int, playerGold: Double

// Multiple type inferred variables
var enemyDamage, enemyAttack, enemyMana: Int



/* Working with Numbers */

var anInteger: Int = 1
var aDouble: Double = 2.0

var doubleFromInt = Double(anInteger)
var floatFromDouble = Float(aDouble)

var result = 1 + 2.34

var result2 = Double(anInteger) + aDouble



/* Using Strings */

var imEmpty = ""
var imAlsoEmpty = String()

var againEmpty: String

var firstName: String = "Harrison"
var lastName = "Ferrone"

var fullName = firstName + " " + lastName
fullName += " is using Swift 3"

var message = "I'm learning Swift 3!"
var interpolatedMessageString = "Look Ma, \(message)"



/* Booleans & Bang Operators */

var imagesHaveFinishedLoading = false
imagesHaveFinishedLoading = !imagesHaveFinishedLoading






