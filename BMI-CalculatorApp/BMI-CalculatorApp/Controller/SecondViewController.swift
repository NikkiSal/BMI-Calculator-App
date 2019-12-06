//
//  SecondViewController.swift
//  BMI-CalculatorApp
//
//  Created by Nikki on 2019-12-05.
//  Copyright © 2019 Myph. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var bmiValue = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red // this is the same as UIColor.red
        
        let label = UILabel()
        label.text = bmiValue
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        view.addSubview(label) // UILabel inherits from UIView
    }
    
}
