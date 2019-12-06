//
//  CalculatorBrain.swift
//  BMI-CalculatorApp
//
//  Created by Nikki on 2019-12-06.
//  Copyright © 2019 Myph. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    
    var bmi: Float?
 
    
    // using optional binding
//     func getBMIValue() -> String {
//        if let bmi = bmi {
//            let bmiValue = String(format: "%.1f", bmi)
//            return bmiValue
//        } else {
//            return "0.0"
//        }
//    }
    
    // using the nil coalescing operatro
         func getBMIValue() -> String {
            let bmiValue = String(format: "%.1f", bmi ?? 0.0)
            return bmiValue
        }
       
    
    mutating func calculateBMI(height: Float, weight: Float) {
         bmi = weight/pow(height,2)
    }
    
    
    
}
