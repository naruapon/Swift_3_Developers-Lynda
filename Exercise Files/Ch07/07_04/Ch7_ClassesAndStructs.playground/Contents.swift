
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












