
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







