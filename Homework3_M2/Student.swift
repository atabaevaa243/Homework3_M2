
import Foundation

//#1 - Имя Фамилия - Возраст - Класс - Средний балл

class Student{
    var firstName: String
    var secondName: String
    var age: Int
    var grade: String
    var averageScore: String
    
    init(){
        self.firstName = ""
        self.secondName = ""
        self.age = 0
        self.grade = ""
        self.averageScore = ""
    }
    
    init(firstName: String, secondName: String, age: Int, grade: String, averageScore: String) {
        self.firstName = firstName
        self.secondName = secondName
        self.age = age
        self.grade = grade
        self.averageScore = averageScore
    }
}
