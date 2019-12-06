//
//  ViewController.swift
//  BMI-CalculatorApp
//
//  Created by Nikki on 2019-12-04.
//  Copyright © 2019 Myph. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    var bmiValue = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func hieghtSliderChanged(_ sender: UISlider) {
        heightLabel.text = "\(String(format: "%.2f",sender.value))m"
    
    }
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weightLabel.text = "\(String(format: "%.0f",sender.value))Kg"
    }

    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        let bmi = weight/pow(height,2)
        bmiValue = String(format: "%.1f", bmi)
        self.performSegue(withIdentifier: "goToResults", sender: self) // initializes the secondVC // self not neccessar
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResults" {
            let destinationVC = segue.destination as! ResultViewController // forced Downcastion
            destinationVC.bmiValue = bmiValue
        }
   }
}

