

import Foundation

class DataBase{
    private var studentArray = [Student]()
    private var teacherArray = [Teacher]()
    
    private func getModelStudent(firstName: String, secondName: String, age: Int, grade: String, averageScore: String) -> Student {
        var modelStudent = Student()
        for i in studentArray{
            if i.firstName == firstName && i.secondName == secondName && i.age == age && i.grade == grade && i.averageScore == averageScore {
                modelStudent = i
                break
            }
        }
        return modelStudent
    }
    
    private func getModelTeacher(firstName: String, secondName: String, subject: String, phoneNumber: String) -> Teacher {
        var modelTeacher = Teacher()
        for i in teacherArray{
            if i.firstName == firstName && i.secondName == secondName && i.subject == subject && i.phoneNumber == phoneNumber {
                modelTeacher = i
                break
            }
        }
        return modelTeacher
    }
    
    func addStudent(model: Student){
        studentArray.append(model)
    }
    
    func addTeacher(model: Teacher){
        teacherArray.append(model)
    }
    
    func addStudentMain(firstName: String, secondName: String, age: Int, grade: String, averageScore: String){
        let modelStudentTwo = getModelStudent(firstName: firstName, secondName: secondName, age: age, grade: grade, averageScore: averageScore)
        if modelStudentTwo.firstName == firstName && modelStudentTwo.secondName == secondName && modelStudentTwo.age == age && modelStudentTwo.grade == grade && modelStudentTwo.averageScore == averageScore {
            print("Данные введенного студента уже существуют")
        }else{
            addStudent(model: Student(firstName: firstName, secondName: secondName, age: age, grade: grade, averageScore: averageScore))
            print("Данные студента успешно добавлены")
        }
    }
    
    func addTeacherMain(firstName: String, secondName: String, subject: String, phoneNumber: String){
        let modelTeacherTwo = getModelTeacher(firstName: firstName, secondName: secondName, subject: subject, phoneNumber: phoneNumber)
        if modelTeacherTwo.firstName == firstName && modelTeacherTwo.secondName == secondName && modelTeacherTwo.subject == subject && modelTeacherTwo.phoneNumber == phoneNumber {
            print("Данные введенного преподавателя уже существуют")
        }else{
            addTeacher(model: Teacher(firstName: firstName, secondName: secondName, subject: subject, phoneNumber: phoneNumber))
            print("Данные преподавателя успешно добавлены")
        }
    }
    
    func deleteStudent(firstName: String, secondName: String){
        for (id, item) in studentArray.enumerated(){
            if item.firstName == firstName && item.secondName == secondName {
                studentArray.remove(at: id)
                print("Данные студента удалены")
                break
            }else{
                print("Студент не найден")
            }
        }
    }
    
    func deleteTeacher(firstName: String, secondName: String){
        for (id, item) in teacherArray.enumerated(){
            if item.firstName == firstName && item.secondName == secondName {
                teacherArray.remove(at: id)
                print("Данные преподавателя удалены")
                break
            }else{
                print("Преподаватель не найден")
            }
        }
    }
    
    func showAllStudents() {
        var empty = ""
        var count = 0
        for item in studentArray{
            count += 1
            empty = ("#\(count) Имя,Фамилия - \(item.firstName) \(item.secondName), Возраст - \(item.age), Класс - \(item.grade), Средний балл - \(item.averageScore)")
            print(empty)
        }
    }
    
    func showAllTeachers() {
        var empty = ""
        var count = 0
        for item in teacherArray{
            count += 1
            empty = ("#\(count) Имя,Фамилия - \(item.firstName) \(item.secondName), Предмет - \(item.subject), Номер телефона - \(item.phoneNumber)")
            print(empty)
        }
    }
}
