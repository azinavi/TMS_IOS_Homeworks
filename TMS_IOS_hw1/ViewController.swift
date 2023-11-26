//
//  ViewController.swift
//  TMS_IOS_hw1
//
//  Created by azinavi on 23/11/23.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //    ДЗ:
        //    • сумма отдельно целых и отдельно дробных частей чисел 2.5, 9.7, 6.9, 8.2
        //     *** проверка, является ли число четным
        //
        
        let numberArray = [2.5, 9.7, 6.9, 8.2]
        var intSumTotal = 0
        var fracSumTotal : Float = 0
        
        for i in numberArray {
            let intArray: Int = Int(i)
            print("Целое числа: \(intArray)")
            intSumTotal += intArray
        }
        print("")
        
        for i in numberArray {
            let intArray: Int = Int(i)
            if (intArray % 2 == 0) {
                print("Это число является четным: \(intArray)")
            }
        }
        print("")
        print("Сумма целых чисел : \(intSumTotal)")
        print("")
        
        for i in numberArray {
            let fracArray: Float = Float(i.truncatingRemainder(dividingBy: 1))
            print("Целые числа: \(fracArray)")
            fracSumTotal += fracArray
        }
        print("")
        print("Сумма дробных чисел : \(fracSumTotal)")
    }
}
