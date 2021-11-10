//
//  ViewController.swift
//  practice_Measure
//
//  Created by Jihee hwang on 2021/11/10.
//

import UIKit

/*
// 결과를 한 번 더 언래핑해야 Int형이 된다.
// 정수를 한 개 입력받을 땐 이 한 줄을 이용하면 된다.
let input = Int(readLine()!)!
*/

/*
let inputNum = readLine()
if var fromInch = Int(inputNum ?? 0) {
    print("\(inputNum) * 3")
}ㅊ$
*/

class ViewController: UIViewController {
    
    @IBOutlet weak var inputNum: UITextField!
    
    // 프로퍼티 생성
    @IBOutlet weak var display: UILabel!
    
    @IBAction func touchdigit(_ sender: UIButton) {
        var digit = sender.currentTitle
        let convertValue = display!.text!
        display!.text = convertValue + digit
    }
    
    

    
    
    
    
    
    /*    // override는 상속되는 슈퍼클래스의 메서드나 프로퍼티를 내가 마음대로 바꿀 수 있게 함
    // viewDidLoad() 이 함수가 호출되어졌을때 딱 한 번만 호출되어지는 함수
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
    }
    
    // MARK - Configure
    func configureUI() {
        view.backgroundColor = .black
    } */


    
    
}


