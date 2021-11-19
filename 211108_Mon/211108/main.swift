//  main.swift
//  211108
//
//  Created by Jihee hwang on 2021/11/08.
//

import Foundation
// 비밀번호 문제 힌트 : characterSet


// Q 1-1. 첫번째 실행
//var myArray = ArrayPractice()
//myArray.printArray(array: myArray)

// Q 1-1. 두번째 실행
var myArray = ArrayPractice()
myArray.printArray(array: myArray.fillArray())

// Q 1-2.
var myArray2 = BoolArray()
myArray2.printArray(array: myArray2.setBoolArray(), newChar: "$")
