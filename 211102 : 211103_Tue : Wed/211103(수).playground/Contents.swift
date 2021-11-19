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

func printSquare(columns: Int) {
    let resultArr = columns * columns // 정사각형 선언
    
    for i in 1...resultArr {
        if i < 10 {
            print(" \(i)", terminator: "")
        } else {
            print(i, terminator: "")
        }
        if i % columns == 0 {
            print("")
        } else {
            print(" ", terminator: "")
        }
    }
}
printSquare(columns: 5)


// 미션7. printReverse()

// 미션8. printDiamond()

// 미션9. print3515()

func print3515(lines: Int) -> [String] {
    var arr = [String]()
    
    for i in 1...lines {
        if i % 3 == 0 {
            arr.append("👏🏼")
        } else if i % 5 == 0 {
            arr.append("🙏")
        } else if i % 15 == 0 {
            arr.append("👏🏼🙏")
        } else {
            arr.append(String(i))
        }
    }
    return arr
}

print3515(lines: 15)
