//
//  SizeConfig.swift
//  Utility_IncomeTaxCalculator
//
//  Created by LIN LIU on 27/2/19.
//  Copyright © 2019 LinLiu. All rights reserved.
//

import UIKit

struct SizeConfig {
    static let mainWidth = UIScreen.main.bounds.size.width
    static let mainHeight = UIScreen.main.bounds.size.height
   
    //M: mainView elements
    static let mainViewX: CGFloat = 0
    static let mainViewY: CGFloat = 0
    static let mainViewWidth = mainWidth
    static let mainViewHeight = mainWidth

    static let resultLabelX = mainWidth / 10 * 0.5
    static let resultLabelY = mainHeight / 10 * 1.2
    static let resultLabelHeight = UIScreen.main.bounds.size.height / 10
    static let resultLabelWidth = UIScreen.main.bounds.size.width  / 10 * 9
    
    static let hintLabelX = mainWidth / 10 * 0.5
    static let hintLabelY = mainHeight / 10 * 1.75
    static let hintLabelHeight = UIScreen.main.bounds.size.height / 10 * 2.3 / 3.5
    static let hintLabelWidth = UIScreen.main.bounds.size.width / 10 * 8.5
    
    //M: selectionView elements
    static let selectionViewX: CGFloat = 0
    static let selectionViewY: CGFloat = mainHeight / 10 * 2.5
    static let selectionViewWidth = UIScreen.main.bounds.size.width
    static let selectionViewHeight = UIScreen.main.bounds.size.height
    
    static let incomeLabelX = mainWidth / 10 * 0.5
    static let incomeLabelY = mainHeight / 10 * 0.2
    static let incomeLabelHeight = UIScreen.main.bounds.size.height / 10 * 0.4
    static let incomeLabelWidth = UIScreen.main.bounds.size.width  / 10 * 2.8
    
    static let financialYearLabelX = mainWidth / 10 * 0.5
    static let financialYearLabelY = mainHeight / 10 * 0.8
    static let financialYearLabelHeight = UIScreen.main.bounds.size.height / 10 * 0.4
    static let financialYearLabelWidth = UIScreen.main.bounds.size.width  / 10 * 2.8
    
    static let deductionsLabelX = mainWidth / 10 * 0.5
    static let deductionsLabelY = mainHeight / 10 * 1.4
    static let deductionsLabelHeight = UIScreen.main.bounds.size.height / 10 * 0.4
    static let deductionsLabelWidth = UIScreen.main.bounds.size.width  / 10 * 2.8
    
    static let residentialStatusLabelX = mainWidth / 10 * 0.5
    static let residentialStatusLabelY = mainHeight / 10 * 2
    static let residentialStatusLabelHeight = UIScreen.main.bounds.size.height / 10 * 0.4
    static let residentialStatusLabelWidth = UIScreen.main.bounds.size.width  / 10 * 3.1
    
    static let payFrequencyLabelX = mainWidth / 10 * 0.5
    static let payFrequencyLabelY = mainHeight / 10 * 2.6
    static let payFrequencyLabelHeight = UIScreen.main.bounds.size.height / 10 * 0.4
    static let payFrequencyLabelWidth = UIScreen.main.bounds.size.width  / 10 * 2.8
    
    static let incomeValueX = mainWidth / 10 * 3.71
    static let incomeValueY = mainHeight / 10 * 0.15
    static let incomeValueHeight = UIScreen.main.bounds.size.height / 10 * 0.5
    static let incomeValueWidth = UIScreen.main.bounds.size.width  / 10 * 5.8
    
    static let financialYearValueX = mainWidth / 10 * 3.71
    static let financialYearValueY = mainHeight / 10 * 0.75
    static let financialYearValueHeight = UIScreen.main.bounds.size.height / 10 * 0.5
    static let financialYearValueWidth = UIScreen.main.bounds.size.width  / 10 * 5.8
    
    static let deductionsValueX = mainWidth / 10 * 3.71
    static let deductionsValueY = mainHeight / 10 * 1.35
    static let deductionsValueHeight = UIScreen.main.bounds.size.height / 10 * 0.5
    static let deductionsValueWidth = UIScreen.main.bounds.size.width  / 10 * 5.8
    
    static let residentialStatusValueX = mainWidth / 10 * 3.71
    static let residentialStatusValueY = mainHeight / 10 * 1.95
    static let residentialStatusValueHeight = UIScreen.main.bounds.size.height / 10 * 0.5
    static let residentialStatusValueWidth = UIScreen.main.bounds.size.width  / 10 * 5.8
    
    static let payFrequencyValueX = mainWidth / 10 * 3.71
    static let payFrequencyValueY = mainHeight / 10 * 2.55
    static let payFrequencyValueHeight = UIScreen.main.bounds.size.height / 10 * 0.5
    static let payFrequencyValueWidth = UIScreen.main.bounds.size.width  / 10 * 5.8
    
    static let TFNLabelX = mainWidth / 10 * 3
    static let TFNLabelY = mainHeight / 10 * 3.5
    static let TFNLabelHeight = UIScreen.main.bounds.size.height / 10 * 0.5
    static let TFNLabelWidth = UIScreen.main.bounds.size.width  / 10 * 5.8
    
    static let medicareLevyLabelX = mainWidth / 10 * 3
    static let medicareLevyLabelY = mainHeight / 10 * 4.1
    static let medicareLevyLabelHeight = UIScreen.main.bounds.size.height / 10 * 0.5
    static let medicareLevyLabelWidth = UIScreen.main.bounds.size.width  / 10 * 5.8
    
    static let healthCoverLabelX = mainWidth / 10 * 3
    static let healthCoverLabelY = mainHeight / 10 * 4.7
    static let healthCoverLabelHeight = UIScreen.main.bounds.size.height / 10 * 0.5
    static let healthCoverLabelWidth = UIScreen.main.bounds.size.width  / 10 * 5.8
    
    static let TFNButtonX = mainWidth / 10 * 1.8
    static let TFNButtonY = mainHeight / 10 * 3.61
    static let TFNButtonHeight:CGFloat = 25
    static let TFNButtonWidth:CGFloat = 25
    
    static let medicareLevyButtonX = mainWidth / 10 * 1.8
    static let medicareLevyButtonY = mainHeight / 10 * 4.2
    static let medicareLevyButtonHeight:CGFloat = 25
    static let medicareLevyButtonWidth:CGFloat = 25
    
    static let healthCoverButtonX = mainWidth / 10 * 1.8
    static let healthCoverButtonY = mainHeight / 10 * 4.8
    static let healthCoverButtonHeight:CGFloat = 25
    static let healthCoverButtonWidth:CGFloat = 25
    
    static let calculateButtonX = mainWidth / 10 * 0.5
    static let calculateButtonY = mainHeight / 10 * 5.45
    static let calculateButtonHeight = UIScreen.main.bounds.size.height / 11.7
    static let calculateButtonWidth = UIScreen.main.bounds.size.width  / 10 * 9
    
    static let residentialStatusDefaultButtonX = mainWidth / 10 * 3.71
    static let residentialStatusDefaultButtonY = mainHeight / 10 * 1.95
    static let residentialStatusDefaultButtonHeight = UIScreen.main.bounds.size.height / 10 * 0.5
    static let residentialStatusDefaultButtonWidth = UIScreen.main.bounds.size.width  / 10 * 5.8
    
    static let residentialStatusForeignButtonX = mainWidth / 10 * 3.71
    static let residentialStatusForeignButtonY = mainHeight / 10 * 2.45
    static let residentialStatusForeignButtonHeight = UIScreen.main.bounds.size.height / 10 * 0.5
    static let residentialStatusForeignButtonWidth = UIScreen.main.bounds.size.width  / 10 * 5.8
    
    static let residentialStatusHolidayButtonX = mainWidth / 10 * 3.71
    static let residentialStatusHolidayButtonY = mainHeight / 10 * 2.95
    static let residentialStatusHolidayButtonHeight = UIScreen.main.bounds.size.height / 10 * 0.5
    static let residentialStatusHolidayButtonWidth = UIScreen.main.bounds.size.width  / 10 * 5.8
    
    static let residentialStatusAustralianButtonX = mainWidth / 10 * 3.71
    static let residentialStatusAustralianButtonY = mainHeight / 10 * 3.45
    static let residentialStatusAustralianButtonHeight = UIScreen.main.bounds.size.height / 10 * 0.5
    static let residentialStatusAustralianButtonWidth = UIScreen.main.bounds.size.width  / 10 * 5.8
    
    static let payFrequencyDefaultButtonX = mainWidth / 10 * 3.71
    static let payFrequencyDefaultButtonY = mainHeight / 10 * 2.55
    static let payFrequencyDefaultButtonHeight = UIScreen.main.bounds.size.height / 10 * 0.5
    static let payFrequencyDefaultButtonWidth = UIScreen.main.bounds.size.width  / 10 * 5.8
    
    static let payFrequencyWeeklyButtonX = mainWidth / 10 * 3.71
    static let payFrequencyWeeklyButtonY = mainHeight / 10 * 3.05
    static let payFrequencyWeeklyButtonHeight = UIScreen.main.bounds.size.height / 10 * 0.5
    static let payFrequencyWeeklyButtonWidth = UIScreen.main.bounds.size.width  / 10 * 5.8
    
    static let payFrequencyFornightlyButtonX = mainWidth / 10 * 3.71
    static let payFrequencyFornightlyButtonY = mainHeight / 10 * 3.55
    static let payFrequencyFornightlyButtonHeight = UIScreen.main.bounds.size.height / 10 * 0.5
    static let payFrequencyFornightlyButtonWidth = UIScreen.main.bounds.size.width  / 10 * 5.8
    
    static let payFrequencyMonthlyButtonX = mainWidth / 10 * 3.71
    static let payFrequencyMonthlyButtonY = mainHeight / 10 * 4.05
    static let payFrequencyMonthlyButtonHeight = UIScreen.main.bounds.size.height / 10 * 0.5
    static let payFrequencyMonthlyButtonWidth = UIScreen.main.bounds.size.width  / 10 * 5.8
    
    static let payFrequencyYearlyButtonX = mainWidth / 10 * 3.71
    static let payFrequencyYearlyButtonY = mainHeight / 10 * 4.55
    static let payFrequencyYearlyButtonHeight = UIScreen.main.bounds.size.height / 10 * 0.5
    static let payFrequencyYearlyButtonWidth = UIScreen.main.bounds.size.width  / 10 * 5.8
}
