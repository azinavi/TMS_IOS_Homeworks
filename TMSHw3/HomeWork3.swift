//
//  HomeWork3.swift
//  TMS_IOS_hw1
//
//  Created by azinavi on 5/12/23.
//

import Foundation
import UIKit

class HomeWork3: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        //  1.Написать функцию, которая принимает опциональное число и, если оно есть, умножает его на 2
        func multiply(num: Int?) {
            var sum = 0
            if num != nil {
                sum = num! * 2
                print("Вы передали число: \(String(describing: num)), Производная этого числа: \(sum)")
            } else {
                print("Вы не передали число")
            }
        }
        
        multiply(num: 10)
        
        
        
        //  2.Использовать force unwrap для извлечения значения из опциональной переменной. Затем добавьте условие, чтобы обработать случай, если значение равно nil.
        func unwrapNilHandling(str: String?) {
            if let unwrapValue = str {
                print("Значение опционала: \(unwrapValue)")
            } else {
                print("Опционал не содержит значения")
            }
        }
        
        unwrapNilHandling(str: "12")
        
        
        
        //  3.Написать функцию, использующую оператор guard для проверки опционального значения. Если значение равно nil, выведите сообщение об ошибке, в противном случае выполните операцию с извлеченным значением. 3-4 примера
        func guardNilHandling(value: Int?) {
            guard let strNotValue = value else {
                print("ОШИБКА!!! Опционал не содержит значения")
                return
            }
            print("Значение опционала: \(value)")
        }
        
        guardNilHandling(value: nil)
        guardNilHandling(value: 12)
        guardNilHandling(value: 255)
        
        
        
        //  4.Напишите функцию, которая принимает строку и пытается преобразовать ее в целое число. Если преобразование возможно, верните число, если нет - nil
        func transformationStrToInt(value: String?) {
            guard value != nil else {
                print("Ваше значение равна nil")
                return
            }
            var strToInt = Int(value.self!)
            print("Вы передали числовое значение: \(strToInt)")
        }
        
        transformationStrToInt(value: "123")
        transformationStrToInt(value: nil)
        
        
        
        //  5.Создать перечисление Book. Напишите функцию, которая принимает Book и выводит описание книги
        //В доступности три книги под номерами 1, 2, 3 Выберите нужный вам номер книги!
        func decriptionBooks(num: Int?) {
            if num == 1 {
                let book1 = Books.HarryPotter
                print("Выбранная книга: \(book1) \nОписание книги: \(Books.HarryPotter.description)")
            } else if num == 2{
                let book2 = Books.PoorAndReachDad
                print("Выбранная книга: \(book2) \nОписание книги: \(Books.PoorAndReachDad.description)")
            } else if num == 3{
                let book3 = Books.RomeoAndJulietta
                print("Выбранная книга: \(book3) \nОписание книги: \(Books.RomeoAndJulietta.description)")
            } else {
                print("Извините под таким номером книга отсутствует, выберите значени от 1 до 3!")
            }
        }
        
        decriptionBooks(num: 1)
        decriptionBooks(num: 2)
        decriptionBooks(num: 3)
        decriptionBooks(num: nil)
        
        
        
        //  6.Создайте перечисление Clothes. Напишите функцию, которая принимает Clothes в качестве параметра и выводит сообщение о выбранной одежде.
        let summerClothes = Clothes.SummerClothes.Shorts
        let winterClothes = Clothes.WinterClothes.Jacket
        let showSummerClothes = Clothes.summerClothes(seasonOfClothes: summerClothes)
        let showWinterClothes = Clothes.winterClothes(seasonOfClothes: winterClothes)
        print(showSummerClothes.getClothesParameters())
        print(showWinterClothes.getClothesParameters())
        
        
        
    }
}
