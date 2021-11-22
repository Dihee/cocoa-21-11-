//
//  main.swift
//  211117_Wed
//
//  Created by Jihee hwang on 2021/11/22.
//

import Foundation

var arr = Brackets(.round)
print(arr.analyze(with: "()"))


print(sum(value: 0.001, repeat: 1000))
/*
 0.001 값을 1,000번 더하면 1이 되어야 한다.
 하지만 실행 결과는 1.0000000000000007
 이것은 컴퓨터가 가지는 한계로 2진수로 모든 숫자를 표현하기 때문에 생기는 오류값이다.
 따라서 실수를 계산할 때는 항상 자릿수와 오차 범위를 고려해야 한다.
 */

let x = 6.5

// Equivalent to the C 'round' function:
print(x.rounded(.toNearestOrAwayFromZero))
// Prints "7.0"

// Equivalent to the C 'trunc' function:
print(x.rounded(.towardZero))
// Prints "6.0"

// Equivalent to the C 'ceil' function:
print(x.rounded(.up))
// Prints "7.0"

// Equivalent to the C 'floor' function:
print(x.rounded(.down))
// Prints "6.0"
