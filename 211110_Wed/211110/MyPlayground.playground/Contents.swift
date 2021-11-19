import Foundation

struct PlayGame {
    
    var number = [Int]() // 뽑은 숫자 3개를 받을 빈 배열 선언

    mutating func newGame(){
        while number.count < 3 {  // num 배열에 숫자 3개가 들어갈때까지 반복하겠다.
            let tempNum = Int.random(in: 1...9) // 1~9중에 숫자 3개를 받을 변수 선언
            
            // contains(포함여부확인할 배열/문자열)은 배열이나 문자열에 해당 특정 문자가 포함되어있는지 확인후 Bool값 리턴
            if number.contains(tempNum){ // num에 tempNum이 들어가있다면
                return
            } else { // num에 tempNum이 들어가있지 않다면
                number.append(tempNum) // num에 tempNum을 넣어줘
            }
        }
      
    }

    func hit(num: Int) -> (strikeCount: Int, ballCount: Int) {
        var strikeCount = 0
        var ballCount = 0
        let num = [num / 100, (num % 100) / 10, num % 10]
        // 100으로 나눈 몫 / 100자리를 제외한 10으로 나눈 몫 / 10으로 나눈 나머지
        
        for i in 0..<number.count { // 0부터 number의 count가 되기 전까지 반복해
            if number[i] == num[i] { // number와 num의 수가 같다면
                strikeCount += 1 // strikeCount에 1을 더해
            } else if number.contains(num[i]) { // 없으면, number안에 num의 수가 있는지 확인해
                ballCount += 1 // 있으면 ballCount에 1을 더해
            }
        }
        return (strikeCount, ballCount)
    }

    
    func showGameScore() -> Bool {
        var count = 9
        
    }

}


