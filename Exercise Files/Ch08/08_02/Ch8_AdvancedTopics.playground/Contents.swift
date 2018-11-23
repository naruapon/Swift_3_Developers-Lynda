
/* Ch 8 -> Advanced Topics */

import UIKit

/* Extensions & Protocols */
// เพิ่มเติม func ของ String (Structure)

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


// เพิ่มเติมความสามารถกับ Protocol
extension PUser {
    func CreateFullName() -> String {
        return "\(self.firstName) \(self.lastName)"
    }
}

//การใช้งาน Protocol กับ Structure
struct User: PUser {
    var firstName: String
    var lastName: String
}

var newUser = User(firstName: "Harrison", lastName: "Ferrone")
newUser.CreateFullName()







