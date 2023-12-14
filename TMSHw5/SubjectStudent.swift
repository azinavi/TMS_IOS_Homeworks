//
//  Subject.swift
//  TMS_IOS_hw1
//
//  Created by azinavi on 14/12/23.
//

import Foundation

struct SubjectStudent {
    var subjectName: String
    var grade: String?
    
    init(subjectName: String, grade: String? = nil) {
        self.subjectName = subjectName
        self.grade = grade
    }
    
    mutating func updateGrade(grade: String) {
        self.grade = grade
    }
}
