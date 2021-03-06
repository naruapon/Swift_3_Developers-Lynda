
/* Ch 7 -> Classes vs. Structs */

import UIKit

/* Swift Classes */

class UserClass {
    var firstName: String = ""
    var age: Int = 0
    
    let userConstant: String? = nil
    
    
    // lazy 
    lazy var messages = [String]()
    
    
    // get, set
    var computedAge: Int {
        get {
            return age
        }
        
        set {
            age += newValue
        }
    }
    
    // var has implement
    var computedInteractions: Int {
        return messages.count * 20
    }
    
    
    // willSet, didSet
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
    
    // constructor
    init(firstName: String, age: Int) {
        self.firstName = firstName
        self.age = age
    }
}

var user1 = UserClass(firstName: "Harrison", age: 27)
user1.lastName = "Ferrone"

let user2 = UserClass(firstName: "John", age: 32)
user2.firstName = "Joe"

