//
 //  ViewController.swift
 //  practice_Measure
 //
 //  Created by Jihee hwang on 2021/11/10.
 //

import UIKit

// jeje의 도움을 받아 다시 도전!

class ViewController: UIViewController {

    @IBOutlet weak var inputNum: UITextField!
    @IBOutlet weak var convertValue: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func didButton(_ sender: UIButton) {
        let inches = self.inputNum.text!
        let inputInches = Float(inches)!
        self.convertValue.text = String(inputInches * 2.54)
        
    }
    
    // 됐다......!
    
    
}
