

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
    
    private func getStudent2(firstName: String, secondName: String) -> Student? {
        var model2: Student? = nil
        for i in studentArray{
            if i.firstName == firstName && i.secondName == secondName {
                model2 = i
                break
            }
        }
        return model2
    }
    
    private func getTeacher2(firstName: String, secondName: String) -> Teacher? {
        var model2: Teacher? = nil
        for i in teacherArray{
            if i.firstName == firstName && i.secondName == secondName {
                model2 = i
                break
            }
        }
        return model2
    }
    
    func addStudent(model: Student){
        studentArray.append(model)
    }
    
    func addTeacher(model: Teacher){
        teacherArray.append(model)
    }
    
    func addStudentMain(firstName: String, secondName: String, age: Int, grade: String, averageScore: String){
        let modelStudent = getModelStudent(firstName: firstName, secondName: secondName, age: age, grade: grade, averageScore: averageScore)
        if modelStudent.firstName == firstName && modelStudent.secondName == secondName && modelStudent.age == age && modelStudent.grade == grade && modelStudent.averageScore == averageScore {
            print("Данные введенного студента уже существуют")
        }else{
            addStudent(model: Student(firstName: firstName, secondName: secondName, age: age, grade: grade, averageScore: averageScore))
            print("Данные студента успешно добавлены")
        }
    }
    
    func addTeacherMain(firstName: String, secondName: String, subject: String, phoneNumber: String){
        let modelTeacher = getModelTeacher(firstName: firstName, secondName: secondName, subject: subject, phoneNumber: phoneNumber)
        if modelTeacher.firstName == firstName && modelTeacher.secondName == secondName && modelTeacher.subject == subject && modelTeacher.phoneNumber == phoneNumber {
            print("Данные введенного преподавателя уже существуют")
        }else{
            addTeacher(model: Teacher(firstName: firstName, secondName: secondName, subject: subject, phoneNumber: phoneNumber))
            print("Данные преподавателя успешно добавлены")
        }
    }
    
    func deleteStudent(firstName: String, secondName: String){
        let delModel = getStudent2(firstName: firstName, secondName: secondName)
        if delModel?.firstName == firstName && delModel?.secondName == secondName {
            for (id, item) in studentArray.enumerated(){
                if item.firstName == firstName && item.secondName == secondName {
                    studentArray.remove(at: id)
                    print("Данные студента удалены")
                    break
                }
            }
        }else{
                print("Студент не найден")
            }
    }
    
    func deleteTeacher(firstName: String, secondName: String){
        let model2 = getTeacher2(firstName: firstName, secondName: secondName)
        if model2?.firstName == firstName && model2?.secondName == secondName {
            for (id, item) in teacherArray.enumerated(){
                if item.firstName == firstName && item.secondName == secondName {
                    teacherArray.remove(at: id)
                    print("Данные преподавателя удалены")
                    break
                }
            }
        }else{
                print("Преподаватель не найден")
            }
    }
    
    func findStudent(firstName: String, secondName: String) {
        let model2 = getStudent2(firstName: firstName, secondName: secondName)
        if model2 != nil{
            print("Имя,Фамилия - \(firstName) \(secondName), Возраст - \(model2!.age), Класс - \(model2!.grade), Средний балл - \(model2!.averageScore)")
        }else{
            print("Студент не найден")
        }
    }
    
    func findTeacher(firstName: String, secondName: String) {
        let model2 = getTeacher2(firstName: firstName, secondName: secondName)
        if model2 != nil{
            print("Имя,Фамилия - \(firstName) \(secondName), Предмет - \(model2!.subject), Номер телефона - \(model2!.phoneNumber)")
        }else{
            print("Преподаватель не найден")
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
