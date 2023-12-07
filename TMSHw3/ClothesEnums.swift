//
//  ClothesEnums.swift
//  TMS_IOS_hw1
//
//  Created by azinavi on 8/12/23.
//

import Foundation
import UIKit

enum Clothes {
    enum SummerClothes {
        case Tshirt
        case Shorts
        case Cap
    }
    
    enum WinterClothes {
        case Trousers
        case Jacket
        case Hat
    }
    
    case summerClothes(seasonOfClothes: SummerClothes)
    case winterClothes(seasonOfClothes: WinterClothes)
    
    func getClothesParameters() -> String {
        switch self {
        case let .summerClothes(seasonOfClothes):
            return "\(seasonOfClothes) - относится к летним одеждам"
        case let .winterClothes(seasonOfClothes):
            return "\(seasonOfClothes) - относится к зимним одеждам"
        }
    }
}
