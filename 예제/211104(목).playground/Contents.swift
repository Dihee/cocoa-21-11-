import UIKit

struct TwoDArray {
    
    func makeArray(lines: Int) {
        for i in 1...lines {
            for j in 1...i {
                print(j, terminator: " ")
            }
        }
        for arr in 1...lines {
            arr += 1
            print(arr, terminator: "")
            
        }
        print()
    }
}

var printArr = TwoDArray.makeArray(lines: 5)
print(printArr)
