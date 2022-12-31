#  This is how we create ViewContoller by writing a program

//
//  secondViewController.swift
//  BMI Calculator
//
//  Created by YOGESH SONI on 03/06/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit
import CoreGraphics
class SecondViewController: UIViewController {
    var BmiValue = "0.0"
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        let label = UILabel()
        print(BmiValue)
        label.text = BmiValue
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        view.addSubview(label)
    }
}

This is how to call a view from super view
        let secondVC = SecondViewController()
        secondVC.BmiValue = String(format: "%.2f", BMI)
        self.present(secondVC, animated: true, completion: nil)
