//
//  Student.swift
//  TMS_IOS_hw1
//
//  Created by azinavi on 14/12/23.
//

import Foundation

class Student {
    private var id: Int
    private var name: String
    private var lastName: String
    private var age: Int
    private var subjects: [SubjectStudent]
    private var teacher: Teacher?
    
    init(id: Int, name: String, lastName: String, age: Int, subjects: [SubjectStudent] = [], teacher: Teacher? = nil) {
        self.id = id
        self.name = name
        self.lastName = lastName
        self.age = age
        self.subjects = subjects
        self.teacher = teacher
    }
    
    /// Метод для добавления предмета
    func addSubject(subject: String) {
        self.subjects.append(SubjectStudent(subjectName: subject))
    }
    
    /// Метод для добавления оценки
    func addGrade(subjectName: String, grade: String) {
        self.subjects = self.subjects.map{s in
            if (s.subjectName == subjectName) {
                var copyS  = s
                copyS.updateGrade(grade: grade)
                return copyS
            }
            return s
        }
    }
    
    /// Метод для установки возраста студента
    func changeAge(newAge: Int) {
        age = newAge
    }
    
    /// Метод для установки имени студента
    func changeStudentName(nameStudent: String) {
        name = nameStudent
    }
    
    /// Метод для связывания студента с учителем
    func assignTeacher(teacher: Teacher) {
        self.teacher = teacher
    }
    
    /// Метод для получения информации о студенте и его предметах
    
    func studentInfo() {
        if (self.subjects == nil || self.teacher == nil) {
            print(" Id: \(self.id) \n Имя: \(self.name) \nФамилия: \(self.lastName) \nВозраст: \(self.age)")
        } else {
            let innerSubjects = self.subjects.map{element in
                return "[\(element.subjectName)(\(element.grade != nil ? element.grade! : "Нет оценки"))]"
            }.joined(separator: ", ")
            print(" Id: \(self.id) \n Имя: \(self.name) \nФамилия: \(self.lastName) \nВозраст: \(self.age) \nПредметы: \(innerSubjects) \nПреподаватель:")
            self.teacher!.teacherInfo()
        }
    }
    
    func studentInfoForTeacher() -> String {
            return" [Id: \(self.id) Имя: \(self.name) Фамилия: \(self.lastName) Возраст: \(self.age)]\n"
    }
}
