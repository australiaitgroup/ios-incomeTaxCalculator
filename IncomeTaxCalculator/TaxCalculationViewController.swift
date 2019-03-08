//
//  TaxCalculationViewController.swift
//  IncomeTaxCalculator
//
//  Created by LIN LIU on 17/11/18.
//  Copyright © 2018 Zhiyu Ding. All rights reserved.



//TODO
//crashlytics
//testFlight
//language
//future branch

import UIKit

class TaxCalculationViewController: UIViewController {
    var mainView = MainView()
    var selectionView = SelectionView()
    private var model = CalculationModel()
    
    var income: Double = 0.00
    var deductions: Double = 0.00
    var finalTax: Double = 0.0
    var TFNButtonValue: Bool = false
    var medicareLevyButtonValue: Bool = false
    var healthCoverButtonValue: Bool = false
    
    
    
    
    override func loadView() {
        view = mainView
        view.addSubview(selectionView)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //M: default settings
        selectionView.financialYearValue.isUserInteractionEnabled = false
        
        selectionView.residentialStatusValue.isUserInteractionEnabled = false
        
        selectionView.payFrequencyValue.isUserInteractionEnabled = false
        
        model.setOperand(0.0)
        
        model.setSecondOperand(0.0)
        
        model.setThirdOperand(selectionView.residentialStatusDefaultButton.currentTitle!)
        
        model.setFourOperand(selectionView.payFrequencyDefaultButton.currentTitle!)
        
        model.setCheckbox1(false)
        
        model.setCheckbox2(false)
        
        model.setCheckbox3(false)
        
        
        //M:residentialStatus buttons
        for item in selectionView.residentialStatusButtons{
            if item.currentTitle != nil{
                item.isHidden = true
                item.addTarget(self, action: #selector(onClickButtonsGetResidentialStatus), for: .touchUpInside)
            }
        }
        selectionView.residentialStatusDefaultButton.addTarget(self, action: #selector(onClickResidentialStatusDefaultButton), for: .touchUpInside)
        
        
        //M:payfrequency buttons
        for item in selectionView.payFrequencyButtons{
            if item.currentTitle != nil{
                item.isHidden = true
                item.addTarget(self, action: #selector(onClickButtonsGetPayFrequency), for: .touchUpInside)
            }
        }
        selectionView.payFrequencyDefaultButton.addTarget(self, action: #selector(onClickPayFrequencyDefaultButton), for: .touchUpInside)
        
        
        selectionView.TFNButton.addTarget(self, action: #selector(onClickTFNButtons), for: .touchUpInside)
        selectionView.medicareLevyButton.addTarget(self, action: #selector(onClickMedicareLevyButtons), for: .touchUpInside)
        selectionView.healthCoverButton.addTarget(self, action: #selector(onClickHealthCoverButtons), for: .touchUpInside)
        
        
        
        //M: check income value in incomeValue label
        selectionView.incomeValue.addTarget(self, action: #selector(incomeValueDidChange), for: UIControl.Event.editingChanged)
        
        //M: check deductions value in incomeValue label
        selectionView.deductionsValue.addTarget(self, action: #selector(deductionasValueDidChange), for: UIControl.Event.editingChanged)
        
        //M: check the title of the residentialStatusDefault is changed or not.
        for item in selectionView.residentialStatusAllButtons{
            item.addTarget(self, action: #selector(residentialStatusDefaultValueDidChange), for: .touchUpInside)
        }
        
        //M: check the title of the payFrequencyDefault is changed or not.
        for item in selectionView.payFrequencyAllButtons{
            item.addTarget(self, action: #selector(payFrequencyDefaultValueDidChange), for: .touchUpInside)
        }
        
        
        //M: calculation
        selectionView.calculateButton.addTarget(self, action: #selector(onClickCalculateButton), for: .touchUpInside)
    }
    
    @objc func onClickCalculateButton(sender: UIButton){
        model.calculationEngine()
        print(model.finalTax)
        mainView.resultLabel.text = String(model.finalTax)
    }
    
    
    @objc func onClickResidentialStatusDefaultButton(sender: UIButton){
        if sender.currentTitle == selectionView.residentialStatusDefaultButton.currentTitle{
            for item in selectionView.residentialStatusButtons{
                item.isHidden = !item.isHidden
            }
            for item in selectionView.payFrequencyButtons{
                item.isHidden = true
            }
            selectionView.payFrequencyDefaultButton.isHidden = !selectionView.payFrequencyDefaultButton.isHidden
        }
        
    }
    
    @objc func onClickButtonsGetResidentialStatus(sender: UIButton){
        selectionView.residentialStatusDefaultButton.setTitle(sender.currentTitle, for: .normal)
        for item in selectionView.residentialStatusButtons{
            item.isHidden = !item.isHidden
        }
        for item in selectionView.payFrequencyButtons{
            item.isHidden = true
        }
        selectionView.payFrequencyDefaultButton.isHidden = !selectionView.payFrequencyDefaultButton.isHidden
    }
    
    @objc func onClickPayFrequencyDefaultButton(sender: UIButton){
        if sender.currentTitle == selectionView.payFrequencyDefaultButton.currentTitle{
            for item in selectionView.payFrequencyButtons{
                item.isHidden = !item.isHidden
            }
        }
    }
    
    @objc func onClickButtonsGetPayFrequency(sender: UIButton){
        selectionView.payFrequencyDefaultButton.setTitle(sender.currentTitle, for: .normal)
        for item in selectionView.payFrequencyButtons{
            item.isHidden = !item.isHidden
        }
    }
    
    @objc func  onClickTFNButtons(sender: UIButton){
        if sender.currentTitle  == StringValue.checkboxUncheckedTextString
        {
            sender.setTitle(StringValue.checkboxCheckedTextString, for: .normal)
            TFNButtonValue = true
            model.setCheckbox1(TFNButtonValue)
        }
        else{
            sender.setTitle(StringValue.checkboxUncheckedTextString, for: .normal)
            TFNButtonValue = false
            model.setCheckbox1(TFNButtonValue)
        }
    }
    
    @objc func onClickMedicareLevyButtons(sender: UIButton){
        if sender.currentTitle  == StringValue.checkboxUncheckedTextString
        {
            sender.setTitle(StringValue.checkboxCheckedTextString, for: .normal)
            medicareLevyButtonValue = true
            model.setCheckbox2(medicareLevyButtonValue)
        }
        else{
            sender.setTitle(StringValue.checkboxUncheckedTextString, for: .normal)
            medicareLevyButtonValue = false
            model.setCheckbox2(medicareLevyButtonValue)
        }
    }
    
    @objc func onClickHealthCoverButtons(sender: UIButton){
        if sender.currentTitle  == StringValue.checkboxUncheckedTextString
        {
            sender.setTitle(StringValue.checkboxCheckedTextString, for: .normal)
            healthCoverButtonValue = true
            model.setCheckbox3(healthCoverButtonValue)
        }
        else{
            sender.setTitle(StringValue.checkboxUncheckedTextString, for: .normal)
            healthCoverButtonValue = false
            model.setCheckbox3(healthCoverButtonValue)
        }
    }
    
    
    
    @objc func incomeValueDidChange(textField: UITextField) {
        if let rawIncomeValue: Double = Double(selectionView.incomeValue.text!){
            income = rawIncomeValue
            model.setOperand(income)
        }
        else if selectionView.incomeValue.text! == ""{
            income = 0.0
            model.setOperand(income)
        }
        else{
            if selectionView.incomeValue.text!.first == StringValue.dollerSign {
                if let rawIncomeValue: Double = Double(selectionView.incomeValue.text!.dropFirst()){
                    income = rawIncomeValue
                    model.setOperand(income)
                }else if selectionView.incomeValue.text!.dropFirst() == ""{
                    income = 0.0
                    model.setOperand(income)
                }
                else{
                    income = 0.0
                    model.setOperand(income)
                    selectionView.incomeValue.text = StringValue.incomeValueTextString
                    let alert = UIAlertController(title: "Warning", message: "Please input the number", preferredStyle: .alert)
                    alert.addAction (UIAlertAction(title: "OK", style: .default, handler: nil))
                    self.present(alert, animated: true, completion: nil)
                }
            }
            else{
                income = 0.0
                model.setOperand(income)
                selectionView.incomeValue.text = StringValue.incomeValueTextString
                let alert = UIAlertController(title: "Warning", message: "Please input the number", preferredStyle: .alert)
                alert.addAction (UIAlertAction(title: "OK", style: .default, handler: nil))
                self.present(alert, animated: true, completion: nil)
            }
        }
    }
    
    @objc func deductionasValueDidChange(textField: UITextField) {
        if let rawDeductionsValue: Double = Double(selectionView.deductionsValue.text!){
            deductions = rawDeductionsValue
            model.setSecondOperand(deductions)
        }
        else if selectionView.deductionsValue.text! == ""{
            deductions = 0.0
            model.setSecondOperand(deductions)
        }
        else{
            if selectionView.deductionsValue.text!.first == "$"{
                if let rawDeductionsValue: Double = Double(selectionView.deductionsValue.text!.dropFirst()){
                    deductions = rawDeductionsValue
                    model.setSecondOperand(deductions)
                }else if selectionView.deductionsValue.text!.dropFirst() == ""{
                    deductions = 0.0
                    model.setSecondOperand(deductions)
                }
                else{
                    deductions = 0.0
                    model.setSecondOperand(deductions)
                    selectionView.deductionsValue.text = StringValue.deductionsValueTextString
                    let alert = UIAlertController(title: "Warning", message: "Please input the number", preferredStyle: .alert)
                    alert.addAction (UIAlertAction(title: "OK", style: .default, handler: nil))
                    self.present(alert, animated: true, completion: nil)
                }
            }
            else{
                deductions = 0.0
                model.setSecondOperand(deductions)
                selectionView.deductionsValue.text = StringValue.deductionsValueTextString
                let alert = UIAlertController(title: "Warning", message: "Please input the number", preferredStyle: .alert)
                alert.addAction (UIAlertAction(title: "OK", style: .default, handler: nil))
                self.present(alert, animated: true, completion: nil)
            }
        }
    }
    
    
    @objc func residentialStatusDefaultValueDidChange(sender: UIButton){
        model.setThirdOperand(selectionView.residentialStatusDefaultButton.currentTitle!)
    }
    
    @objc func payFrequencyDefaultValueDidChange(sender: UIButton){
        model.setFourOperand(selectionView.payFrequencyDefaultButton.currentTitle!)
    }
    
}
