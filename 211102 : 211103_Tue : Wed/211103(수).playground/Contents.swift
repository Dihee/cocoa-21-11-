import UIKit

// 미션1. printXY()

func printXY(max: Int) {
    for _ in 1...max {
        for i in 1...max {
            print(i, terminator: "")
        }
        print()
    }
}

printXY(max: 3)
printXY(max: 5)


// 미션2. printLeftTree()

func printLeftTree(lines: Int) {
    for i in 1...lines {
        for j in 1...i {
            print("🎈", terminator: "")
        }
        print()
    }
}
printLeftTree(lines: 5)


// 미션3. func printRightTree(lines : Int)

func printRightTree(lines : Int){
    for i in 1...lines {
        if i != lines {
            for j in 1...(lines - i) {
                print("  ", terminator: "")
            }
        }
        for _ in 1...i{
            print("🎈", terminator: "")
        }
        print()
    }
}
printRightTree(lines: 4)



// 미션4. printCenterTree()

// i = 1 2 3 4 5
func printCenterTree(lines: Int) {
    for i in 1...lines {
        if i != lines {
            for j in 1...(lines - i) {
                print(" ", terminator: "")
            }
        }
        for _ in 1...i {
            print("🎈", terminator: "")
        }
        print()
    }
}

printCenterTree(lines: 5)


// 미션5. printNumbers()

func printNumbers(lines: Int) {
    var num = Int()
    for i in 1...lines { // 행을 만듬
        for _ in 1...i { // 열을 만듬
            num += 1     // 빈 변수에 값을 1씩 더해 넣음
            print(num, terminator: "")
        }
        print()
    }
}
printNumbers(lines: 5)


// 미션6. printSquare()

//func printSquare(columns: Int) {
//    var num = Int()
//
//    for i in 1...columns {
//        for _ in 1...columns {
//            num += 1
//            print(num, terminator: "")
//        }
//        print()
//    }
//}
//printSquare(columns: 5)
// 출력은 됐으나, 이게 아닌듯 하당
