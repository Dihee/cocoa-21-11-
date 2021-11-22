//
//  Q2.swift
//  211117_Wed
//
//  Created by Jihee hwang on 2021/11/22.
//

import Foundation

// 실습코드. 부동 소숫점 계산

func sum(value: Double, repeat: Int) -> Double {
    var sum: Double = 0
    
    for i in 1...`repeat` {
        // 따옴표(")로 감싸진 문자들(sequence of characters) : 상수나 변수에 대한 초기값으로 문자열 리터럴을 사용
        sum += value
    }
    return sum
}
