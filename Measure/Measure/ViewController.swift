//
//  ViewController.swift
//  Measure
//
//  Created by Jihee hwang on 2021/11/09.
//

import UIKit

class ViewController: UIViewController {

  
    @IBAction func inputNum(_ fromCM: Float) {
        print(fromCM * 0.3937)
        
    }
    
    /* @IBAction func menuButtonTouched(_ sender: Any) {
     menuImageView.image = UIImage(named: "cafe-latte.jpg")
 }
*/
    @IBAction func menuButtonTouched(_ sender: Any) {
        print("\(inputNum(_: 253))")
    }
    

    @IBOutlet weak var returnToValue: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

