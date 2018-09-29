//
//  ViewController.swift
//  IncomeTaxCalculator
//
//  Created by Zhiyu Ding on 29/9/18.
//  Copyright © 2018 Zhiyu Ding. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var taxValue: UILabel!
    @IBOutlet weak var incomeValue: UITextField!
    @IBOutlet weak var buttonCalculate: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NSLog("View Loaded");

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onCalculateTouched(_ sender: Any) {
        let incomeText:String = incomeValue.text!;
        let income:Double = Double(incomeText)!;
        let tax:Double = self.calculateTax(income: income);
        taxValue.text = String(tax);
        NSLog("Button Clicked");
    }
    
    func calculateTax(income:Double) -> Double {
        if (income < 18200) {
            return 0.0;
        } else if (income < 37000) {
            let taxableValue:Double = income - 18200;
            return taxableValue * 0.19;
        } else if (income < 90000) {
            let taxableValue:Double = income - 37000;
            return taxableValue * 0.325 + 3572;
        } else if (income < 180000) {
            let taxableValue:Double = income - 90000;
            return taxableValue * 0.337 + 20797;
        } else {
            let taxableValue:Double = income - 180000;
            return taxableValue * 0.45 + 54097;
        }
    }

}

