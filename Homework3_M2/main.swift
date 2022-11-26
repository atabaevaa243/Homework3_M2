

import Foundation

//#1. Создать класс DataBase.
//
//Внутри создать  2 массива типа Students и Teachers(создать эти 2 класса(модели), потом использовать)
//
//Для каждого из классов, касающихся базы данных должны быть методы для добавления, удаления и считывания учеников/учителей.
//Другими способами ничего изменяться не должно
//Так же добавить методы, позволяющие увидеть полный список(String) учеников и учителей.
//Пример:
//#1 - Имя Фамилия - Возраст - Класс - Средний балл

var database = DataBase()

database.addStudentMain(firstName: "Азиза", secondName: "Атабаева", age: 15, grade: "9", averageScore: "4.9")
//Данные студента успешно добавлены
database.addStudentMain(firstName: "Камила", secondName: "Муртазаева", age: 13, grade: "7", averageScore: "4.8")
//Данные студента успешно добавлены
database.addStudentMain(firstName: "Рустам", secondName: "Назаров", age: 18, grade: "11", averageScore: "5.0")
//Данные студента успешно добавлены
database.addStudentMain(firstName: "Кундузай", secondName: "Абдувалиева", age: 12, grade: "6", averageScore: "3.8")
//Данные студента успешно добавлены

database.deleteStudent(firstName: "Рустам", secondName: "Назаров")
//Данные студента удалены

database.addTeacherMain(firstName: "Гульнара", secondName: "Иманбекова", subject: "математика", phoneNumber: "0700987330")
//Данные преподавателя успешно добавлены
database.addTeacherMain(firstName: "Адиль", secondName: "Мелисов", subject: "информатика", phoneNumber: "0558767678")
//Данные преподавателя успешно добавлены
database.addTeacherMain(firstName: "Индира", secondName: "Русланова", subject: "компьютерная графика", phoneNumber: "0508022044")
//Данные преподавателя успешно добавлены

database.deleteTeacher(firstName: "Гульнара", secondName: "Иманбекова")
//Данные преподавателя удалены
database.showAllStudents()
//#1 Имя,Фамилия - Азиза Атабаева, Возраст - 15, Класс - 9, Средний балл - 4.9
//#2 Имя,Фамилия - Камила Муртазаева, Возраст - 13, Класс - 7, Средний балл - 4.8
//#3 Имя,Фамилия - Кундузай Абдувалиева, Возраст - 12, Класс - 6, Средний балл - 3.8

database.showAllTeachers()
//#1 Имя,Фамилия - Адиль Мелисов, Предмет - информатика, Номер телефона - 0558767678
//#2 Имя,Фамилия - Индира Русланова, Предмет - компьютерная графика, Номер телефона - 0508022044
