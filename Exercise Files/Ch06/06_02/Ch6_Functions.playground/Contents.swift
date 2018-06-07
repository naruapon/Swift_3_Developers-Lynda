
/* Ch 6 -> Functions, Closures, and Associated Types */

import UIKit

/* Our First Function */

func CurrentDate() {
    print("It's 3/21/2017")
}

func CurrentDateWithMessage(message: String) {
    print("It's 3/21/2017, \(message)")
}

func CurrentDateWithReturn(message: String) -> String {
    return "It's 3/21/2017, \(message), but this time the method call looks different"
}


CurrentDate()
CurrentDateWithMessage(message: "Harrison")

var messageReturn = CurrentDateWithReturn(message: "Harrison")
print(messageReturn)

