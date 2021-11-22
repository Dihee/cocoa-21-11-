//
//  Q6.swift
//  211108
//
//  Created by Jihee hwang on 2021/11/21.
//

import Foundation

// 연습문제6. 사전(Dictionary) 활용하기

//func duplicatedWords(inputWords: [String]) -> [String] {
//
//    for i in 0..<inputWords.count {
//        for j in 0..<i {
//            if inputWords[i] == inputWords[j] {
//                print([inputWords[j]], terminator: "")
//            }
//        }
//        print()
//    }
//    return inputWords
//}

func duplicatedWords(inputWords: Array<String>) -> Array<String> {
    var words = Array<String>(inputWords)
    var result = Array<String>()
    for _ in 1...inputWords.count {
        let word = words.removeFirst()
        if words.contains(word) && !result.contains(word) {
            result.append(word)
        } else {
            continue
        }
    }
    return result
}
