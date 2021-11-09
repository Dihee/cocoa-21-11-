//
//  main.swift
//  211108
//
//  Created by Jihee hwang on 2021/11/08.
//

import Foundation


/* 연습문제1 - 배열
 미션1. 2차원 배열만들기 & 출력하기 */
 
// 시도 1.
var arr = [[Int]](repeating: [Int](repeating: 0, count: 5), count: 5)
arr[0][0] = 1
arr[1][0] = 6
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
var myArray = ArrayPractice()
myArray.printArray(array: myArray)

// ----------------------------------------------------------------------

/* 미션2. setBoolArray와 printArray
 - setBoolArray()는 Array<Array> 배열을 리턴한다.
 - 배열 내부에는 우측 정렬된 삼각형만 true로 채운다.
 - printArray(array:Array<Array<Bool>>, newChar:Character) 는
 - true면 newChar를 출력하고 false면 빈 공백 “ ”을 출력한다
 */
