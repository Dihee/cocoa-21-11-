//
//  ViewController.swift
//  HelloCafe
//
//  Created by Jihee hwang on 2021/11/09.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var menuImageView: UIImageView!
    
    @IBAction func menuButtonTouched(_ sender: Any) {
        menuImageView.image = UIImage(named: "cafe-latte.jpg")
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

