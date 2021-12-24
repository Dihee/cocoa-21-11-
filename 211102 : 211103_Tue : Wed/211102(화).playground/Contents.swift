//
//  main.swift
//  211112
//
//  Created by Jihee hwang on 2021/11/12.
//

import Foundation

// 미션1. Rectangle
//
//Playground로 Rectangle struct를 만들어보세요.
//Int 형 leftTopX, leftTopY 변수를 추가하세요.
//Int 형 rightBottomX, rightBottomY 변수를 추가하세요.
//4개의 꼭지점을 출력하는 printRect() 메서드를 선언하세요.


struct Rectangle {
    var leftTopX = Int()
    var leftTopY = Int()
    var rightBottomX = Int()
    var rightBottomY = Int()
    
    func printRect() {
        print("(\(leftTopX), \(leftTopY))(\(rightBottomX), \(rightBottomY))")
    }

    mutating func printArea() {
        let width: Int = rightBottomX - leftTopX
        let hight: Int = leftTopY - rightBottomY
        let area: Int = width * hight
        print("사각형의 면적은 \(area)입니다.")
    }
    
    
    // init
    init(leftTopX: Int, leftTopY: Int, rightBottomX: Int, rightBottomY: Int) {
        self.leftTopX = leftTopX
        self.leftTopY = leftTopY
        self.rightBottomX = rightBottomX
        self.rightBottomY = rightBottomY
    }
}

//미션2. 호출하기
//
//아래에서 Rectangle struct를 rect 변수로 선언하고
//기본 제공하는 leftTopX, leftTopY, rightBottomX, rightBottomY 모두 초기화하는 메서드로 값을 지정하세요.
//printRect() 메서드를 호출해서 꼭지점 좌표를 출력하세요.

//미션3. printArea()
//
//사각형의 면적을 계산해서 출력하는 printArea() 메서드를 추가하세요.
//아래에서 printArea() 메서드를 호출하세요.

var rect: Rectangle = Rectangle(leftTopX: 5, leftTopY: 11, rightBottomX: 15, rightBottomY: 4)
rect.printRect()
rect.printArea()

//미션4. Float형
//
//사각형 좌표를 Float 형으로 바꿔보세요.
//printRect() 메서드를 호출하세요.

//미션5. center
//
//사각형의 중점(center)를 계산해서 float 형으로 출력하는 printCenter() 메서드를 추가하세요.
//아래에서 printCenter() 메서드를 호출하세요.

struct NewRectangle {
    var leftTopX1, leftTopY1, rightBottomX1, rightBottomY1: Float
    
    func printRect() {
        print("(\(leftTopX1), \(leftTopY1))(\(rightBottomX1), \(rightBottomY1))")
    }
    
    mutating func printCenter(){
        let centerX: Float = (rightBottomX1 + leftTopX1) / 2
        let centerY: Float = (rightBottomY1 + leftTopY1) / 2
        
        print("사각형의 중점 : (\(centerX), \(centerY))")
    }
}
var newRect: NewRectangle = NewRectangle(leftTopX1: 4.5, leftTopY1: 10.5, rightBottomX1: 15, rightBottomY1: 3.5)
newRect.printRect()
newRect.printCenter()

// 연습문제 2
//
//미션1. MyPoint
//
//MyPoint struct를 만들어보세요.
//Float 형 myX, myY 변수를 추가하세요.
//(x,y)형태로 좌표를 출력하는 printPoint() 메서드를 만드세요.
//MyPoint struct 인스턴스를 pointA로 선언하고
//초기화 메서드로 (2.5f,15.8f)값을 넘기고
//printPoint()를 호출해서 좌표를 출력하세요

//미션2. 메소드 추가하기
//
//setX(x : Float) 메서드와 setY(y: Float) 메서드를 추가하세요.
//setX는 myX값을 x로 바꾸고, setY는 myY값을 y로 바꾸세요.
//setX(x:15.2)와 setY(y:7.4)를 호출하세요.
//직접 print(“pointA=( )”) 형태로 x와 y 값을 가져와서 출력하세요.

//미션3. 계산하기
//
//다른 점과의 거리를 계산하기 위해서 getDistanceTo(toPoint : MyPoint)->Float 메서드를 추가하세요.
//- Float sqrt(Float) 함수 사용
//새로운 점(15f, 12.2f) pointB 인스턴스를 추가하고
//getDistanceTo() 메서드에 매개변수로 넘겨 결과값을 출력하세요.



struct MyPoint {
    var myX, myY: Float
    
    func printPoint(){
        print("(\(myX), \(myY))")
    }
    
    func printSetXY() {
        print("pointA = (\(myX), \(myY))")
    }
    
    mutating func setX(x: Float) {
        myX = x
    }
    mutating func setY(y: Float) {
        myY = y
    }

    func getDistanceTo(toPoint: MyPoint) -> Float {
           return sqrt(pow(myX - toPoint.myX, 2) + pow(myY - toPoint.myY, 2))
       }

}

var pointA = MyPoint.init(myX: 2.5, myY: 15.8)
var pointB = MyPoint(myX: 15, myY: 12.2)
pointA.printPoint()
pointA.setX(x: 15.2)
pointA.setY(y: 7.4)
pointA.printSetXY()
print(pointA.getDistanceTo(toPoint: pointB))

//출력문제 보류

// 연습문제3

//미션1. MyPoint로 바꾸기
//
//이전에 만든 Rectangle struct를 MyPoint 구조체를 사용하도록 개선해봅시다.
//Float leftTop-X, -Y 대신 MyPoint leftTop으로
//Float rightBottom-X, -Y 대신 MyPoint rightBottom 으로 대체하고
//기본 생성자에서 각 좌표의 초기값을 (0,0) 으로 설정하세요.
//rect 테스트했던 메서드를 그대로 실행해보세요.
//안되는 부분을 수정해보세요.

struct developRect {
    var leftTop = MyPoint(myX: 0, myY: 0)
    var righrBottom = MyPoint(myX: 0, myY: 0)
    var origin: MyPoint // 기준 좌표를 놓고 그 값을 중심으로 이동해야 하는거라, 중심감(원점) 입력
    var width: Float
    var hight: Float
    
    func printPoint(){
        print("X : \(origin.myX), Y : \(origin.myY), Width : \(width), Hight : \(hight)")
    }
    
    mutating func moveTo(delta: MyPoint) {
        origin.myX += delta.myX
        origin.myY += delta.myY
    }
}
var rectB = developRect(origin: MyPoint(myX: 5, myY: 5), width: 5, hight: 10)
rectB.printPoint()
rectB.moveTo(delta: MyPoint(myX: -3, myY: 1.5))
rectB.printPoint()

// 미션2. printPoints() 구현하기

//추가 생성자로 MyPoint형 원점(x,y) 좌표와
//길이 Float width 와 높이 Float height 를 넘겨
//사각형을 만드는 메서드를 만드세요.
//원점에 해당하는 MyPoint 인스턴스 (5,5)를 추가하고
//추가 생성자에 길이는 5f, 10f 넘겨 새로운 사각형 rectB 객체를 생성하세요.
//rectB.printPoint()를 호출해서 좌표를 출력하세요.

//미션3. moveTo() 구현하기
//
//이전에 만든 Rectangle struct에 원하는 delta 값만큼 위치 이동하는 moveTo(delta: MyPoint)메서드를 추가하세요.
//rectB.moveTo(delta: (-3f, 1.5f)) 메서드를 호출하고 이동한 사각형 좌표를 printRect()로 확인하세요.
