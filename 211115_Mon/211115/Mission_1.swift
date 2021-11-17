//
//  File.swift
//  211115
//
//  Created by Jihee hwang on 2021/11/15.
//

import Foundation

// 프로퍼티를 정의할 때, 디폴트값을 주면 이니셜라이저에서 따로 초기값을 할당하지 않더라도 디폴트 값으로 프로퍼티의 값이 초기화 됨.

//a,b,c,d 모든 값을 지정할 수 있는 초기화 메소드를 구현한다.
//각 매개 변수에 default 값을 지정해서 다른 값이 없을 경우 0으로 초기화한다.

class Matrix {
    var a : Double
    var b : Double
    var c : Double
    var d : Double

    init(a: Double, b: Double, c: Double, d: Double) {
        self.a = 0
        self.b = 0
        self.c = 0
        self.d = 0
    }
    
    func sum(with other: Matrix) -> Matrix {
        
    }
    


}
