//
//  HomeWork4.swift
//  TMS_IOS_hw1
//
//  Created by azinavi on 10/12/23.
//

import Foundation
import UIKit

class HomeWork4: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        /// 1.Функция вычисления факториала числа - через передачу массива в параметр функции. Массив из 6 чисел -> Факториал числа \(numbers), равен ????
        let inputednumbers = [1, 2, 3, 4, 5, 8, 7, 9]
        
        factorialNumsInArray(array: inputednumbers)
        
        
        ///  2.var x = [(1, "x"), (4, "y"), (6, «a»), (9, «u»), (5, «k»)]
        let x = [(7, "x"), (4, "y"), (6, "a"), (9, "u"), (5, "k")]
        
        
        ///   Массив из кортежей - возвести Int в квадрат
        squaresOfNums(array: x)
        
        
        ///   отфильтровать только четные Int -> [4, 6]
        evenNumbers(array: x)
        
        
        ///   упорядочить по строкам по возрастанию -> [a, k, u, x, y]
        filterCharacter(array: x)
        
        
        ///    [2, nil, 4, nil, 3, 8, nil] - не использую compactMap
        let array = [2, nil, 4, nil, 3, 8, nil]
        multiplyNumsByTwo(arrayNums: array)
        
        
        ///    Создать функцию которая принимает массив чисел и умножает каждое число на 2 используя функцию map.
        let nums = [2, 5, 4, 7, 3, 8, 10]
        
        multiplyNumsByTwoWithMap(arrayNums: nums)
        
        
        ///     написать список книг и отфильтровать книги по жанрам -> horror = []
        let books = [
            "Book001": ["title": "Swift Programming", "author": "John Doe", "genre": "Programming"],
            "Book002": ["title": "One upon a time", "author": "Erich Migel", "genre": "horror"],
            "Book003": ["title": "Judes", "author": "Kasper Di", "genre": "horror"],
            "Book004": ["title": "English", "author": "Mike Wont", "genre": "languages"],
            "Book005": ["title": "Franch", "author": "Ann Deli", "genre": "Geography"],
            "Book006": ["title": "Naruto", "author": "Massasi Kisimoto", "genre": "Manga"],
        ]

        var filterBooks: [String : Any] = [:]
        for i in books {
            if (i.value["genre"] == "horror") {
                filterBooks[i.key] = i.value
            }
        }
        print("Список отфильтрованных книг по жанру - horror: \n \(filterBooks)")
        
        
        /// объеденить 2 массива. первый массив это название групп. второй название песен
        let groupNames = ["Bittles", "Linkin Park", "BTS", "Nirvana", "The kings"]
        let songNames = ["On my way", "Rolling the deep", "My heart will go on", "Sad story", "Unstoppable"]

        mergearrays(array1: groupNames, array2: songNames)
    }
}
