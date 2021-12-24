//
//  ViewController.swift
//  hangulwatch
//
//  Created by Jihee hwang on 2021/11/24.
//
/* 12시를 기준으로 오전/오후를 구분해서 표시한다.
 
 시각 Hour 정보를 한글로 조합해서 표시한다.

 5번째줄 4번째는 아침 7시 이후부터 저녁 7시 이전까지는 ☀️ 해를 표시하고, 그 외에는 🌙 달을 표시한다.

 분 Minute 정보를 한글로 조합해서 표시한다.

 초 second 정보는 9번째줄 4번째에 글씨 크기를 1/4로 줄여서 조합한다.

 첫째줄에는 십단위, 아래줄에는 일단위와 초를 붙여서 표시한다.
 비동기로 동작하는 타이머를 생성한다. 타이머로 매초마다 전체 시간 글씨를 밝게 또는 흐리게 변경한다.
 힌트. label.textColor = UIColor.gray

 현재 시각을 알아내기 위해서는 파운데이션 NSCalendar를 활용한다.*/
import UIKit

class ViewController: UIViewController {

    @IBOutlet var daynight: [UILabel]!
    @IBOutlet var hour: [UILabel]!
    @IBOutlet var icon: [UILabel]!
    @IBOutlet var minute: [UILabel]!
    @IBOutlet var seconds: [UILabel]!
  
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

   
    
    
    

}

