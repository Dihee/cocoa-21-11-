//
//  main.swift
//  LadderGame
//
//  Created by Jihee hwang on 2021/11/15.
//

import Foundation

print("참가 인원이 몇 명입니까?")

func inputPlayer() {
    if let player = readLine() {
        print("참여 인원은 \(player) 입니다.")
    }
}
