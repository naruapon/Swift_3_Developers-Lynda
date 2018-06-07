
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











