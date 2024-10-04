//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    var calculatorBrain = CalculatorBrain()

    @IBOutlet weak var WeightSlider: UISlider!
    @IBOutlet weak var HeightSlider: UISlider!
    @IBOutlet weak var WeightLabel: UILabel!
    @IBOutlet weak var HeightLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func WeightSliderChanges(_ sender: UISlider) {
        print(String(format: "%.0f", sender.value))
        WeightLabel.text=String(format: "%.0f", sender.value)+"kg"
    }
    
    @IBAction func HeightSliderChanges(_ sender: UISlider) {
        print(String(format: "%.2f", sender.value))
        HeightLabel.text=String(format: "%.2f", sender.value)+"m"
    }
    
    @IBAction func CalculatePressed(_ sender: UIButton) {
        let height = HeightSlider.value
        let weight = WeightSlider.value
       
        calculatorBrain.calculateBMI(height: height, weight: weight)

        self.performSegue(withIdentifier: "goToResults", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResults" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
        }
    }
    
}

