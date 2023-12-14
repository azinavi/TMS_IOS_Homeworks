//
//  HomeWork5.swift
//  TMS_IOS_hw1
//
//  Created by azinavi on 14/12/23.
//

import Foundation
import UIKit

class HomeWork5: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        var student1 = Student(id: 1, name: "Alice", lastName: "Mark", age: 18)
        var student2 = Student(id: 2, name: "Tom", lastName: "Soyer", age: 18)
        var student3 = Student(id: 3, name: "Parker", lastName: "Peter", age: 18)
        var student4 = Student(id: 4, name: "Nina", lastName: "Lenz", age: 18)
        
        student1.addSubject(subject: "Math")
        student1.addSubject(subject: "Physic")
        
        student2.addSubject(subject: "Biology")
        student2.addSubject(subject: "Chemistry")
        
        student3.addSubject(subject: "English")
        student3.addSubject(subject: "Spanish")
        
        
        var teacther1 = Teacher(id: 10, firstName: "Billy", lastName: "Gray")
        var teacther2 = Teacher(id: 20, firstName: "Riman", lastName: "Sal")
        var teacther3 = Teacher(id: 30, firstName: "Ribery", lastName: "Welt")
        
        teacther1.addSubjectTaught(subjectName: "Math")
        teacther1.addSubjectTaught(subjectName: "Physic")
    

        teacther2.addSubjectTaught(subjectName: "Biology")
        teacther2.addSubjectTaught(subjectName: "Chemistry")
        
        teacther3.addSubjectTaught(subjectName: "English")
        teacther3.addSubjectTaught(subjectName: "Spanish")
        
        
        student1.assignTeacher(teacher: teacther1)
        student2.assignTeacher(teacher: teacther2)
        student3.assignTeacher(teacher: teacther3)
        
        teacther1.addStudent(addStudent: student1)
        teacther1.addStudent(addStudent: student4)
        teacther2.addStudent(addStudent: student2)
        teacther3.addStudent(addStudent: student3)
        
        teacther1.setGrade(innerStudent: student1, innerSubjectName: "Math", innerGrade: Grade.C)
        teacther2.setGrade(innerStudent: student2, innerSubjectName: "Chemistry", innerGrade: Grade.E)
        teacther3.setGrade(innerStudent: student3, innerSubjectName: "English", innerGrade: Grade.A)
        
        
        student1.studentInfo()
        print()
        student2.studentInfo()
        print()
        student3.studentInfo()
        print()
        teacther1.teacherInfo()
    }
}
