//
//  File.swift
//  211115
//
//  Created by Jihee hwang on 2021/11/15.
//

import Foundation

// 프로퍼티를 정의할 때, 디폴트값을 주면 이니셜라이저에서 따로 초기값을 할당하지 않더라도 디폴트 값으로 프로퍼티의 값이 초기화 됨.

class Matrix {
    var a : Double
    var b : Double
    var c : Double
    var d : Double
    
    // 초기화 메서드 구현
    init(a: Double = 0.0, b: Double = 0.0, c: Double = 0.0, d: Double = 0.0){ // defult값 주기
        self.a = a
        self.b = b
        self.c = c
        self.d = d
    }
    
    func sum(with other: Matrix) -> Matrix {
        let newA = self.a + other.a
        let newB = self.b + other.b
        let newC = self.c + other.c
        let newD = self.d + other.d
        
        return Matrix(a: newA, b: newB, c: newC, d: newD)
        }
    
    func product(with other: Matrix) -> Matrix {
        let productA = (self.a * other.a) + (self.a * other.c)
        let productB = (self.b * other.b) + (self.b + other.d)
        let productC = (self.c * other.a) + (self.c * other.c)
        let productD = (self.d * other.b) + (self.d * other.d)
        
        return Matrix(a: productA, b: productB, c: productC, d: productD)
    }
    
    // extension : 확장
}
    

