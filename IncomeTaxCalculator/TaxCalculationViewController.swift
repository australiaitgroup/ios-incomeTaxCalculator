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
    @IBOutlet weak var buttonCheckBox2: UIButton!
    @IBOutlet weak var buttonCheckBox3: UIButton!
    
    var checkBoxClicked: Int = 2
    var checkBoxClicked2: Int = 2
    var checkBoxClicked3: Int = 2
    
    
    var finalTax: Double = 0.0
    var deduction: Double = 0.00
    var income: Double = 0.00
    

    
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
            income = income - 1
        }
    }
    
    //M: increse income value by clicking plus button
    @IBAction func addIncome(_ sender: UIButton) {
        if label1.text != ""
        {
            label1.text = String(Double(label1.text!)! + 1)
            income = income + 1
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
            label3.isHidden = false
        }
        else if buttonSelect01.isHidden == false && buttonSelect02.isHidden == false && buttonSelect03.isHidden == false && buttonSelect04.isHidden == false
        {
            buttonSelectPeriod00.isHidden = true
            label2.isHidden = true
            label5DollerSign.isHidden = true
            label3.isHidden = false
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
    
    @IBAction func onClickLable32(_ sender: UITextField) {
        let deductionText:String = String(label2.text!)
       
        if deductionText == ""{
            deduction = 0.00
        }
        else{
           deduction = Double(deductionText)!
        }
    }
    @IBAction func onClickLabe31(_ sender: UITextField) {
       label2.text = String(deduction)
    }
    
    
    @IBAction func onClickLable12(_ sender: UITextField) {
        let incomeText:String = String(label1.text!)
        
        if incomeText == ""{
            income = 0.00
        }
        else{
            income = Double(incomeText)!
        }
    }
    @IBAction func onClickLabel13(_ sender: UITextField) {
        label1.text = String(income)
    }
    
    
    @IBAction func onClickCheckBox1(_ sender: UIButton) {
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
    
    @IBAction func onClickCheckBox2(_ sender: UIButton) {
        if checkBoxClicked2 % 2 == 0
        {
            let checkedImage: UIImage? = UIImage (named: "checkbox1")
            buttonCheckBox2.setBackgroundImage(checkedImage, for: .normal)
            checkBoxClicked2 = checkBoxClicked2 + 1
        }
        else{
            let checkedImage: UIImage? = UIImage (named: "checkbox4")
            buttonCheckBox2.setBackgroundImage(checkedImage, for: .normal)
            checkBoxClicked2 = checkBoxClicked2 + 1
        }
    }
    
    @IBAction func onClickCheckBox3(_ sender: UIButton) {
        if checkBoxClicked3 % 2 == 0
        {
            let checkedImage: UIImage? = UIImage (named: "checkbox1")
            buttonCheckBox3.setBackgroundImage(checkedImage, for: .normal)
            checkBoxClicked3 = checkBoxClicked3 + 1
        }
        else{
            let checkedImage: UIImage? = UIImage (named: "checkbox4")
            buttonCheckBox3.setBackgroundImage(checkedImage, for: .normal)
            checkBoxClicked3 = checkBoxClicked3 + 1
        }
    }
    
    
    
    
    
    //M: click Calculator button
    @IBAction func onClickCalculate(_ sender: UIButton) {
        
    
        
        //TODO: reserve 2 decimal
        //TODO: restrict deduction and income to numbers only
        
//todo if visa not aus residents, checkboxes unclickable

        
        if buttonSelect00.titleLabel!.text! == "Australian Residents"
        {
            print("You selected VISA1")
            
            //M: check user has TFN or not
            if  checkBoxClicked % 2 != 0
            {
                print("You clicked checkBox1")
                
                //M: time to select medicare levy
                if checkBoxClicked2 % 2 != 0
                {
                    //M: time to calculate duration
                    if buttonSelectPeriod00.titleLabel!.text! == "Weekly"
                    {
                        let taxAbleValue: Double = (income * 52 - deduction)  /// 52
                        if taxAbleValue >= 0 && taxAbleValue <= 18200
                        {
                            finalTax = 0 + taxAbleValue + taxAbleValue * 0.02 / 52
                        }
                        else if taxAbleValue >= 18201 && taxAbleValue <= 37000
                        {
                            finalTax = (taxAbleValue - 18200) * 0.19 / 52 + taxAbleValue * 0.02 / 52
                        }
                        else if taxAbleValue >= 37001 && taxAbleValue <= 90000
                        {
                            finalTax = ((taxAbleValue - 37000) * 0.325 + 3572) / 52 + taxAbleValue * 0.02 / 52
                        }
                        else if taxAbleValue >= 90001 && taxAbleValue <= 105000
                        {
                            finalTax = ((taxAbleValue - 90000) * 0.37 + 20797) / 52 + taxAbleValue * 0.02 / 52 + taxAbleValue * 0.01 / 52
                        }
                        else if taxAbleValue >= 105001 && taxAbleValue <= 140000
                        {
                            finalTax = ((taxAbleValue - 90000) * 0.37 + 20797) / 52 + taxAbleValue * 0.02 / 52 + taxAbleValue * 0.0125 / 52
                        }
                        else if taxAbleValue >= 140001 && taxAbleValue <= 180001
                        {
                            finalTax = ((taxAbleValue - 90000) * 0.37 + 20797) / 52 + taxAbleValue * 0.02 / 52 + taxAbleValue * 0.015 / 52
                        }
                        else if taxAbleValue >= 180001
                        {
                            finalTax = ((taxAbleValue - 180000) * 0.45 + 54097) / 52 + taxAbleValue * 0.02 / 52 + taxAbleValue * 0.015 / 52
                        }
                        
                    }
                    else if buttonSelectPeriod00.titleLabel!.text! == "Fornightly"
                    {
                        let taxAbleValue: Double = (income * 26 - deduction)  /// 26
                        if taxAbleValue >= 0 && taxAbleValue <= 18200
                        {
                            finalTax = 0 + taxAbleValue + taxAbleValue * 0.02 / 26
                        }
                        else if taxAbleValue >= 18201 && taxAbleValue <= 37000
                        {
                            finalTax = (taxAbleValue - 18200) * 0.19 / 26 + taxAbleValue * 0.02 / 26
                        }
                        else if taxAbleValue >= 37001 && taxAbleValue <= 90000
                        {
                            finalTax = ((taxAbleValue - 37000) * 0.325 + 3572) / 26 + taxAbleValue * 0.02 / 26
                        }
                        else if taxAbleValue >= 90001 && taxAbleValue <= 105000
                        {
                            finalTax = ((taxAbleValue - 90000) * 0.37 + 20797) / 26 + taxAbleValue * 0.02 / 26 + taxAbleValue * 0.01 / 26
                        }
                        else if taxAbleValue >= 105001 && taxAbleValue <= 140000
                        {
                            finalTax = ((taxAbleValue - 90000) * 0.37 + 20797) / 26 + taxAbleValue * 0.02 / 26 + taxAbleValue * 0.0125 / 26
                        }
                        else if taxAbleValue >= 140001 && taxAbleValue <= 180001
                        {
                            finalTax = ((taxAbleValue - 90000) * 0.37 + 20797) / 26 + taxAbleValue * 0.02 / 26 + taxAbleValue * 0.015 / 26
                        }
                        else if taxAbleValue >= 180001
                        {
                            finalTax = ((taxAbleValue - 180000) * 0.45 + 54097) / 26 + taxAbleValue * 0.02 / 26 + taxAbleValue * 0.015 / 26
                        }
                        
                    }
                    else if buttonSelectPeriod00.titleLabel!.text! == "Monthly"
                    {
                        let taxAbleValue: Double = (income * 12 - deduction) /// 12
                        if taxAbleValue >= 0 && taxAbleValue <= 18200
                        {
                            finalTax = 0 + taxAbleValue + taxAbleValue * 0.02 / 12
                        }
                        else if taxAbleValue >= 18201 && taxAbleValue <= 37000
                        {
                            finalTax = (taxAbleValue - 18200) * 0.19 / 12 + taxAbleValue * 0.02 / 12
                        }
                        else if taxAbleValue >= 37001 && taxAbleValue <= 90000
                        {
                            finalTax = ((taxAbleValue - 37000) * 0.325 + 3572) / 12 + taxAbleValue * 0.02 / 12
                        }
                        else if taxAbleValue >= 90001 && taxAbleValue <= 105000
                        {
                            finalTax = ((taxAbleValue - 90000) * 0.37 + 20797) / 12 + taxAbleValue * 0.02 / 12 + taxAbleValue * 0.01 / 12
                        }
                        else if taxAbleValue >= 105001 && taxAbleValue <= 140000
                        {
                            finalTax = ((taxAbleValue - 90000) * 0.37 + 20797) / 12 + taxAbleValue * 0.02 / 12 + taxAbleValue * 0.0125 / 12
                        }
                        else if taxAbleValue >= 140001 && taxAbleValue <= 180001
                        {
                            finalTax = ((taxAbleValue - 90000) * 0.37 + 20797) / 12 + taxAbleValue * 0.02 / 12 + taxAbleValue * 0.015 / 12
                        }
                        else if taxAbleValue >= 180001
                        {
                            finalTax = ((taxAbleValue - 180000) * 0.45 + 54097) / 12 + taxAbleValue * 0.02 / 12 + taxAbleValue * 0.015 / 12
                        }
                    }
                    else if buttonSelectPeriod00.titleLabel!.text! == "Yearly"
                    {
                        let taxAbleValue: Double = income - deduction
                        if taxAbleValue >= 0 && taxAbleValue <= 18200
                        {
                            finalTax = 0 + taxAbleValue + taxAbleValue * 0.02
                        }
                        else if taxAbleValue >= 18201 && taxAbleValue <= 37000
                        {
                            finalTax = (taxAbleValue - 18200) * 0.19 + taxAbleValue * 0.02
                        }
                        else if taxAbleValue >= 37001 && taxAbleValue <= 90000
                        {
                            finalTax = ((taxAbleValue - 37000) * 0.325 + 3572) + taxAbleValue * 0.02
                        }
                        else if taxAbleValue >= 90001 && taxAbleValue <= 105000
                        {
                            finalTax = ((taxAbleValue - 90000) * 0.37 + 20797) + taxAbleValue * 0.02 + taxAbleValue * 0.01
                        }
                        else if taxAbleValue >= 105001 && taxAbleValue <= 140000
                        {
                            finalTax = ((taxAbleValue - 90000) * 0.37 + 20797) + taxAbleValue * 0.02 + taxAbleValue * 0.0125
                        }
                        else if taxAbleValue >= 140001 && taxAbleValue <= 180001
                        {
                            finalTax = ((taxAbleValue - 90000) * 0.37 + 20797) + taxAbleValue * 0.02 + taxAbleValue * 0.015
                        }
                        else if taxAbleValue >= 180001
                        {
                            finalTax = ((taxAbleValue - 180000) * 0.45 + 54097) + taxAbleValue * 0.02 + taxAbleValue * 0.015
                        }
                    }
                }
                else if checkBoxClicked2 % 2 == 0
                {
                    //M: time to calculate duration
                    if buttonSelectPeriod00.titleLabel!.text! == "Weekly"
                    {
                        let taxAbleValue: Double = (income * 52 - deduction)  /// 52
                        if taxAbleValue >= 0 && taxAbleValue <= 18200
                        {
                            finalTax = 0
                        }
                        else if taxAbleValue >= 18201 && taxAbleValue <= 37000
                        {
                            finalTax = (taxAbleValue - 18200) * 0.19 / 52
                        }
                        else if taxAbleValue >= 37001 && taxAbleValue <= 90000
                        {
                            finalTax = ((taxAbleValue - 37000) * 0.325 + 3572) / 52
                        }
                        else if taxAbleValue >= 90001 && taxAbleValue <= 180000
                        {
                            finalTax = ((taxAbleValue - 90000) * 0.37 + 20797) / 52
                        }
                        else if taxAbleValue >= 180001
                        {
                            finalTax = ((taxAbleValue - 180000) * 0.45 + 54097) / 52
                        }
                        
                    }
                    else if buttonSelectPeriod00.titleLabel!.text! == "Fornightly"
                    {
                        let taxAbleValue: Double = (income * 26 - deduction)  /// 26
                        if taxAbleValue >= 0 && taxAbleValue <= 18200
                        {
                            finalTax = 0
                        }
                        else if taxAbleValue >= 18201 && taxAbleValue <= 37000
                        {
                            finalTax = (taxAbleValue - 18200) * 0.19 / 26
                        }
                        else if taxAbleValue >= 37001 && taxAbleValue <= 90000
                        {
                            finalTax = ((taxAbleValue - 37000) * 0.325 + 3572) / 26
                        }
                        else if taxAbleValue >= 90001 && taxAbleValue <= 180000
                        {
                            finalTax = ((taxAbleValue - 90000) * 0.37 + 20797) / 26
                        }
                        else if taxAbleValue >= 180001
                        {
                            finalTax = ((taxAbleValue - 180000) * 0.45 + 54097) / 26
                        }
                        
                    }
                    else if buttonSelectPeriod00.titleLabel!.text! == "Monthly"
                    {
                        let taxAbleValue: Double = (income * 12 - deduction) /// 12
                        if taxAbleValue >= 0 && taxAbleValue <= 18200
                        {
                            finalTax = 0
                        }
                        else if taxAbleValue >= 18201 && taxAbleValue <= 37000
                        {
                            finalTax = (taxAbleValue - 18200) * 0.19 / 12
                        }
                        else if taxAbleValue >= 37001 && taxAbleValue <= 90000
                        {
                            finalTax = ((taxAbleValue - 37000) * 0.325 + 3572) / 12
                        }
                        else if taxAbleValue >= 90001 && taxAbleValue <= 180000
                        {
                            finalTax = ((taxAbleValue - 90000) * 0.37 + 20797) / 12
                        }
                        else if taxAbleValue >= 180001
                        {
                            finalTax = ((taxAbleValue - 180000) * 0.45 + 54097) / 12
                        }
                    }
                    else if buttonSelectPeriod00.titleLabel!.text! == "Yearly"
                    {
                        let taxAbleValue: Double = income - deduction
                        if taxAbleValue >= 0 && taxAbleValue <= 18200
                        {
                            finalTax = 0
                        }
                        else if taxAbleValue >= 18201 && taxAbleValue <= 37000
                        {
                            finalTax = (taxAbleValue - 18200) * 0.19
                        }
                        else if taxAbleValue >= 37001 && taxAbleValue <= 90000
                        {
                            finalTax = ((taxAbleValue - 37000) * 0.325 + 3572)
                        }
                        else if taxAbleValue >= 90001 && taxAbleValue <= 180000
                        {
                            finalTax = ((taxAbleValue - 90000) * 0.37 + 20797)
                        }
                        else if taxAbleValue >= 180001
                        {
                            finalTax = ((taxAbleValue - 180000) * 0.45 + 54097)
                        }
                    }
                }
            }
                
            //M: no TFN, deduction should not influence
            //M: finished!!!
            else if checkBoxClicked % 2 == 0
            {
                print("You unclicked checkBox1")
                deduction = 0
                let taxAbleValue: Double = income - deduction
                finalTax = taxAbleValue * 0.47
            }
            
        }
        else if buttonSelect00.titleLabel!.text! == "Foreign Residents"
        {
            print("You selected VISA2")
            
            if  checkBoxClicked % 2 != 0
            {
                print("You clicked checkBox1")
                if buttonSelectPeriod00.titleLabel!.text! == "Weekly"
                {
                    let taxAbleValue: Double = (income * 52 - deduction) /// 52
                    
                    if taxAbleValue >= 0 && taxAbleValue <= 87000
                    {
                        finalTax = taxAbleValue * 0.325 / 52
                    }
                    else if taxAbleValue >= 87001 && taxAbleValue <= 180000
                    {
                        finalTax = ((taxAbleValue - 87000) * 0.37 + 28275) / 52
                    }
                    else if taxAbleValue >= 180001
                    {
                        finalTax = ((taxAbleValue - 180000) * 0.45 + 62685) / 52
                    }
                }
                
                
                else if buttonSelectPeriod00.titleLabel!.text! == "Fornightly"
                {
                    let taxAbleValue: Double = (income * 26 - deduction) /// 26
                    
                    if taxAbleValue >= 0 && taxAbleValue <= 87000
                    {
                        finalTax = taxAbleValue * 0.325 / 26
                    }
                    else if taxAbleValue >= 87001 && taxAbleValue <= 180000
                    {
                        finalTax = ((taxAbleValue - 87000) * 0.37 + 28275) / 26
                    }
                    else if taxAbleValue >= 180001
                    {
                        finalTax = ((taxAbleValue - 180000) * 0.45 + 62685) / 26
                    }
                }
                else if buttonSelectPeriod00.titleLabel!.text! == "Monthly"
                {
                    let taxAbleValue: Double = (income * 12 - deduction) /// 12
                    
                    if taxAbleValue >= 0 && taxAbleValue <= 87000
                    {
                        finalTax = taxAbleValue * 0.325 / 12
                    }
                    else if taxAbleValue >= 87001 && taxAbleValue <= 180000
                    {
                        finalTax = ((taxAbleValue - 87000) * 0.37 + 28275) / 12
                    }
                    else if taxAbleValue >= 180001
                    {
                        finalTax = ((taxAbleValue - 180000) * 0.45 + 62685) / 12
                    }
                }
                else if buttonSelectPeriod00.titleLabel!.text! == "Yearly"
                {
                    let taxAbleValue: Double = income - deduction
                    if taxAbleValue >= 0 && taxAbleValue <= 87000
                    {
                        finalTax = taxAbleValue * 0.325
                    }
                    else if taxAbleValue >= 87001 && taxAbleValue <= 180000
                    {
                        finalTax = (taxAbleValue - 87000) * 0.37 + 28275
                    }
                    else if taxAbleValue >= 180001
                    {
                        finalTax = ((taxAbleValue - 180000) * 0.45 + 62685)
                    }
                }
            }
                //M: user doesnt have TFN
                //M: finished!!!
            else if checkBoxClicked % 2 == 0
            {
                print("You unclicked checkBox1")
                deduction = 0
                let taxAbleValue: Double = income - deduction
                finalTax = taxAbleValue * 0.45
            }
        }
        else if buttonSelect00.titleLabel!.text! == "Working Holiday"
        {
            print("You selected VISA3")
            
            if  checkBoxClicked % 2 != 0
            {
                print("You clicked checkBox1")
                if buttonSelectPeriod00.titleLabel!.text! == "Weekly"
                {
                    let taxAbleValue: Double = (income * 52 - deduction) /// 52
                    
                    if taxAbleValue >= 0 && taxAbleValue <= 37000
                    {
                        finalTax = taxAbleValue * 0.15 / 52
                    }
                    else if taxAbleValue >= 37001 && taxAbleValue <= 90000
                    {
                        finalTax = ((taxAbleValue - 37000) * 0.325 + 5550) / 52
                    }
                    else if taxAbleValue >= 90001 && taxAbleValue <= 180000
                    {
                        finalTax = ((taxAbleValue - 90000) * 0.37 + 22775) / 52
                    }
                    else if taxAbleValue >= 180001
                    {
                        finalTax = ((taxAbleValue - 180000) * 0.45 + 56075) / 52
                    }
                }
                else if buttonSelectPeriod00.titleLabel!.text! == "Fornightly"
                {
                    let taxAbleValue: Double = (income * 26 - deduction) /// 26
                    
                    if taxAbleValue >= 0 && taxAbleValue <= 37000
                    {
                        finalTax = taxAbleValue * 0.15 / 26
                    }
                    else if taxAbleValue >= 37001 && taxAbleValue <= 90000
                    {
                        finalTax = ((taxAbleValue - 37000) * 0.325 + 5550) / 26
                    }
                    else if taxAbleValue >= 90001 && taxAbleValue <= 180000
                    {
                        finalTax = ((taxAbleValue - 90000) * 0.37 + 22775) / 26
                    }
                    else if taxAbleValue >= 180001
                    {
                        finalTax = ((taxAbleValue - 180000) * 0.45 + 56075) / 26
                    }
                }
                else if buttonSelectPeriod00.titleLabel!.text! == "Monthly"
                {
                    let taxAbleValue: Double = (income * 12 - deduction) /// 82812
                    
                    if taxAbleValue >= 0 && taxAbleValue <= 37000
                    {
                        finalTax = taxAbleValue * 0.15 / 12
                    }
                    else if taxAbleValue >= 37001 && taxAbleValue <= 90000
                    {
                        finalTax = ((taxAbleValue - 37000) * 0.325 + 5550) / 12
                    }
                    else if taxAbleValue >= 90001 && taxAbleValue <= 180000
                    {
                        finalTax = ((taxAbleValue - 90000) * 0.37 + 22775) / 12
                    }
                    else if taxAbleValue >= 180001
                    {
                        finalTax = ((taxAbleValue - 180000) * 0.45 + 56075) / 12
                    }
                }
                else if buttonSelectPeriod00.titleLabel!.text! == "Yearly"
                {
                    let taxAbleValue: Double = income - deduction
                    
                    if taxAbleValue >= 0 && taxAbleValue <= 37000
                    {
                        finalTax = taxAbleValue * 0.15
                    }
                    else if taxAbleValue >= 37001 && taxAbleValue <= 90000
                    {
                        finalTax = (taxAbleValue - 37000) * 0.325 + 5550
                    }
                    else if taxAbleValue >= 90001 && taxAbleValue <= 180000
                    {
                        finalTax = ((taxAbleValue - 90000) * 0.37 + 22775)
                    }
                    else if taxAbleValue >= 180001
                    {
                        finalTax = ((taxAbleValue - 180000) * 0.45 + 56075)
                    }
                }
            }
                //M: user doesnt have TFN
                //M: finished!!!
            else if checkBoxClicked % 2 == 0
            {
                print("You unclicked checkBox1")
                deduction = 0
                let taxAbleValue: Double = income - deduction
                finalTax = taxAbleValue * 0.45
            }
        }
        else if buttonSelect00.titleLabel!.text! == "Children(under 18)"
        {
            print("You selected VISA4")
            
            if  checkBoxClicked % 2 != 0
            {
                print("You clicked checkBox1")
            }
            else if checkBoxClicked % 2 == 0
            {
                print("You unclicked checkBox1")
            }
        }
        
        
        
        
        
        
        
        
        
        labelResult.text = "$ " + String(finalTax)
        labelUnderLine.isHidden = false
    }
    
    

    
    
    
}
