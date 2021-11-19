//
//  Q2.swift
//  211110
//
//  Created by Jihee hwang on 2021/11/16.
//

import Foundation
//
//struct PlayTheGame {
//    var resultNumber = [Int]() // 정답을 담을 빈 배열
//    var tempNumber: Set<Int> = [] // 중복 없이, 랜덤하게 뽑을 숫자를 저장할 배열
//
//    var strikeCount = 0
//    var ballCount = 0
//
//    // 랜덤으로 1~9까지의 숫자를 뽑아, tempNumber에 저장
//    mutating func newGame() {
//        while tempNumber.count < 3 { // tempNumber의 수가 3이 될때까지
//            let num = Int.random(in: 1...9)
//                tempNumber.insert(num)
//        }
//        resultNumber = [Int](tempNumber) // tempNumber의 값을 배열에 담기
//    }
//
//    mutating func hit(num: Int) -> (strikeCount: Int, ballCount: Int) {
//        var userNumber = [Int]() // 사용자에게 숫자 3개 입력받기
//        for i in 0...2{
//            userNumber.append(Int(readLine()!)!) // 값이 있을것이기에 강제 언랩핑사용
//        }
//        for j in 0...2 {
//            if userNumber[j] == resultNumber[j] {
//                strikeCount += 1
//            } else if resultNumber.contains(userNumber[j]) {
//                // resultNumber에 들어있는 숫자 3개에 userNumber의 숫자 3개가 포함되어있으면 ballCount에 1을 더해.
//                ballCount += 1
//            }
//        }
//        let result = (strikeCount, ballCount)
//        return result
//    }
//
//    mutating func showGameScore() -> Bool {
//        var gameCount = 9
//        print("스트라이크 : \(strikeCount), 볼 : \(ballCount)")
//
//        while gameCount < 9 {
//            let userNumber = Int(readLine() ?? "") ?? 0
//            let gameResult = self.hit(num: userNumber)
//
//            if strikeCount == 3 {
//                print(" 정답입니다! 😆")
//            } else {
//                gameCount -= 1 // gameCount에서 1회 차감
//                print(" \(gameResult) 틀렸습니다. 다시 시도하세요! 남은 횟수: \(gameCount)")
//            }
//        }
//        print(" GAME OVER 👊 ")
//        return false
//    }
//
//}



struct PlayGame {
    var tempNum = Int.random(in: 1...9) // 1~9까지 숫자를 받을 변수 선언
    var num = [Int]() // 뽑은 숫자 3개를 받을 빈 배열 선언

    mutating func newGame() -> [Int]{
        while tempNum < 3 {
            num.append(tempNum)
        }
        return num
    }



}
