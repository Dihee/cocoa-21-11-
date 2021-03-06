import UIKit

// λ―Έμ1. printXY()

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


// λ―Έμ2. printLeftTree()

func printLeftTree(lines: Int) {
    for i in 1...lines {
        for j in 1...i {
            print("π", terminator: "")
        }
        print()
    }
}
printLeftTree(lines: 5)


// λ―Έμ3. func printRightTree(lines : Int)

func printRightTree(lines : Int){
    for i in 1...lines {
        if i != lines {
            for j in 1...(lines - i) {
                print("  ", terminator: "")
            }
        }
        for _ in 1...i{
            print("π", terminator: "")
        }
        print()
    }
}
printRightTree(lines: 4)



// λ―Έμ4. printCenterTree()

// i = 1 2 3 4 5
func printCenterTree(lines: Int) {
    for i in 1...lines {
        if i != lines {
            for j in 1...(lines - i) {
                print(" ", terminator: "")
            }
        }
        for _ in 1...i {
            print("π", terminator: "")
        }
        print()
    }
}

printCenterTree(lines: 5)


// λ―Έμ5. printNumbers()

func printNumbers(lines: Int) {
    var num = Int()
    for i in 1...lines { // νμ λ§λ¬
        for _ in 1...i { // μ΄μ λ§λ¬
            num += 1     // λΉ λ³μμ κ°μ 1μ© λν΄ λ£μ
            print(num, terminator: "")
        }
        print()
    }
}
printNumbers(lines: 5)


// λ―Έμ6. printSquare()

func printSquare(columns: Int) {
    let resultArr = columns * columns // μ μ¬κ°ν μ μΈ
    
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


// λ―Έμ7. printReverse()

// λ―Έμ8. printDiamond()

// λ―Έμ9. print3515()

func print3515(lines: Int) -> [String] {
    var arr = [String]()
    
    for i in 1...lines {
        if i % 15 == 0 {
            arr.append("ππΌπ")
        } else if i % 5 == 0 {
            arr.append("π")
        } else if i % 3 == 0 {
            arr.append("ππΌ")
        } else {
            arr.append(String(i))
        }
    }
    return arr
}

print3515(lines: 15)


