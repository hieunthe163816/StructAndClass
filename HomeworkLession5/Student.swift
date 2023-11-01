//
//  Student.swift
//  HomeworkLession5
//
//  Created by Hiếu đang cáu on 09/10/2023.
//

import Foundation

struct Student {
    var name: String
    let msv: String
    var math: Double
    var phys: Double
    var chem: Double
    
    var averageScore: Double {
        return (math + phys + chem) / 3
    }
}

struct StudentManager {
    var students: [Student] = []
    
    mutating func addStudent(name: String, msv: String, math: Double, phys: Double, chem: Double) {
        let student = Student(name: name, msv: msv, math: math, phys: phys, chem: chem)
        students.append(student)
    }
    
    mutating func updateScore(msv: String, math: Double, phys: Double, chem: Double) {
        for index in students.indices
        {
            if students[index].msv == msv {
                students[index].math = math
                students[index].phys = phys
                students[index].chem = chem
            }
        }
    }
    
    func displayStudentsByAverageScore() {
        let sortedStudents = students
        for i in sortedStudents.indices {
            let studentI = sortedStudents[i]
            var k = i + 1
            
            while k < sortedStudents.count {
                let studentJ = sortedStudents[k]
                
                // Perform some processing or condition check using studentI and studentJ
                
                k += 1
            }
        }
        print("Before sort:")
        for student in students {
            print("Name: \(student.name)")
            print("MSV: \(student.msv)")
            print("Average Score: \(student.averageScore)")
            print("---------")
        }
        print()
        print()
        print("After sorted:")
        for student in sortedStudents {
            print("Name: \(student.name)")
            print("MSV: \(student.msv)")
            print("Average Score: \(student.averageScore)")
            print("---------")
        }
    }
}
