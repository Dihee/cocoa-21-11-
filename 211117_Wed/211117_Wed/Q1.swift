//
//  Q1.swift
//  211117_Wed
//
//  Created by Jihee hwang on 2021/11/22.
//

import Foundation

//연습문제1. 괄호쌍 맞추기 구조체

struct Brackets {
    enum Bracket: String {
        case round = "()"
        case square = "[]"
        case curly = "{}"
    }
    var leftB: String
    var rightB: String
    
    init(_ shape: Bracket){
        switch shape {
        case .round:
            leftB = "("
            rightB = ")"
        case .square:
            leftB = "["
            rightB = "]"
        case .curly:
            leftB = "{"
            rightB = "}"
        }
    }
    
    func analyze(with value: String) -> Bool {
        var count: Int = 0
        switch value {
        case "(", "{", "[":
            count += 1
        case ")", "}", "]":
            count -= 1
        default:
            count += 0
        }
        return count == 0 ? true : false // count가 0과 같다면, true 아니면 false
    }
    
}

//generate(with count:Int) -> Array<String> 빼고 진행

