
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



/* Complex Functions */

func CurrentDateWithOptional(message: String?) {
    if let text = message {
        print("It's 3/21/2017, \(text)")
    } else {
        print("It's 3/21/2017, but no valid message")
    }
}

func AllTogetherNow(name: String, codingHours: Int, isTired: Bool? = true) -> String {
    let output = "\(name) has been coding for \(codingHours). Tired yet? \(isTired!)"
    return output
}

CurrentDateWithOptional(message: "Harrison")

let output = AllTogetherNow(name: "Harrison", codingHours: 8, isTired: false)
print(output)

func HelloWorld(name: String) -> String {
    return "Hello \(name)"
}

func FunctionAsParameter(helloWorldFunc: (String) -> String, name: String) {
    print(helloWorldFunc(name))
}

FunctionAsParameter(helloWorldFunc: HelloWorld, name: "Harrison")


/* Understanding Closures */

var emptyClosure: () -> Void = {}

var basicClosure = { (stringParameter: String) -> Void in
    print(stringParameter)
}

var shorhandClosure: (String) -> String = { message in
    return "\(message) Swift!"
}

basicClosure("Hello Swift!")
shorhandClosure("Hello ")

func ClosureAsParameter(closure: (String) -> Void) {
    closure("Closure Parameter")
}

ClosureAsParameter { (message) in
    print(message)
}


/* Introducing Type Aliasing */

typealias SimpleAlias = (Int, String, Bool)
typealias ClosureAlias = (String) -> Void

func ReturnSimpleAlias() -> SimpleAlias {
    return (3, "three", false)
}

func AliasAsParameter(closureAlias: ClosureAlias) {
    closureAlias("We did it!")
}

var aliasOutput = ReturnSimpleAlias()
print(aliasOutput)

AliasAsParameter { (message) in
    print(message)
}










