//
//  main.swift
//  HomeworkLession5
//
//  Created by Hiếu đang cáu on 09/10/2023.
//

import Foundation



// Usage

var manager = StudentManager()

// Add new students
manager.addStudent(name: "Nguyễn Trung Hiếu", msv: "001", math: 8.5, phys: 7.8, chem: 9.2)
manager.addStudent(name: "Trương Trọng Hưng", msv: "002", math: 9.3, phys: 8.7, chem: 8.9)

manager.updateScore(msv: "001", math: 7.8, phys: 8.2, chem: 9.0)

manager.displayStudentsByAverageScore()

print()
print()
print()

var storage = productManager()

storage.addProduct(name: "Táo", id: "001", price: 2.0, quantity: 10)
storage.addProduct(name: "Dưa hấu", id: "002", price: 1.5, quantity: 15)
storage.addProduct(name: "Đào", id: "003", price: 4.5, quantity: 8)

storage.updateProduct(name: "Đào Tiên", id: "003", price: 3, quantity: 5)
storage.showProducts()
storage.searchProductByName(name: "Lê")
storage.searchProductByName(name: "Đào Tiên")
