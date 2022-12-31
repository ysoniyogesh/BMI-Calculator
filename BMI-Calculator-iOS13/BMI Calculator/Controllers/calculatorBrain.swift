//
//  calculatorBrain.swift
//  BMI Calculator
//
//  Created by YOGESH SONI on 03/06/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation
import UIKit
struct calculatorBrain {
    var bmi: BMI?
    //var BMI: Float = 0.0
    
    mutating func calculateBMI(height: Float, weight: Float) {
       let bmivalue = weight/pow(height, 2) // exponent method to get power
        if bmivalue < 18.5 {
            bmi = BMI(value: bmivalue, advice: "Eat more Pie!", color:UIColor.blue )
        } else if bmivalue < 24.9 {
            bmi = BMI(value: bmivalue, advice: "You are fit as fiddle!", color:UIColor.green )
        } else {
            bmi = BMI(value: bmivalue, advice: "you had lots of pie!", color: UIColor.orange )
        }
    }
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.value ?? "0.0")
    }
    func getAdvice() -> String {
        return bmi?.advice ?? "nil"
    }
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
}
