//
//  main.swift
//  MagicSquare

import Foundation

struct MagicSquare {
    
    func makeMagicSquare(row: Int) -> [[Int]] {
            var arr = Array(repeating: Array(repeating: 0, count: row), count: row)
            var magicRow = 0
            var magicCol = row / 2
            arr[magicRow][magicCol] = 1
            // 값이 있을 경우, 되돌아오기 위한 변수
            var y = 0
            var x = 0
        
        // 1. 1은 첫번째 행 가운데 열에 위치한다.
        // 2. 다음 수 부터 오른쪽 대각선 위 방향으로 넣어준다. (0행이면, 마지막 행으로 이동)
        // 3. 가야할 위치에 수가 있다면, 행은 그대로 열만 한칸 아래로 내려준다.
            for i in 2...(row * row) {
                y = magicCol
                x = magicRow
                
                magicRow -= 1
                magicCol += 1
                
                if magicRow < 0 {
                    magicRow = row - 1
                }
                if magicCol > row - 1 {
                    magicCol = 0
                }
    
                if arr[magicRow][magicCol] == 0 {
                    arr[magicRow][magicCol] = i
                } else {
                    magicRow = x + 1
                    magicCol = y
                    arr[magicRow][magicCol] = i
                }
            }
            return arr
        }
    
//    func printMagicSquare(array: [[Int]]) {
//        for i in array {
//            print(i)
//        }
//    }
//
    func printMagicSquare(array: [[Int]]) {
        for i in array {
            for j in i {
                print(j, terminator: " ")
            }
            print()
        }
    }
}

var printSquare = MagicSquare()
printSquare.printMagicSquare(array: printSquare.makeMagicSquare(row: 5))

