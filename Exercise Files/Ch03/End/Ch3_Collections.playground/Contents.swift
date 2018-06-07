
/* Ch 3 -> Collections, Tuples, and Enumerations */

import UIKit

/* Array Syntax */

var arrayOfFloats = [Float]()
var anotherFloatArray: [Float] = []

var placeholderArray: [Float]
var typeInferredArray = ["Item 1", "Item 2"]

// Methods and Dot Notation
typeInferredArray.count
typeInferredArray.isEmpty

// Adding, Inserting, and Removing
typeInferredArray[0] = "New Item"
typeInferredArray.append("Item 3")
typeInferredArray.insert("Item 4", at: 3)

typeInferredArray

// Value at Index
var itemAtIndex = typeInferredArray[0]
var itemInRange = typeInferredArray[0...2]

// Shorthand
var addingToArray: [Int] = [1, 2, 3, 4]
addingToArray += [5]



/* Exploring Dictionaries */

var emptyDict = [Int: String]()
var emptyAgain: [Int: String] = [:]

var placeholderDict: [Int: String]

var typeInferredDict = ["Key 1": "Value 1", "Key 2": "Value 2"]

// Methods and Dot Notation
var dictValues = [String](typeInferredDict.values)

// Adding, Inserting, and Removing
typeInferredDict["Key 3"] = "Value 3"
typeInferredDict.updateValue("Updated Value", forKey: "Key 3")
typeInferredDict.removeValue(forKey: "Key 3")

typeInferredDict



/* Tuples */

var basicTuple = (2, 3)
var descriptiveTuple = (playerLives: 2, playerName: "Harrison")

var firstValue = descriptiveTuple.0
var (first, second) = descriptiveTuple
first
second

var ourTuple: (playersLives: Int, playerName: String)
ourTuple.playerName = "John"
ourTuple.playersLives = 3



/* The Power of Swift Enums */

enum PlayerState_Basic {
    case Alive, KO, Unknown
}

var basicState = PlayerState_Basic.Alive
basicState.hashValue

// Raw Values
enum PlayerState_RawValues: Int {
    case Alive = 1, KO, Unknown
}

var rawValueEnum = PlayerState_RawValues.KO
rawValueEnum.hashValue
rawValueEnum.rawValue

var rawInitializedState = PlayerState_RawValues(rawValue: 3)

// Associated Values
enum PlayerState_AssociatedValues {
    case Alive
    case KO(restartLevel: Int)
    case Unknown(debug: String)
}

var associatedStateEnum = PlayerState_AssociatedValues.KO(restartLevel: 1)




