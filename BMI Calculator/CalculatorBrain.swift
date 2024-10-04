//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Ankur on 04/10/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import Foundation
import UIKit
struct CalculatorBrain {
    
    var bmi: BMI?
     
    mutating func calculateBMI(height: Float, weight: Float){
        let bmiValue = weight / (height*height)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more you are under weight.", color: UIColor.blue)
        }
        else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "You are normal.", color: UIColor.green)
        }
        else{
            bmi = BMI(value: bmiValue, advice: "Eat less you are overweight.", color: UIColor.red)
        }
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice."
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.clear
    }
    
}
