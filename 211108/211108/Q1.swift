//
//  Q1.swift
//  211108
//
//  Created by Jihee hwang on 2021/11/09.
//

import Foundation


/* 연습문제1 - 배열
 미션1. 2차원 배열만들기 & 출력하기 */

// 시도 1.

var arr = [[Int]](repeating: [Int](repeating: 0, count: 5), count: 5)

//arr[0][0] = 1
//arr[1][0] = 6
// 이렇게 하나하나 값을 넣는게 아닐것같은데..

// 시도 2.

var newArr: [[Int]] = [[1],
                    [6, 7],
                    [11, 12, 13],
                    [16, 17, 18, 19],
                    [21, 22, 23, 24, 25]]
/*
func printArray(array: [[Int]]) -> [[Int]] {
    return newArr
}

var myArray = printArray */
// myArray.printArray(array: myArray)
// 테스트코드 어떻게 적용하는지 모르겠구여..


// 시도 3.
  
struct ArrayPractice {
    var arrTwo: [[Int]] = [[1],
                        [6, 7],
                        [11, 12, 13],
                        [16, 17, 18, 19],
                        [21, 22, 23, 24, 25]]

    func printArray(array: Any) {
        for arr in arrTwo {
            print(arr)
        }
    }
}


// Eddy가 말한 것 처럼, 이중 for문으로 다시 만들어보자!
// 시도 4.

func printNumbers(lines: Int) {
    var num = Int()
    for i in 1...lines { // 행을 만듬
        for _ in 1...i { // 열을 만듬
            num += 1     // 빈 변수에 값을 1씩 더해 넣음
            print(num, terminator: "")
        }
        print()
    }
}
printNumbers(lines: 5)
