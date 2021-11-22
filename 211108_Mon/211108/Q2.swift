//
//  Q2.swift
//  211108
//
//  Created by Jihee hwang on 2021/11/09.
//

import Foundation

// 연습문제2. 아이디 규칙 검사

// 비밀번호 문제 힌트 : characterSet
/*5글자 미만이거나 24글자 이상이면 실패
 영문 대소문자, 숫자, -만 포함 가능하고 그 외에는 실패
 같은 숫자가 연속해서 3회 이상 나오면 실패 111, 222
 숫자가 연번으로 3개나오면 실패 123, 234
 위 조건을 모두 통과하면 성공*/

//func IDValidator(password: String) -> Bool {
//    let pattern = "^[A-Z0-9a-z.-](?=.*[\\d]){6,23}$"
//
//    let passwordTest = NSPredicate(format:"SELF MATCHES %@", pattern)
//    return passwordTest.evaluate(with: password)
//
//}


