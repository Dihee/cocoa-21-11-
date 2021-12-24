//
//  main.swift
//  LadderGame
//
//  Created by Jihee hwang on 2021/11/25.
//

import Foundation
/* Cocoa - 11 / 04 < 사다리게임 > */

class LadderGame {
    
    func frameOfGame() {
        print("🪜 Let's Play the Ladder Game! 🪜 \n참가 인원을 입력하세요.\n(참여 가능 인원은 3~8명 입니다.)")
        let player = Int(readLine()!)!
        if player <= 2 || player > 8 {
            print("참여 인원을 잘 못 입력하셨습니다.🥲\n처음으로 돌아가주십시오. ")
        } else { printLadderGame(array: makeLadderGame(member: player, ladderHight: 4)) }
    }
    
    func printLadderGame(array: [[String]]) {
        for i in array {
            for j in i {
                print("ㅣ\(j)", terminator: "")
            }
            print("ㅣ")
        }
    }
    
    func makeLadderGame(member: Int, ladderHight: Int) -> [[String]] {
        var arr = [[String]]()
        for col in 1...ladderHight {
            var tempArr = [String]()
            for row in 1...(member - 1) {
                var bridge = Int.random(in: 0...50)
                if bridge % 2 == 0 {
                    tempArr.append("-")
                } else { tempArr.append(" ") }
            }
            arr.append(tempArr)
        }
        return arr
    }

}

var printLadderGame = LadderGame()
printLadderGame.frameOfGame()
