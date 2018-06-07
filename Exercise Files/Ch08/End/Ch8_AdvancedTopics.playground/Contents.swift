
/* Ch 8 -> Advanced Topics */

import UIKit

/* Extensions & Protocols */

extension String {
    func AddDebug() -> String {
        return "DEBUG LOG: \(self)"
    }
}

let regularString = "Connection Error"
regularString.AddDebug()

protocol PUser {
    var firstName: String {get}
    var lastName: String {get set}
    
    func CreateFullName() -> String
}

extension PUser {
    func CreateFullName() -> String {
        return "\(self.firstName) \(self.lastName)"
    }
}

struct User: PUser {
    var firstName: String
    var lastName: String
}

var newUser = User(firstName: "Harrison", lastName: "Ferrone")
newUser.CreateFullName()



/* Fun with Generics */

func GenericAppend<T>(item: T, itemArray: [T]) -> [T] {
    var returnArray = itemArray
    returnArray.append(item)
    
    return returnArray
}

var genericTest = GenericAppend(item: 4, itemArray: [1, 2, 3])
var anotherGenericTest = GenericAppend(item: "World!", itemArray: ["Hello"])



/* Functional Swift */

var scores = [123, 43, 57, 2001]

var mappedScores = scores.map { (score) -> Int in
    let newScore = score + 1
    return newScore
}

var shorthandMap = scores.map { $0 + 1 }
print(shorthandMap)

var filteredScores = scores.filter { (score) -> Bool in
    return score != 43
}

var shorthandFilter = scores.filter({ $0 != 43 })
print(shorthandFilter)

var reducedScores = scores.reduce(0) { (score1, score2) -> Int in
    score1 + score2
}

var shorthandReduce = scores.reduce(0, { $0 + $1 })
print(shorthandReduce)



