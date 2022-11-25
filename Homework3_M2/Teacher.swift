

import Foundation

class Teacher{
    var firstName: String
    var secondName: String
    var subject: String
    var phoneNumber: String
    
    init(){
        self.firstName = ""
        self.secondName = ""
        self.subject = ""
        self.phoneNumber = ""
    }
    
    init(firstName: String, secondName: String, subject: String, phoneNumber: String) {
        self.firstName = firstName
        self.secondName = secondName
        self.subject = subject
        self.phoneNumber = phoneNumber
    }
}
