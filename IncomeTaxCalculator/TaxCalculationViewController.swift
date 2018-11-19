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
    @IBOutlet weak var label5DollerSign: UILabel!
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
    
    @IBOutlet weak var buttonSelectPeriod00: UIButton!
    @IBOutlet weak var buttonSelectPeriod01: UIButton!
    @IBOutlet weak var buttonSelectPeriod02: UIButton!
    @IBOutlet weak var buttonSelectPeriod03: UIButton!
    @IBOutlet weak var buttonSelectPeriod04: UIButton!
    
    
    @IBOutlet weak var buttonCheckBox1: UIButton!
    var checkBoxClicked: Int = 2

    
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

        self.label5DollerSign.layer.borderColor = UIColor.white.cgColor
        self.label5DollerSign.layer.borderWidth = 1.7
        
        self.buttonAdd1.layer.borderColor = UIColor.white.cgColor
        self.buttonAdd1.layer.borderWidth = 1.7
        self.buttonAdd2.layer.borderColor = UIColor.white.cgColor
        self.buttonAdd2.layer.borderWidth = 1.7
        
        self.labelUnderLine.layer.borderColor = UIColor.white.cgColor
        self.labelUnderLine.layer.borderWidth = 1.7
        
        self.labelUnderLine.layer.borderColor = UIColor.white.cgColor
        self.labelUnderLine.layer.borderWidth = 1.7
        
  
        self.buttonSelect00.layer.borderColor = UIColor.white.cgColor
        self.buttonSelect00.layer.borderWidth = 1.7
        
        self.buttonSelectPeriod00.layer.borderColor = UIColor.white.cgColor
        self.buttonSelectPeriod00.layer.borderWidth = 1.7
        labelUnderLine.isHidden = true
        
        label1.text = "0.00"
        label2.text = "0.00"
        label3.text = "July 2018 - June 2019"
        
  
        
        //M: background color (gradient)
        let topColor = UIColor(red: (230 / 255.0), green: (246 / 255.0), blue: (114 / 255.0), alpha: 1)
        let bottomColor = UIColor(red: (69 / 255.0), green: (156 / 255.0), blue: (156/255.0), alpha: 1)
        let gradientColors: [CGColor] = [topColor.cgColor, bottomColor.cgColor]
        let gradientLocations: [NSNumber] = [0.0, 0.32]
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
            label1.text = String(Double(label1.text!)! - 1)
        }
    }
    
    //M: increse income value by clicking plus button
    @IBAction func addIncome(_ sender: UIButton) {
        if label1.text != ""
        {
            label1.text = String(Double(label1.text!)! + 1)
        }
    }
    
    


    //M: click VISA select button, then show all VISA buttons.
    @IBAction func onClickSelectVISA(_ sender: UIButton) {
        buttonSelect01.isHidden = !buttonSelect01.isHidden
        buttonSelect02.isHidden = !buttonSelect02.isHidden
        buttonSelect03.isHidden = !buttonSelect03.isHidden
        buttonSelect04.isHidden = !buttonSelect04.isHidden
        
        //buttonSelectPeriod00.isHidden = true

        if buttonSelect01.isHidden == true && buttonSelect02.isHidden == true && buttonSelect03.isHidden == true && buttonSelect04.isHidden == true
        {
            buttonSelectPeriod00.isHidden = false
            label2.isHidden = false
            label5DollerSign.isHidden = false
        }
        else if buttonSelect01.isHidden == false && buttonSelect02.isHidden == false && buttonSelect03.isHidden == false && buttonSelect04.isHidden == false
        {
            buttonSelectPeriod00.isHidden = true
            label2.isHidden = true
            label5DollerSign.isHidden = true
            label3.isHidden = true
        }
        buttonSelectPeriod01.isHidden = true
        buttonSelectPeriod02.isHidden = true
        buttonSelectPeriod03.isHidden = true
        buttonSelectPeriod04.isHidden = true
    }
    
    //M: Select different VISA buttons
    //M: VISA1
    @IBAction func onClickVISA1(_ sender: Any) {
        let title:String = (sender as AnyObject).titleLabel!.text!
        buttonSelect00.setTitle(title, for: .normal)
        buttonSelect01.isHidden = !buttonSelect01.isHidden
        buttonSelect02.isHidden = !buttonSelect02.isHidden
        buttonSelect03.isHidden = !buttonSelect03.isHidden
        buttonSelect04.isHidden = !buttonSelect04.isHidden
        
        buttonSelectPeriod00.isHidden = false
        label2.isHidden = false
        label5DollerSign.isHidden = false
        label3.isHidden = false
    }
    
    //M: VISA2
    @IBAction func onClickVISA2(_ sender: UIButton) {
        let title:String = (sender as AnyObject).titleLabel!.text!
        buttonSelect00.setTitle(title, for: .normal)
        buttonSelect01.isHidden = !buttonSelect01.isHidden
        buttonSelect02.isHidden = !buttonSelect02.isHidden
        buttonSelect03.isHidden = !buttonSelect03.isHidden
        buttonSelect04.isHidden = !buttonSelect04.isHidden
        
        buttonSelectPeriod00.isHidden = false
        label2.isHidden = false
        label5DollerSign.isHidden = false
        label3.isHidden = false
    }
    
    //M: VISA3
    @IBAction func onClickVISA3(_ sender: UIButton) {
        let title:String = (sender as AnyObject).titleLabel!.text!
        buttonSelect00.setTitle(title, for: .normal)
        buttonSelect01.isHidden = !buttonSelect01.isHidden
        buttonSelect02.isHidden = !buttonSelect02.isHidden
        buttonSelect03.isHidden = !buttonSelect03.isHidden
        buttonSelect04.isHidden = !buttonSelect04.isHidden
        
        buttonSelectPeriod00.isHidden = false
        label2.isHidden = false
        label5DollerSign.isHidden = false
        label3.isHidden = false
    }
    
    //M: VISA4
    @IBAction func onClickVISA4(_ sender: UIButton) {
        let title:String = (sender as AnyObject).titleLabel!.text!
        buttonSelect00.setTitle(title, for: .normal)
        buttonSelect01.isHidden = !buttonSelect01.isHidden
        buttonSelect02.isHidden = !buttonSelect02.isHidden
        buttonSelect03.isHidden = !buttonSelect03.isHidden
        buttonSelect04.isHidden = !buttonSelect04.isHidden
        
        buttonSelectPeriod00.isHidden = false
        label2.isHidden = false
        label5DollerSign.isHidden = false
        label3.isHidden = false

    }
    
    
    
    //M: click Period Select button, show all buttons
    @IBAction func onClickPeriod(_ sender: UIButton) {
        buttonSelectPeriod01.isHidden = !buttonSelectPeriod01.isHidden
        buttonSelectPeriod02.isHidden = !buttonSelectPeriod02.isHidden
        buttonSelectPeriod03.isHidden = !buttonSelectPeriod03.isHidden
        buttonSelectPeriod04.isHidden = !buttonSelectPeriod04.isHidden

        if buttonSelectPeriod01.isHidden == true && buttonSelectPeriod02.isHidden == true && buttonSelectPeriod03.isHidden == true && buttonSelectPeriod04.isHidden == true
        {
            //buttonSelectPeriod00.isHidden = false
            label2.isHidden = false
            label5DollerSign.isHidden = false
            label3.isHidden = false
        }
        else if buttonSelectPeriod01.isHidden == false && buttonSelectPeriod02.isHidden == false && buttonSelectPeriod03.isHidden == false && buttonSelectPeriod04.isHidden == false
        {
            //buttonSelectPeriod00.isHidden = true
            label2.isHidden = true
            label5DollerSign.isHidden = true
            label3.isHidden = true
        }
    }
    
    @IBAction func onClickPeriod01(_ sender: UIButton) {
        let title:String = (sender as AnyObject).titleLabel!.text!
        buttonSelectPeriod00.setTitle(title, for: .normal)
        buttonSelectPeriod01.isHidden = true
        buttonSelectPeriod02.isHidden = true
        buttonSelectPeriod03.isHidden = true
        buttonSelectPeriod04.isHidden = true
        
        label2.isHidden = false
        label5DollerSign.isHidden = false
        label3.isHidden = false
    }
    
    @IBAction func onClickPeriod02(_ sender: UIButton) {
        let title:String = (sender as AnyObject).titleLabel!.text!
        buttonSelectPeriod00.setTitle(title, for: .normal)
        buttonSelectPeriod01.isHidden = true
        buttonSelectPeriod02.isHidden = true
        buttonSelectPeriod03.isHidden = true
        buttonSelectPeriod04.isHidden = true
        
        label2.isHidden = false
        label5DollerSign.isHidden = false
        label3.isHidden = false
    }
    
    @IBAction func onClickPeriod03(_ sender: UIButton) {
        let title:String = (sender as AnyObject).titleLabel!.text!
        buttonSelectPeriod00.setTitle(title, for: .normal)
        buttonSelectPeriod01.isHidden = true
        buttonSelectPeriod02.isHidden = true
        buttonSelectPeriod03.isHidden = true
        buttonSelectPeriod04.isHidden = true
        
        label2.isHidden = false
        label5DollerSign.isHidden = false
        label3.isHidden = false
    }
    
    @IBAction func onClickPeriod04(_ sender: UIButton) {
        let title:String = (sender as AnyObject).titleLabel!.text!
        buttonSelectPeriod00.setTitle(title, for: .normal)
        buttonSelectPeriod01.isHidden = true
        buttonSelectPeriod02.isHidden = true
        buttonSelectPeriod03.isHidden = true
        buttonSelectPeriod04.isHidden = true
        
        label2.isHidden = false
        label5DollerSign.isHidden = false
        label3.isHidden = false
    }
    
    @IBAction func onClickCheckBox(_ sender: UIButton) {
       
        
        
        if checkBoxClicked % 2 == 0
        {
            let checkedImage: UIImage? = UIImage (named: "checkbox1")
            buttonCheckBox1.setBackgroundImage(checkedImage, for: .normal)
            checkBoxClicked = checkBoxClicked + 1
        }
        else{
            let checkedImage: UIImage? = UIImage (named: "checkbox4")
            buttonCheckBox1.setBackgroundImage(checkedImage, for: .normal)
            checkBoxClicked = checkBoxClicked + 1
        }
        
    }
    
    
    
    //M: click Calculator button
    @IBAction func onClickCalculate(_ sender: UIButton) {
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
