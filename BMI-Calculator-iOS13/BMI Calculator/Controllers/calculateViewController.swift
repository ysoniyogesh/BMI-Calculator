//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class calculateViewController: UIViewController {
  
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    
    var CalculatorBrain = calculatorBrain()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value) // to round off value upto 2 decimal places
        heightLabel.text = "\(height) m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let weight = String(format: "%.2f", sender.value) // to round off value upto 2 decimal places
        weightLabel.text = "\(weight) Kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        //let BMI = weight/(height * height)
        CalculatorBrain.calculateBMI(height: height, weight: weight)
       
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }

    //preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = CalculatorBrain.getBMIValue()
            destinationVC.advice = CalculatorBrain.getAdvice()
            destinationVC.color = CalculatorBrain.getColor()
        }
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
}

