//
//  Q1.swift
//  211110
//
//  Created by Jihee hwang on 2021/11/16.
//

import Foundation

//struct InterestRate {
//    var money = 1000000
//
//    func getInterestRate(byDay: Int) -> Double {
//        switch byDay {
//        case 0...90:
//            return 0.005
//        case 91...180:
//            return 0.01
//        case 181...364:
//            return 0.02
//        default:
//            return 0.056
//        }
//    }
//
//    func calculateAmount(day:Int, amount:Int) -> Double {
//        let rateValue = Double(amount)
//
//        return rateValue + (rateValue * getInterestRate(byDay: day))
//    }
//
//    func testInterest(unitDay: Int) -> Double {
//        for day in 1...365 {
//            if day % unitDay == 0 {
//                print("\(day)일차 예치 금액은 \(calculateAmount(day: day, amount: money))")
//            }
//        }
//        return calculateAmount(day: 365, amount: money)
//    }
//}


struct InterestRate {

    func getInterestRate(byDay:Int) -> Double {
        switch byDay {
        case 0...90:
            return 0.005
        case 91...180:
            return 0.01
        case 181...364:
            return 0.02
        default:
            return 0.056
        }
    }
        
    func calculateAmount(day:Int, amount:Int) -> Double {
        let amountValue = Double(amount)
        
        return amountValue + (amountValue * getInterestRate(byDay: day))
    }
        
    func testInterest(unitDay : Int) -> Double {
        for day in 1...365 {
            if day % unitDay == 0 {
                print("\(day)일차의 예치금액은 \(calculateAmount(day:unitDay, amount: 1000000))입니다.")
            }
        }
        return calculateAmount(day: 365, amount: 1000000)
    }

}

