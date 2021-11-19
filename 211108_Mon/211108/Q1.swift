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
  
//struct ArrayPractice {
//    var arrTwo: [[Int]] = [[1],
//                        [6, 7],
//                        [11, 12, 13],
//                        [16, 17, 18, 19],
//                        [21, 22, 23, 24, 25]]
//
//    func printArray(array: Any) {
//        for arr in arrTwo {
//            print(arr)
//        }
//    }
//}


// Eddy가 말한 것 처럼, 이중 for문으로 다시 만들어보자!
// 시도 4.

struct ArrayPractice {
    var resultArray: [[Int]] = Array(repeating: Array(repeating: 0, count: 0), count: 5)
    // 위 배열을 빈 배열로 선언할 수 없는 이유는?
    // for 문에서 i가 0…lines 라는 인덱스를 사용해서
    // i가 인덱스로서 resultArray에 접근하고 있는데 스위프트에서는 배열의 크기를 미리 지정해줘야 인덱스를 사용할 수 있다.
    
    var lines = 4
    
    mutating func fillArray() -> [[Int]] {
        var num = Int()

        for i in 0...lines { // 행 생성
            for j in 0...lines { // 열 생성
                num += 1
                if i < j {
                    continue
                }
                resultArray[i].append(num)
            }
        }
        return resultArray
    }
    
    func printArray(array: [[Int]]) {
        for i in 0...lines {
            print(array[i])
        }
    }
}




// 1-2

//// 일단 함수로 구현해보기
//func makeArr(line: Int) {
//    let line = 7
//
//    for i in stride(from: line - 1, to: 0, by: -1) {
//        for j in 1...(line - 1) {
//            if i <= j {
//                print("t", terminator: "")
//            } else {
//                print("f", terminator: "")
//            }
//        }
//        print()
//    }
//    print()
//    }


struct BoolArray {
    
    var lines = 7
    var arr = [[Bool]]()
    
    mutating func setBoolArray() -> [[Bool]] {
        for i in 1...lines {
            var tempArr = [Bool]()
                for j in i..<lines {
                    tempArr.append(false)
                }
                for _ in 1...i {
                    tempArr.append(true)
                }
    
            arr.append(tempArr)
        }
        return arr
    }
        
    func printArray(array: [[Bool]], newChar: Character) {
        for innerArray in array {
            for bool in innerArray {
                if bool == true {
                    print(newChar, terminator: "")
                } else {
                    print(" ", terminator: "")
                }
            }
            print("")
        }
    }
}
