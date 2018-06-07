
/* Ch 7 -> Classes vs. Structs */

import UIKit

/* Swift Classes */

class UserClass {
    var firstName: String = ""
    var age: Int = 0
    
    let userConstant: String? = nil
    
    lazy var messages = [String]()
    
    var computedAge: Int {
        get {
            return age
        }
        
        set {
            age += newValue
        }
    }
    
    var computedInteractions: Int {
        return messages.count * 20
    }
    
    var lastName: String = "" {
        willSet(updatedLastName) {
            print("Lastname will be \(updatedLastName)")
        }
        
        didSet {
            if lastName != oldValue {
                print("Lastname has been set to \(lastName)")
            }
        }
    }
    
    init(firstName: String, age: Int) {
        self.firstName = firstName
        self.age = age
    }
}

var user1 = UserClass(firstName: "Harrison", age: 27)
user1.lastName = "Ferrone"

let user2 = UserClass(firstName: "John", age: 32)
user2.firstName = "Joe"



/* Swift Structs */

struct GameLevel {
    let levelID: Int
    let levelDescription: String
    
    var isCurrentLevel: Bool = false
    
    var debugMessage: String {
        return "Level \(levelID): \(levelDescription)"
    }
}

var level1 = GameLevel(levelID: 1, levelDescription: "Level 1", isCurrentLevel: true)
level1.isCurrentLevel = false

let level2 = GameLevel(levelID: 2, levelDescription: "Level 2", isCurrentLevel: false)
//level2.isCurrentLevel = true


/* Type Properties, Inheritance, and Mutations */

class Base {
    static let description: String = "Our Base Class"
    
    static var debug: String {
        return "DEBUG: \(description)"
    }
    
    var meaningOfLife: String {
        return "32"
    }
}

class MegaBase: Base {
    override var meaningOfLife: String {
        return "\(super.meaningOfLife)...wait, that's not right, it's 42"
    }
}

let megaBase = MegaBase()
megaBase.meaningOfLife

struct MutatingStruct {
    var structLength: Int
    
    mutating func iWantToBeAMutant() {
        self.structLength += 5
    }
}

var mutant = MutatingStruct(structLength: 5)
mutant.iWantToBeAMutant()
mutant.structLength

mutant.iWantToBeAMutant()
mutant.structLength










