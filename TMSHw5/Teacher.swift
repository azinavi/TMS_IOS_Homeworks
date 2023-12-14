//
//  Teacher.swift
//  TMS_IOS_hw1
//
//  Created by azinavi on 14/12/23.
//

import Foundation

class Teacher {
    private var id: Int
    private var firstName: String
    private var lastName: String
    private var subjectsTaught: [SubjectTeacher]
    private var studentsTaught: [Student]
    
    init(id: Int, firstName: String, lastName: String, subjectsTaught: [SubjectTeacher] = [], studentsTaught: [Student] = []) {
        self.id = id
        self.firstName = firstName
        self.lastName = lastName
        self.subjectsTaught = subjectsTaught
        self.studentsTaught = studentsTaught
    }
    
    /// Метод для добавления предмета, который ведет учитель
    func addSubjectTaught(subjectName: String) {
        self.subjectsTaught.append(SubjectTeacher(subjectName: subjectName))
    }
    
    /// Метод для установки оценки ученику по определенному предмету
    func setGrade(innerStudent: Student, innerSubjectName: String, innerGrade: String) {
        innerStudent.addGrade(subjectName: innerSubjectName, grade: innerGrade)
    }
    
    func addStudent(addStudent: Student) {
        self.studentsTaught.append(addStudent)
    }
    
    /// Метод для получения информации об учителе и предметах, которые он ведет
    func teacherInfo() {
        if (self.subjectsTaught == nil || self.studentsTaught == nil) {
            print(" Id: \(self.id) \n  Имя: \(self.firstName) \nФамилия: \(self.lastName)")
        } else {
            let innerSubjects = self.subjectsTaught.map {element in
                return "\(element.subjectName)"
            }.joined(separator: ", ")
            let innerStudents = self.studentsTaught.map {element in
                return "\(element.self.studentInfoForTeacher())"
            }.joined()
            
            print(" Id: \(self.id) \n Имя: \(self.firstName) \n Фамилия: \(self.lastName) \n Предметы: \(innerSubjects) \n Студенты: \n\(innerStudents)")
        }
    }
}
