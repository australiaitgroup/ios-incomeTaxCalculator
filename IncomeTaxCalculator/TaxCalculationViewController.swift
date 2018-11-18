//
//  TaxCalculationViewController.swift
//  IncomeTaxCalculator
//
//  Created by LIN LIU on 17/11/18.
//  Copyright © 2018 Zhiyu Ding. All rights reserved.
//

import UIKit

class TaxCalculationViewController: UIViewController {
    @IBOutlet weak var label1: UITextField!
    @IBOutlet weak var label2: UITextField!
    @IBOutlet weak var label3: UITextField!
    @IBOutlet weak var label4: UITextField!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var labelResult: UILabel!
    @IBOutlet weak var buttonAdd1: UIButton!
    @IBOutlet weak var buttonAdd2: UIButton!
    @IBOutlet weak var labelUnderLine: UITextField!
    
   
    @IBOutlet weak var buttonSelect00: UIButton!
    @IBOutlet weak var buttonSelect01: UIButton!
    @IBOutlet weak var buttonSelect02: UIButton!
    @IBOutlet weak var buttonSelect03: UIButton!
    @IBOutlet weak var buttonSelect04: UIButton!
    
    
    @IBOutlet weak var buttonSelect0: UIButton!
    @IBOutlet var buttonSelectionCollection: [UIButton]!
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        labelResult.text = ""
        
        //M: boarder color of labels
        self.label1.layer.borderColor = UIColor.white.cgColor
        self.label1.layer.borderWidth = 1.7
        self.label2.layer.borderColor = UIColor.white.cgColor
        self.label2.layer.borderWidth = 1.7
        self.label3.layer.borderColor = UIColor.white.cgColor
        self.label3.layer.borderWidth = 1.7
        self.label4.layer.borderColor = UIColor.white.cgColor
        self.label4.layer.borderWidth = 1.7
        
        self.buttonAdd1.layer.borderColor = UIColor.white.cgColor
        self.buttonAdd1.layer.borderWidth = 1.7
        self.buttonAdd2.layer.borderColor = UIColor.white.cgColor
        self.buttonAdd2.layer.borderWidth = 1.7
        
        self.labelUnderLine.layer.borderColor = UIColor.white.cgColor
        self.labelUnderLine.layer.borderWidth = 1.7
        
        self.labelUnderLine.layer.borderColor = UIColor.white.cgColor
        self.labelUnderLine.layer.borderWidth = 1.7
        
        self.buttonSelect0.layer.borderColor = UIColor.white.cgColor
        self.buttonSelect0.layer.borderWidth = 1.7
        
   
        self.buttonSelect00.layer.borderColor = UIColor.white.cgColor
        self.buttonSelect00.layer.borderWidth = 1.7
        self.buttonSelect01.layer.borderColor = UIColor.white.cgColor
        self.buttonSelect01.layer.borderWidth = 1
        self.buttonSelect02.layer.borderColor = UIColor.white.cgColor
        self.buttonSelect02.layer.borderWidth = 1
        self.buttonSelect03.layer.borderColor = UIColor.white.cgColor
        self.buttonSelect03.layer.borderWidth = 1
        self.buttonSelect04.layer.borderColor = UIColor.white.cgColor
        self.buttonSelect04.layer.borderWidth = 1
        
        labelUnderLine.isHidden = true
        
  
        
        //M: background color (gradient)
        let topColor = UIColor(red: (230 / 255.0), green: (246 / 255.0), blue: (114 / 255.0), alpha: 1)
        let bottomColor = UIColor(red: (22 / 255.0), green: (127 / 255.0), blue: (126/255.0), alpha: 1)
        let gradientColors: [CGColor] = [topColor.cgColor, bottomColor.cgColor]
        let gradientLocations: [NSNumber] = [0.0, 0.52]
        let gradientLayer: CAGradientLayer = CAGradientLayer()
        gradientLayer.colors = gradientColors
        gradientLayer.locations = gradientLocations
        gradientLayer.frame = self.view.bounds
        self.view.layer.insertSublayer(gradientLayer, at: 0)
    }
    
    //M: decrese income value by clicking minus button
    @IBAction func minusIncome(_ sender: UIButton) {
        if label1.text != ""
        {
            label1.text = String(Int(label1.text!)! - 1)
        }
    }
    
    //M: increse income value by clicking plus button
    @IBAction func addIncome(_ sender: UIButton) {
        if label1.text != ""
        {
            label1.text = String(Int(label1.text!)! + 1)
        }
    }
    
    

  

    @IBAction func onClickSelect(_ sender: UIButton) {
        labelResult.text = "! right select"
        buttonSelectionCollection.forEach{
            (button) in
            //button.isHidden = true
            UIView.animate(withDuration: 0.3, animations:{
                button.isHidden = !button.isHidden
            })
        }
    }
    
    @IBAction func onClickSelectLeft(_ sender: UIButton) {
        labelResult.text = "! leftselect"
        
        //UIView.animate(withDuration: 0.3, animations:{
            self.buttonSelect01.isHidden = !self.buttonSelect01.isHidden
            self.buttonSelect02.isHidden = !self.buttonSelect02.isHidden
            self.buttonSelect03.isHidden = !self.buttonSelect03.isHidden
            self.buttonSelect04.isHidden = !self.buttonSelect04.isHidden
        //})
      
    }
    
    
    //M: click Calculator button
    @IBAction func onClickted(_ sender: UIButton) {
        let incomeText:String = String(label1.text!);
         let income: NSNumber = NSNumber(value: Float(incomeText)!);
        let tax:Double = Double(truncating: self.calculateTax(income: income));
        labelResult.text = "$ " + String(tax);
        
        //TODO: reserve 2 decimal
        
        
        
        labelUnderLine.isHidden = false
    }
    
    
    
    
    
    
    
    
    
    
    func calculateTax(income:NSNumber) -> NSNumber{
        if(income.doubleValue < 18200){
            return  NSNumber(value:0);
        }else if (income.doubleValue < 37000) {
            let taxableValue:Double = income.doubleValue - 18200;
            return NSNumber(value:taxableValue * 0.19);
        }else if(income.doubleValue < 90000){
            let taxableValue:Double = income.doubleValue - 37000;
            return NSNumber(value:taxableValue * 0.325 + 3572);
        }else if(income.doubleValue < 100000){
            let taxableValue:Double = income.doubleValue - 90000;
            return NSNumber(value:taxableValue * 0.37 + 20797);
        }else{
            let taxableValue:Double = income.doubleValue - 100000;
            return NSNumber(value:taxableValue * 0.45 + 54097);
        }
    }
}
