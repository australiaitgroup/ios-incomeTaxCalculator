//
//  SelectionView.swift
//  Utility_IncomeTaxCalculator
//
//  Created by LIN LIU on 27/2/19.
//  Copyright © 2019 LinLiu. All rights reserved.
//

import UIKit

class SelectionView: UIView {

    var incomeLabel = UILabel()
    var financialYearLabel = UILabel()
    var deductionsLabel = UILabel()
    var residentialStatusLabel = UILabel()
    var payFrequencyLabel = UILabel()
    var incomeValue = UITextField()
    var financialYearValue = UITextField()
    var deductionsValue = UITextField()
    var residentialStatusValue = UITextField()
    var payFrequencyValue = UITextField()
    
    var TFNLabel = UILabel()
    var medicareLevyLabel = UILabel()
    var healthCoverLabel = UILabel()
    
    var TFNButton = UIButton()
    var medicareLevyButton = UIButton()
    var healthCoverButton = UIButton()
    
    var residentialStatusButtons: [UIButton] = []
    var payFrequencyButtons: [UIButton] = []
    var checkboxButtons: [UIButton] = []
    
    var residentialStatusAllButtons: [UIButton] = []
    var payFrequencyAllButtons: [UIButton] = []
    
    var calculateButton = UIButton()
    
    var residentialStatusDefaultButton = UIButton()
    var residentialStatusForeignButton = UIButton()
    var residentialStatusHolidayButton = UIButton()
    var residentialStatusAustralianButton = UIButton()
    
    var payFrequencyDefaultButton = UIButton()
    var payFrequencyWeeklyButton = UIButton()
    var payFrequencyFornightlyButton = UIButton()
    var payFrequencyMonthlyButton = UIButton()
    var payFrequencyYearlyButton = UIButton()
    
    var gradientLayer1 = GradientLayers()
    var gradientLayer2 = GradientLayers()
    var gradientLayer3 = GradientLayers()
    var gradientLayer4 = GradientLayers()
    var gradientLayer5 = GradientLayers()
    var gradientLayer6 = GradientLayers()
    var gradientLayer7 = GradientLayers()
    var gradientLayer8 = GradientLayers()
    var gradientLayer9 = GradientLayers()
    var gradientLayer10 = GradientLayers()
    
    let calculateButtonImage: UIImage? = UIImage (named: "calculateButton")
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)

        self.setViewFrameSize()
        
        self.defineBackgroundColor()
        
        self.addIncomeLabel()
        
        self.addFinancialYearLabel()
        
        self.addDeductionsLabel()
        
        self.addResidentialStatusLabel()
        
        self.addPayFrequencyLabel()
        
        self.addTFNLabel()
        
        self.addMedicareLevyLabel()
        
        self.addHealthCoverLabel()
        
        self.addIncomeValue()
        
        self.addFinancialYearValue()
        
        self.addDeductionsValue()
        
        self.addResidentialStatusValue()
        
        self.addPayFrequencyValue()
        
        self.addTFNButton()
        
        self.addMedicareLevyButton()
        
        self.addHealthCoverButton()
        
        self.addCalculateButton()
        
        self.addResidentialStatusDefaultButton()
        
        self.addResidentialStatusForeignButton()
        
        self.addResidentialStatusHolidayButton()
        
        self.addResidentialStatusAustralianButton()
        
        self.addPayFrequencyDefaultButton()
        
        self.addPayFrequencyWeeklyButton()
        
        self.addPayFrequencyFornightlyButton()
        
        self.addPayFrequencyMonthlyButton()
        
        self.addPayFrequencyYearlyButton()
        
        self.groupButtons()
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func groupButtons(){
        residentialStatusButtons = [residentialStatusForeignButton,residentialStatusHolidayButton,residentialStatusAustralianButton]

        payFrequencyButtons = [payFrequencyWeeklyButton,payFrequencyFornightlyButton,payFrequencyMonthlyButton,payFrequencyYearlyButton]
        
        checkboxButtons = [TFNButton, medicareLevyButton, healthCoverButton]
        
        residentialStatusAllButtons = [residentialStatusDefaultButton, residentialStatusForeignButton,residentialStatusHolidayButton,residentialStatusAustralianButton]
        
        payFrequencyAllButtons = [payFrequencyDefaultButton, payFrequencyWeeklyButton,payFrequencyFornightlyButton,payFrequencyMonthlyButton,payFrequencyYearlyButton]
    }
    
    func setViewFrameSize(){
        self.frame = CGRect(x: SizeConfig.selectionViewX, y: SizeConfig.selectionViewY, width:  SizeConfig.selectionViewWidth, height: SizeConfig.selectionViewHeight)
    }
    
    
    func defineBackgroundColor(){
        self.backgroundColor = ColorConfig.selectionViewBackgroundColor
    }
    
    
    func addIncomeLabel(){
        incomeLabel = Labels.init(x: SizeConfig.incomeLabelX,
                                  y: SizeConfig.incomeLabelY,
                                  width: SizeConfig.incomeLabelWidth,
                                  height: SizeConfig.incomeLabelHeight,
                                  cornerRadius: 9,
                                  backgroundColor: ColorConfig.incomeLabelBackgroundColor,
                                  textAlignment: NSTextAlignment.left,
                                  textColor: ColorConfig.incomeLabelTextColor,
                                  fitWidth: true,
                                  font: FontConfig.incomeLabelTextFont,
                                  text: StringValue.incomeLabelTextString,
                                  manager: self)
    
    }
    
    func addFinancialYearLabel(){
        financialYearLabel = Labels.init(x: SizeConfig.financialYearLabelX,
                                  y: SizeConfig.financialYearLabelY,
                                  width: SizeConfig.financialYearLabelWidth,
                                  height: SizeConfig.financialYearLabelHeight,
                                  cornerRadius: 9,
                                  backgroundColor: ColorConfig.financialYearLabelBackgroundColor,
                                  textAlignment: NSTextAlignment.left,
                                  textColor: ColorConfig.financialYearLabelTextColor,
                                  fitWidth: true,
                                  font: FontConfig.financialYearLabelTextFont,
                                  text: StringValue.financialYearLabelTextString,
                                  manager: self)
    }
    
    func addDeductionsLabel(){
        deductionsLabel = Labels.init(x: SizeConfig.deductionsLabelX,
                                  y: SizeConfig.deductionsLabelY,
                                  width: SizeConfig.deductionsLabelWidth,
                                  height: SizeConfig.deductionsLabelHeight,
                                  cornerRadius: 9,
                                  backgroundColor: ColorConfig.deductionsLabelBackgroundColor,
                                  textAlignment: NSTextAlignment.left,
                                  textColor: ColorConfig.deductionsLabelTextColor,
                                  fitWidth: true,
                                  font: FontConfig.deductionsLabelTextFont,
                                  text: StringValue.deductionsLabelTextString,
                                  manager: self)
    }
    
    func addResidentialStatusLabel(){
        residentialStatusLabel = Labels.init(x: SizeConfig.residentialStatusLabelX,
                                  y: SizeConfig.residentialStatusLabelY,
                                  width: SizeConfig.residentialStatusLabelWidth,
                                  height: SizeConfig.residentialStatusLabelHeight,
                                  cornerRadius: 9,
                                  backgroundColor: ColorConfig.residentialStatusLabelBackgroundColor,
                                  textAlignment: NSTextAlignment.left,
                                  textColor: ColorConfig.residentialStatusLabelTextColor,
                                  fitWidth: true,
                                  font: FontConfig.residentialStatusLabelTextFont,
                                  text: StringValue.residentialStatusLabelTextString,
                                  manager: self)
    }
    
    func addPayFrequencyLabel(){
        payFrequencyLabel = Labels.init(x: SizeConfig.payFrequencyLabelX,
                                  y: SizeConfig.payFrequencyLabelY,
                                  width: SizeConfig.payFrequencyLabelWidth,
                                  height: SizeConfig.payFrequencyLabelHeight,
                                  cornerRadius: 9,
                                  backgroundColor: ColorConfig.payFrequencyLabelBackgroundColor,
                                  textAlignment: NSTextAlignment.left,
                                  textColor: ColorConfig.payFrequencyLabelTextColor,
                                  fitWidth: true,
                                  font: FontConfig.payFrequencyLabelTextFont,
                                  text: StringValue.payFrequencyLabelTextString,
                                  manager: self)
    }

    func addTFNLabel(){
        TFNLabel = Labels.init(x: SizeConfig.TFNLabelX,
                                  y: SizeConfig.TFNLabelY,
                                  width: SizeConfig.TFNLabelWidth,
                                  height: SizeConfig.TFNLabelHeight,
                                  cornerRadius: 9,
                                  backgroundColor: ColorConfig.TFNLabelBackgroundColor,
                                  textAlignment: NSTextAlignment.left,
                                  textColor: ColorConfig.TFNLabelTextColor,
                                  fitWidth: true,
                                  font: FontConfig.TFNLabelTextFont,
                                  text: StringValue.TFNLabelTextString,
                                  manager: self)
    }
    
    func addMedicareLevyLabel(){
        medicareLevyLabel = Labels.init(x: SizeConfig.medicareLevyLabelX,
                                  y: SizeConfig.medicareLevyLabelY,
                                  width: SizeConfig.medicareLevyLabelWidth,
                                  height: SizeConfig.medicareLevyLabelHeight,
                                  cornerRadius: 9,
                                  backgroundColor: ColorConfig.medicareLevyLabelBackgroundColor,
                                  textAlignment: NSTextAlignment.left,
                                  textColor: ColorConfig.medicareLevyLabelTextColor,
                                  fitWidth: true,
                                  font: FontConfig.medicareLevyLabelTextFont,
                                  text: StringValue.medicareLevyLabelTextString,
                                  manager: self)
    }
    
    func addHealthCoverLabel(){
        healthCoverLabel = Labels.init(x: SizeConfig.healthCoverLabelX,
                                  y: SizeConfig.healthCoverLabelY,
                                  width: SizeConfig.healthCoverLabelWidth,
                                  height: SizeConfig.healthCoverLabelHeight,
                                  cornerRadius: 9,
                                  backgroundColor: ColorConfig.healthCoverLabelBackgroundColor,
                                  textAlignment: NSTextAlignment.left,
                                  textColor: ColorConfig.healthCoverLabelTextColor,
                                  fitWidth: true,
                                  font: FontConfig.healthCoverLabelTextFont,
                                  text: StringValue.healthCoverLabelTextString,
                                  manager: self)
    }

    func addIncomeValue(){
        incomeValue = TextFields.init(x: SizeConfig.incomeValueX,
                                       y: SizeConfig.incomeValueY,
                                       width: SizeConfig.incomeValueWidth,
                                       height: SizeConfig.incomeValueHeight,
                                       cornerRadius: 9,
                                       backgroundColor: ColorConfig.incomeValueBackgroundColor,
                                       textAlignment: NSTextAlignment.center,
                                       textColor: ColorConfig.incomeValueTextColor,
                                       fitWidth: true,
                                       font: FontConfig.incomeValueTextFont,
                                       text: StringValue.incomeValueTextString,
                                       manager: self)
        
        
        gradientLayer1.setLayerProps(parent: self.bounds, leftColor: ColorConfig.gradientLeftColor.cgColor, rightColor: ColorConfig.gradientRightColor.cgColor, leftLocation: 0.0, rightLocation: 1.0, leftStartPoint: 0, rightStartPoint: 0, leftEndPoint: 1, rightEndPoint: 0)
        let shape = CAShapeLayer()
        shape.lineWidth = 4
        shape.path = UIBezierPath(roundedRect: self.incomeValue.bounds, cornerRadius: self.incomeValue.layer.cornerRadius).cgPath
        shape.strokeColor = UIColor.black.cgColor
        shape.fillColor = UIColor.clear.cgColor
        
        gradientLayer1.mask = shape
        incomeValue.layer.addSublayer(gradientLayer1)
        
 
    }
    
    func addFinancialYearValue(){
        financialYearValue = TextFields.init(x: SizeConfig.financialYearValueX,
                                              y: SizeConfig.financialYearValueY,
                                              width: SizeConfig.financialYearValueWidth,
                                              height: SizeConfig.financialYearValueHeight,
                                              cornerRadius: 9,
                                              backgroundColor: ColorConfig.financialYearValueBackgroundColor,
                                              textAlignment: NSTextAlignment.center,
                                              textColor: ColorConfig.financialYearValueTextColor,
                                              fitWidth: true,
                                              font: FontConfig.financialYearValueTextFont,
                                              text: StringValue.financialYearValueTextString,
                                              manager: self)
        
        gradientLayer2.setLayerProps(parent: self.bounds, leftColor: ColorConfig.gradientLeftColor.cgColor, rightColor: ColorConfig.gradientRightColor.cgColor, leftLocation: 0.0, rightLocation: 1.0, leftStartPoint: 0, rightStartPoint: 0, leftEndPoint: 1, rightEndPoint: 0)
        let shape = CAShapeLayer()
        shape.lineWidth = 4
        shape.path = UIBezierPath(roundedRect: self.financialYearValue.bounds, cornerRadius: self.financialYearValue.layer.cornerRadius).cgPath
        shape.strokeColor = UIColor.black.cgColor
        shape.fillColor = UIColor.clear.cgColor
        
        gradientLayer2.mask = shape
        financialYearValue.layer.addSublayer(gradientLayer2)
    }
    
    func addDeductionsValue(){
        deductionsValue = TextFields.init(x: SizeConfig.deductionsValueX,
                                           y: SizeConfig.deductionsValueY,
                                           width: SizeConfig.deductionsValueWidth,
                                           height: SizeConfig.deductionsValueHeight,
                                           cornerRadius: 9,
                                           backgroundColor: ColorConfig.deductionsValueBackgroundColor,
                                           textAlignment: NSTextAlignment.center,
                                           textColor: ColorConfig.deductionsValueTextColor,
                                           fitWidth: true,
                                           font: FontConfig.deductionsValueTextFont,
                                           text: StringValue.deductionsValueTextString,
                                           manager: self)
        
        gradientLayer3.setLayerProps(parent: self.bounds, leftColor: ColorConfig.gradientLeftColor.cgColor, rightColor: ColorConfig.gradientRightColor.cgColor, leftLocation: 0.0, rightLocation: 1.0, leftStartPoint: 0, rightStartPoint: 0, leftEndPoint: 1, rightEndPoint: 0)
        let shape = CAShapeLayer()
        shape.lineWidth = 4
        shape.path = UIBezierPath(roundedRect: self.deductionsValue.bounds, cornerRadius: self.deductionsValue.layer.cornerRadius).cgPath
        shape.strokeColor = UIColor.black.cgColor
        shape.fillColor = UIColor.clear.cgColor
        
        gradientLayer3.mask = shape
        deductionsValue.layer.addSublayer(gradientLayer3)
    }
    
    func addResidentialStatusValue(){
        residentialStatusValue = TextFields.init(x: SizeConfig.residentialStatusValueX,
                                          y: SizeConfig.residentialStatusValueY,
                                          width: SizeConfig.residentialStatusValueWidth,
                                          height: SizeConfig.residentialStatusValueHeight,
                                          cornerRadius: 9,
                                          backgroundColor: ColorConfig.residentialStatusValueBackgroundColor,
                                          textAlignment: NSTextAlignment.center,
                                          textColor: ColorConfig.residentialStatusValueTextColor,
                                          fitWidth: true,
                                          font: FontConfig.residentialStatusValueTextFont,
                                          text: StringValue.residentialStatusValueTextString,
                                          manager: self)
        residentialStatusValue.textColor?.setFill()
        
        gradientLayer4.setLayerProps(parent: self.bounds, leftColor: ColorConfig.gradientLeftColor.cgColor, rightColor: ColorConfig.gradientRightColor.cgColor, leftLocation: 0.0, rightLocation: 1.0, leftStartPoint: 0, rightStartPoint: 0, leftEndPoint: 1, rightEndPoint: 0)
        let shape = CAShapeLayer()
        shape.lineWidth = 4
        shape.path = UIBezierPath(roundedRect: self.residentialStatusValue.bounds, cornerRadius: self.residentialStatusValue.layer.cornerRadius).cgPath
        shape.strokeColor = UIColor.black.cgColor
        shape.fillColor = UIColor.clear.cgColor
        
        gradientLayer4.mask = shape
        residentialStatusValue.layer.addSublayer(gradientLayer4)
    }
    
    func addPayFrequencyValue(){
        payFrequencyValue = TextFields.init(x: SizeConfig.payFrequencyValueX,
                                          y: SizeConfig.payFrequencyValueY,
                                          width: SizeConfig.payFrequencyValueWidth,
                                          height: SizeConfig.payFrequencyValueHeight,
                                          cornerRadius: 9,
                                          backgroundColor: ColorConfig.payFrequencyValueBackgroundColor,
                                          textAlignment: NSTextAlignment.center,
                                          textColor: ColorConfig.payFrequencyValueTextColor,
                                          fitWidth: true,
                                          font: FontConfig.payFrequencyValueTextFont,
                                          text: StringValue.payFrequencyValueTextString,
                                          manager: self)
        
        gradientLayer5.setLayerProps(parent: self.bounds, leftColor: ColorConfig.gradientLeftColor.cgColor, rightColor: ColorConfig.gradientRightColor.cgColor, leftLocation: 0.0, rightLocation: 1.0, leftStartPoint: 0, rightStartPoint: 0, leftEndPoint: 1, rightEndPoint: 0)
        let shape = CAShapeLayer()
        shape.lineWidth = 4
        shape.path = UIBezierPath(roundedRect: self.payFrequencyValue.bounds, cornerRadius: self.payFrequencyValue.layer.cornerRadius).cgPath
        shape.strokeColor = UIColor.black.cgColor
        shape.fillColor = UIColor.clear.cgColor
        
        gradientLayer5.mask = shape
        payFrequencyValue.layer.addSublayer(gradientLayer5)
    }
    
    func addTFNButton(){
        TFNButton = Buttons.init(x: SizeConfig.TFNButtonX,
                                 y: SizeConfig.TFNButtonY,
                                 width: SizeConfig.TFNButtonWidth,
                                 height: SizeConfig.TFNButtonHeight,
                                 title: StringValue.TFNButtonTextString,
                                 fontSize: FontConfig.TFNButtonTextFont,
                                 cornerRadius: 3,
                                 backgroundColor: ColorConfig.TFNButtonBackgroundColor,
                                 titleColor: ColorConfig.TFNButtonTextColor,
                                 manager: self)
        
        gradientLayer6.setLayerProps(parent: self.TFNButton.bounds, leftColor: ColorConfig.gradientLeftColor.cgColor, rightColor: ColorConfig.gradientRightColor.cgColor, leftLocation: 0.0, rightLocation: 1.5, leftStartPoint: 0, rightStartPoint: 0, leftEndPoint: 1, rightEndPoint: 0)
        
    
        let shape = CAShapeLayer()
        shape.lineWidth = 3
        shape.path = UIBezierPath(roundedRect: self.TFNButton.bounds, cornerRadius: self.TFNButton.layer.cornerRadius).cgPath
        shape.strokeColor = UIColor.black.cgColor
        shape.fillColor = UIColor.clear.cgColor
        
        gradientLayer6.mask = shape
        TFNButton.layer.addSublayer(gradientLayer6)
    }
    
    func addMedicareLevyButton(){
        medicareLevyButton = Buttons.init(x: SizeConfig.medicareLevyButtonX,
                                 y: SizeConfig.medicareLevyButtonY,
                                 width: SizeConfig.medicareLevyButtonWidth,
                                 height: SizeConfig.medicareLevyButtonHeight,
                                 title: StringValue.medicareLevyButtonTextString,
                                 fontSize: FontConfig.medicareLevyButtonTextFont,
                                 cornerRadius: 3,
                                 backgroundColor: ColorConfig.medicareLevyButtonBackgroundColor,
                                 titleColor: ColorConfig.medicareLevyButtonTextColor,
                                 manager: self)
        
        gradientLayer7.setLayerProps(parent: self.TFNButton.bounds, leftColor: ColorConfig.gradientLeftColor.cgColor, rightColor: ColorConfig.gradientRightColor.cgColor, leftLocation: 0.0, rightLocation: 1.5, leftStartPoint: 0, rightStartPoint: 0, leftEndPoint: 1, rightEndPoint: 0)
        
        
        let shape = CAShapeLayer()
        shape.lineWidth = 3
        shape.path = UIBezierPath(roundedRect: self.medicareLevyButton.bounds, cornerRadius: self.medicareLevyButton.layer.cornerRadius).cgPath
        shape.strokeColor = UIColor.black.cgColor
        shape.fillColor = UIColor.clear.cgColor
        
        gradientLayer7.mask = shape
        medicareLevyButton.layer.addSublayer(gradientLayer7)
    }
    
    func addHealthCoverButton(){
        healthCoverButton = Buttons.init(x: SizeConfig.healthCoverButtonX,
                                          y: SizeConfig.healthCoverButtonY,
                                          width: SizeConfig.healthCoverButtonWidth,
                                          height: SizeConfig.healthCoverButtonHeight,
                                          title: StringValue.healthCoverButtonTextString,
                                          fontSize: FontConfig.healthCoverButtonTextFont,
                                          cornerRadius: 3,
                                          backgroundColor: ColorConfig.healthCoverButtonBackgroundColor,
                                          titleColor: ColorConfig.healthCoverButtonTextColor,
                                          manager: self)
        
        gradientLayer8.setLayerProps(parent: self.healthCoverButton.bounds, leftColor: ColorConfig.gradientLeftColor.cgColor, rightColor: ColorConfig.gradientRightColor.cgColor, leftLocation: 0.0, rightLocation: 1.5, leftStartPoint: 0, rightStartPoint: 0, leftEndPoint: 1, rightEndPoint: 0)
        
        
        let shape = CAShapeLayer()
        shape.lineWidth = 3
        shape.path = UIBezierPath(roundedRect: self.healthCoverButton.bounds, cornerRadius: self.healthCoverButton.layer.cornerRadius).cgPath
        shape.strokeColor = UIColor.black.cgColor
        shape.fillColor = UIColor.clear.cgColor
        
        gradientLayer8.mask = shape
        healthCoverButton.layer.addSublayer(gradientLayer8)
    }
    
    func addCalculateButton(){
        calculateButton = Buttons.init(x: SizeConfig.calculateButtonX,
                                   y: SizeConfig.calculateButtonY,
                                   width: SizeConfig.calculateButtonWidth,
                                   height: SizeConfig.calculateButtonHeight,
                                   title: StringValue.calculateButtonTextString,
                                   fontSize: FontConfig.calculateButtonTextFont,
                                   cornerRadius: 4,
                                   backgroundColor: ColorConfig.calculateButtonBackgroundColor,
                                   titleColor: ColorConfig.calculateButtonTextColor,
                                   manager: self)
        
        calculateButton.setBackgroundImage(calculateButtonImage, for: .normal)
    }
    
    func addResidentialStatusDefaultButton(){
        residentialStatusDefaultButton = Buttons.init(x: SizeConfig.residentialStatusDefaultButtonX,
                                       y: SizeConfig.residentialStatusDefaultButtonY,
                                       width: SizeConfig.residentialStatusDefaultButtonWidth,
                                       height: SizeConfig.residentialStatusDefaultButtonHeight,
                                       title: StringValue.residentialStatusDefaultButtonTextString,
                                       fontSize: FontConfig.residentialStatusDefaultButtonTextFont,
                                       cornerRadius: 4,
                                       backgroundColor: ColorConfig.residentialStatusDefaultButtonBackgroundColor,
                                       titleColor: ColorConfig.residentialStatusDefaultButtonTextColor,
                                       manager: self)
    }
    
    func addResidentialStatusForeignButton(){
        residentialStatusForeignButton = Buttons.init(x: SizeConfig.residentialStatusForeignButtonX,
                                                      y: SizeConfig.residentialStatusForeignButtonY,
                                                      width: SizeConfig.residentialStatusForeignButtonWidth,
                                                      height: SizeConfig.residentialStatusForeignButtonHeight,
                                                      title: StringValue.residentialStatusForeignButtonTextString,
                                                      fontSize: FontConfig.residentialStatusForeignButtonTextFont,
                                                      cornerRadius: 4,
                                                      backgroundColor: ColorConfig.residentialStatusForeignButtonBackgroundColor,
                                                      titleColor: ColorConfig.residentialStatusForeignButtonTextColor,
                                                      manager: self)
    }

    
    func addResidentialStatusHolidayButton(){
        residentialStatusHolidayButton = Buttons.init(x: SizeConfig.residentialStatusHolidayButtonX,
                                                      y: SizeConfig.residentialStatusHolidayButtonY,
                                                      width: SizeConfig.residentialStatusHolidayButtonWidth,
                                                      height: SizeConfig.residentialStatusHolidayButtonHeight,
                                                      title: StringValue.residentialStatusHolidayButtonTextString,
                                                      fontSize: FontConfig.residentialStatusHolidayButtonTextFont,
                                                      cornerRadius: 4,
                                                      backgroundColor: ColorConfig.residentialStatusHolidayButtonBackgroundColor,
                                                      titleColor: ColorConfig.residentialStatusHolidayButtonTextColor,
                                                      manager: self)
    }
    
    func addResidentialStatusAustralianButton(){
        residentialStatusAustralianButton = Buttons.init(x: SizeConfig.residentialStatusAustralianButtonX,
                                                      y: SizeConfig.residentialStatusAustralianButtonY,
                                                      width: SizeConfig.residentialStatusAustralianButtonWidth,
                                                      height: SizeConfig.residentialStatusAustralianButtonHeight,
                                                      title: StringValue.residentialStatusAustralianButtonTextString,
                                                      fontSize: FontConfig.residentialStatusAustralianButtonTextFont,
                                                      cornerRadius: 4,
                                                      backgroundColor: ColorConfig.residentialStatusAustralianButtonBackgroundColor,
                                                      titleColor: ColorConfig.residentialStatusAustralianButtonTextColor,
                                                      manager: self)
    }
    
    
    func addPayFrequencyDefaultButton(){
       payFrequencyDefaultButton = Buttons.init(x: SizeConfig.payFrequencyDefaultButtonX,
                                                      y: SizeConfig.payFrequencyDefaultButtonY,
                                                      width: SizeConfig.payFrequencyDefaultButtonWidth,
                                                      height: SizeConfig.payFrequencyDefaultButtonHeight,
                                                      title: StringValue.payFrequencyDefaultButtonTextString,
                                                      fontSize: FontConfig.payFrequencyDefaultButtonTextFont,
                                                      cornerRadius: 4,
                                                      backgroundColor: ColorConfig.payFrequencyDefaultButtonBackgroundColor,
                                                      titleColor: ColorConfig.payFrequencyDefaultButtonTextColor,
                                                      manager: self)
    }
    
    func addPayFrequencyWeeklyButton(){
        payFrequencyWeeklyButton = Buttons.init(x: SizeConfig.payFrequencyWeeklyButtonX,
                                                y: SizeConfig.payFrequencyWeeklyButtonY,
                                                width: SizeConfig.payFrequencyWeeklyButtonWidth,
                                                height: SizeConfig.payFrequencyWeeklyButtonHeight,
                                                title: StringValue.payFrequencyWeeklyButtonTextString,
                                                fontSize: FontConfig.payFrequencyWeeklyButtonTextFont,
                                                cornerRadius: 4,
                                                backgroundColor: ColorConfig.payFrequencyWeeklyButtonBackgroundColor,
                                                titleColor: ColorConfig.payFrequencyWeeklyButtonTextColor,
                                                manager: self)
    }
    
    func addPayFrequencyFornightlyButton(){
        payFrequencyFornightlyButton = Buttons.init(x: SizeConfig.payFrequencyFornightlyButtonX,
                                                y: SizeConfig.payFrequencyFornightlyButtonY,
                                                width: SizeConfig.payFrequencyFornightlyButtonWidth,
                                                height: SizeConfig.payFrequencyFornightlyButtonHeight,
                                                title: StringValue.payFrequencyFornightlyButtonTextString,
                                                fontSize: FontConfig.payFrequencyFornightlyButtonTextFont,
                                                cornerRadius: 4,
                                                backgroundColor: ColorConfig.payFrequencyFornightlyButtonBackgroundColor,
                                                titleColor: ColorConfig.payFrequencyFornightlyButtonTextColor,
                                                manager: self)
    }
    
    func addPayFrequencyMonthlyButton(){
        payFrequencyMonthlyButton = Buttons.init(x: SizeConfig.payFrequencyMonthlyButtonX,
                                                y: SizeConfig.payFrequencyMonthlyButtonY,
                                                width: SizeConfig.payFrequencyMonthlyButtonWidth,
                                                height: SizeConfig.payFrequencyMonthlyButtonHeight,
                                                title: StringValue.payFrequencyMonthlyButtonTextString,
                                                fontSize: FontConfig.payFrequencyMonthlyButtonTextFont,
                                                cornerRadius: 4,
                                                backgroundColor: ColorConfig.payFrequencyMonthlyButtonBackgroundColor,
                                                titleColor: ColorConfig.payFrequencyMonthlyButtonTextColor,
                                                manager: self)
    }
    
    func addPayFrequencyYearlyButton(){
        payFrequencyYearlyButton = Buttons.init(x: SizeConfig.payFrequencyYearlyButtonX,
                                                y: SizeConfig.payFrequencyYearlyButtonY,
                                                width: SizeConfig.payFrequencyYearlyButtonWidth,
                                                height: SizeConfig.payFrequencyYearlyButtonHeight,
                                                title: StringValue.payFrequencyYearlyButtonTextString,
                                                fontSize: FontConfig.payFrequencyYearlyButtonTextFont,
                                                cornerRadius: 4,
                                                backgroundColor: ColorConfig.payFrequencyYearlyButtonBackgroundColor,
                                                titleColor: ColorConfig.payFrequencyYearlyButtonTextColor,
                                                manager: self)
    }
}
