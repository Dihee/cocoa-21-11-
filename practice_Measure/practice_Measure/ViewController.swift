//
 //  ViewController.swift
 //  practice_Measure
 //
 //  Created by Jihee hwang on 2021/11/10.
 //
/*
import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var inputNum: UITextField!
    @IBOutlet weak var convertValue: UILabel!
    
    func numValue(inputNum: Float) -> Any {
        return inputNum * 2.54
    
    @IBAction func convertNum(_ sender: UIButton) {
        convertValue.text =
    }
        
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}
*/

import UIKit

class ViewController: UIViewController {
    
    struct convertNumber {
        var toCM = Float()
        init(from inch: Float) {
            toCM = inch * 2.54
        }
        func printValue() -> Float {
            return toCM
        }
    }
    
    @IBOutlet weak var inputNum: UITextField!
    @IBOutlet weak var convertValue: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func convertBtn(_ sender: UIButton) {
        var num = Float(inputNum.text!)
       
    }
    

}


