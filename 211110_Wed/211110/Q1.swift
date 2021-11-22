//
//  Q1.swift
//  211110
//
//  Created by Jihee hwang on 2021/11/16.
//

import Foundation

// 1-1
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

// 1-2
struct PlayGame {
    
    var number = [Int]() // 뽑은 숫자 3개를 받을 빈 배열 선언

    mutating func newGame(){
        while number.count < 3 {  // num 배열에 숫자 3개가 들어가있지 않다면, 아래를 동작
            let tempNum = Int.random(in: 1...9) // 1~9중에 숫자 3개를 받을 변수 선언
            
            // contains(포함여부확인할 배열/문자열)은 배열이나 문자열에 해당 특정 문자가 포함되어있는지 확인후 Bool값 리턴
            if number.contains(tempNum){ // num에 tempNum이 들어가있다면
                return
            } else { // num에 tempNum이 들어가있지 않다면
                number.append(tempNum) // num에 tempNum을 넣어줘
            }
        }
      
    }

    func hit(num: Int) -> (strikeCount: Int, ballCount: Int) {
        var strikeCount = 0
        var ballCount = 0
        let num = [num / 100, (num % 100) / 10, num % 10]
        // 100으로 나눈 몫 / 100자리를 제외한 10으로 나눈 몫 / 10으로 나눈 나머지
        
        for i in 0..<number.count { // 0부터 number의 count가 되기 전까지 반복해
            if number[i] == num[i] { // number와 num의 수가 같다면
                strikeCount += 1 // strikeCount에 1을 더해
            } else if number.contains(num[i]) { // 없으면, number안에 num의 수가 있는지 확인해
                ballCount += 1 // 있으면 ballCount에 1을 더해
            }
        }
        return (strikeCount, ballCount)
    }

    
    func showGameScore() -> Bool {
        print(" Game Start! 👊 ")
        for i in 1...9 {
            print("\(i)번째 시도")
            
            let inputNum = readLine()!
            let numbers = Int(inputNum) ?? 0
            let turn = hit(num: numbers)
            print(" Score : \(turn.strikeCount)스트라이크, \(turn.ballCount)볼 ")
            if turn.strikeCount == 3 {
                print(" 정답! 😆 ")
                return true
            }
        }
        print(" Game Over 😲 ")
        return false
    }
}



