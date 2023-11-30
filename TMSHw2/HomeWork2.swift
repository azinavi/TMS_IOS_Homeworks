//
//  HomeWork2.swift
//  TMS-IOS-Homeworks
//
//  Created by azinavi on 30/11/23.
//

import Foundation
import UIKit

class HomeWork2: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //      Homework 2
        
        // 1.Универсальные функции сложения, вычитания, умножения и
        // деления (перегрузка функций)
        func calculate(_ num1: Double, operation: String, _ num2: Double) {
            if operation == "+" {
                print(num1 + num2)
            } else if operation == "-" {
                print(num1 - num2)
            } else if operation == "*" {
                print(num1 * num2)
            } else if operation == "/" {
                print(num1 / num2)
            } else {
                print("ОШИБКА!!! Передайте правильный арифметический оператор")
            }
        }
        
        calculate(100, operation: "+", 25)
        
        
        // 2.Вычислить сумму цифр четырехзначного числа
        func additionFromNums(numInsert: Int) {
            let str: String = String(numInsert)
            var sum: Int = 0
            
            for i in str {
                let _: Int = 0
                let numfromStr: String = String (i)
                let num: Int = Int(numfromStr)!
                sum += num
            }
            print(sum)
        }
        additionFromNums(numInsert: 7777)
        
        
        // 3.Функция сравнения строк - "авб" больше "ввш"
        func compareString(str1: String, str2: String) {
            if str1 > str2 {
                print("Это слово больше \(str1), а это слово меньше: \(str2)")
            } else if str1 == str2 {
                print("Эти слова равны: \(str1) и \(str2)")
            }
            else {
                print("Это слово больше \(str2), а это слово меньше: \(str1)")
            }
        }
        
        compareString(str1: "авб", str2: "ввш")
        
        // 4.Циклический вызов функций - поломать приложение
        func errorfunction(_ a: Int, _ b: Int) -> Int {
            return (a + b)
        }
        
        print(errorfunction(1, 2))
        
        
        // 5.Функция возведения в степень с дефолтным параметром
        func exponentiation(num: Int, degreeNum: Int) {
            var sum: Int = 1
            for _ in 1...degreeNum {
                sum *= num
            }
            print("Ваше число: \(num), Cтепень этого числа: \(sum)")
        }
        
        exponentiation(num: 4, degreeNum: 5)
        
        
        // 6.Универсальные функции сложения, вычитания, умножения и деления через замыкание
        //   Замыкание внутри которой при вызове происходит увеличение счётчика на +1
        //   Замыкание в котором ты проверяешь полил ли ты цветок, если нет то напоминание полить цветок
        //   Выполнить любое замыкание внутри замыкания по очереди/ замыкание внутри любой функции
        
        // Функции сложения, вычитания, умножения и деления через замыкание
        let result = {(num1: Double, str: String, num2: Double) in
            if str == "+" {
                print(num1 + num2)
            } else if str == "-" {
                print(num1 - num2)
            } else if str == "*" {
                print(num1 * num2)
            } else if str == "/" {
                print(num1 / num2)
            } else {
                print("ОШИБКА!!! Передайте правильный арифметический оператор" )
            }
        }
        
        result(12, "/", 10)
        
        
        // Замыкание в котором ты проверяешь полил ли ты цветок, если нет то напоминание полить цветок
        let isWateredFlowers = {(booling: Bool) in
            if booling == true {
                print("Вы полили цветы")
            } else {
                print("Вы должны полить цветы!")
            }
        }
        
        isWateredFlowers(true)
        
        
        // Замыкание внутри которой при вызове происходит увеличение счётчика на +1
        var counter = {(num: Int) in num + 1 }
        
        print(counter(55))
    }
}
