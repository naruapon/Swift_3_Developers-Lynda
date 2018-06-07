
/* Ch 5 -> Only in Swift: Optionals */

import UIKit

/* Breaking Down Optionals */
var ourFirstOptional: String? = "Optional string"
var secondOptional: String?

var emptyOptional: [String]? = []

ourFirstOptional = nil
secondOptional = "Coming to an optional near you"


/* Unwrapping Optionals */

var wrappedOptional: Int? = 3

if wrappedOptional != nil {
    print(wrappedOptional!)
}

if let unwrappedOptional = wrappedOptional {
    print("Unwrapped optional value == \(unwrappedOptional)")
}


/* Chaining Optionals */

var optional1: Int? = 3
var optional2: Int? = 4

if let optionalA = optional1 {
    if let optionalB = optional2 {
        print("Both optionals are now unwrapped")
    }
}

if let shorthandOptional = optional1, let anotherOptional = optional2 {
    print("Working smarter, not harder")
}





