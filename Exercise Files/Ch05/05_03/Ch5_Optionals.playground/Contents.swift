
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









