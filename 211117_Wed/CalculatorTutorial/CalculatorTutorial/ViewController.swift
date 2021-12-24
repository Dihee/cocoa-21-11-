//
//  ViewController.swift
//  CalculatorTutorial
//
//  Created by Jihee hwang on 2021/11/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var calculatorWorkings: UILabel!
    @IBOutlet weak var calculatorResult: UILabel!
    
    var workings = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        clear()
    }
    
    func clear() {
        workings = ""
        calculatorWorkings.text = ""
        calculatorResult.text = ""
    }
    func addToWorkings(value: String){
        workings = workings + value
        calculatorWorkings.text = workings
    }

    @IBAction func value(_ sender: UIButton) {
        let expression = NSExpression(format: workings)
        let resultValue = expression.expressionValue(with: nil, context: nil) as! Double
        let resultString = formetResult(result: resultValue)
        calculatorResult.text = resultString
    }
    
    func formetResult(result: Double) -> String {
        if result.truncatingRemainder(dividingBy: 1) == 0 {
            return String(format: "%.0f", result)
        } else {
            return String(format: "%.2f", result)
        }
    }
    
    @IBAction func clear(_ sender: UIButton) {
        clear()
    }
    @IBAction func back(_ sender: UIButton) {
        if workings.isEmpty {
            workings.removeLast()
            calculatorWorkings.text = workings
        }
    }
    
    @IBAction func percent(_ sender: UIButton) {
        addToWorkings(value: "%")
    }
    @IBAction func divide(_ sender: UIButton) {
        addToWorkings(value: "/")
    }
    @IBAction func times(_ sender: UIButton) {
        addToWorkings(value: "*")
    }
    @IBAction func minus(_ sender: UIButton) {
        addToWorkings(value: "-")
    }
    @IBAction func plus(_ sender: UIButton) {
        addToWorkings(value: "+")
    }
    @IBAction func point(_ sender: UIButton) {
        addToWorkings(value: ".")
    }
    @IBAction func zero(_ sender: UIButton) {
        addToWorkings(value: "0")
    }
    @IBAction func one(_ sender: UIButton) {
        addToWorkings(value: "1")
    }
    @IBAction func two(_ sender: UIButton) {
        addToWorkings(value: "2")
    }
    @IBAction func three(_ sender: UIButton) {
        addToWorkings(value: "3")
    }
    @IBAction func four(_ sender: UIButton) {
        addToWorkings(value: "4")
    }
    @IBAction func five(_ sender: UIButton) {
        addToWorkings(value: "5")
    }
    @IBAction func six(_ sender: UIButton) {
        addToWorkings(value: "6")
    }
    @IBAction func seven(_ sender: UIButton) {
        addToWorkings(value: "7")
    }
    @IBAction func eight(_ sender: UIButton) {
        addToWorkings(value: "8")
    }
    @IBAction func nine(_ sender: UIButton) {
        addToWorkings(value: "9")
    }
    
    
    
    
}

