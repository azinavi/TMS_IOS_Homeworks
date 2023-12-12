//
//  HelperMethods.swift
//  TMS_IOS_hw1
//
//  Created by azinavi on 10/12/23.
//

import Foundation
import UIKit

// Метод который вычисляет факториал числа
func factorialNumsInArray(array: Array<Int>) {
    func factorialOfNumber(num: Int) -> Int{
        var output: Int = 1
        if (num > 0) {
            for i in 1...num {
                output *= i
            }
        } else {
          return 1
        }
        return output
    }
    var factorials: Array<Int> = []
    for number in array {
        factorials.append(factorialOfNumber(num: number))
    }
    print("Факториал чисел в массиве: \(factorials)")
    
}

// Метод который перебирает массив(Tuples) и выводит квадрат чисел
func squaresOfNums(array: Array<(key: Int, Value: String)>) {
    var arrayNums: Array<Int> = []
    for i in array {
        arrayNums.append(i.0)
    }
    
    var squaresOfNums: Array<Int> = []
    for j in arrayNums {
        squaresOfNums.append(j * j)
    }
    print(squaresOfNums)
}

//  Метод который перебирает массив(Tuples) и выводит четные числа
func evenNumbers(array: Array<(key: Int, Value: String)>) {
    var arrayNums: Array<Int> = []
    for i in array {
        arrayNums.append(i.0)
    }
    
    var evenNums: Array<Int> = []
    for j in arrayNums {
        if (j % 2 == 0) {
            evenNums.append(j)
        }
    }
    print(evenNums)
}

//  Метод который фильтрует буквы в массиве(Tuples)
func filterCharacter(array: Array<(key: Int, Value: String)>) {
    var arrayCharacters: Array<String> = []
    for i in array {
        arrayCharacters.append(i.1)
    }
    print(arrayCharacters.sorted())
}

//  Метод который умножает числа в массиве на 2 отсекая nil
func multiplyNumsByTwo(arrayNums: Array<Int?>) {
    var muiltipliedNums: Array<Int> = []
    let mulyiplier = 2
    for (i) in arrayNums {
        if i != nil {
            muiltipliedNums.append(i! * mulyiplier)
        }
    }
    print(muiltipliedNums)
}

//  Метод который умножает числа в массиве на 2 с помощью .map
func multiplyNumsByTwoWithMap(arrayNums: Array<Int>) {
    let mulyiplier = 2
    var muiltipliedNums = arrayNums.map({$0 * mulyiplier})
    
    print(muiltipliedNums)
}

//  Метод который обьединяет два массива
func mergearrays(array1: Array<String>, array2: Array<String>) {
    print(array1.sorted() + array2.sorted())
}
