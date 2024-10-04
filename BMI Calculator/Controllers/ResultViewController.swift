//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Ankur on 04/10/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue: String?
    var advice: String?
    var color: UIColor?
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(bmiValue)
        bmiLabel.text=bmiValue
        // Do any additional setup after loading the view.
        adviceLabel.text=advice
        view.backgroundColor=color
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
}
