//
//  MainView.swift
//  Utility_IncomeTaxCalculator
//
//  Created by LIN LIU on 22/12/18.
//  Copyright © 2018 LinLiu. All rights reserved.
//

import UIKit

class MainView: UIView {
    var resultLabel = UILabel()
    var hintLabel = UILabel()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.setViewFrameSize()
        
        self.defineBackgroundColor()
        
        self.addResultLabel()
        
        self.addHintLabel()
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    
    func setViewFrameSize(){
        self.frame = CGRect(x: SizeConfig.mainViewX, y: SizeConfig.mainViewY, width: SizeConfig.mainViewWidth, height: SizeConfig.mainViewHeight)
    }
    
    
    func defineBackgroundColor(){
        self.backgroundColor = ColorConfig.mainViewBackgroundColor
    }

    
    func addResultLabel(){
        resultLabel = Labels.init(x: SizeConfig.resultLabelX,
                                 y: SizeConfig.resultLabelY,
                                 width: SizeConfig.resultLabelWidth,
                                 height: SizeConfig.resultLabelHeight,
                                 cornerRadius: 9,
                                 backgroundColor: ColorConfig.resultLabelBackgroundColor,
                                 textAlignment: NSTextAlignment.center,
                                 textColor: ColorConfig.resultLabelTextColor,
                                 fitWidth: true,
                                 font: FontConfig.resultLabelTextFont,
                                 text: StringValue.resultLabelTextString,
                                 manager: self)
        
        print(resultLabel.frame.width)
    }
    
    
    func addHintLabel(){
        hintLabel = Labels.init(x: SizeConfig.hintLabelX,
                                y: SizeConfig.hintLabelY,
                                width: SizeConfig.hintLabelWidth,
                                height: SizeConfig.hintLabelHeight,
                                cornerRadius: 5,
                                backgroundColor: ColorConfig.hintLabelBackgroundColor,
                                textAlignment: NSTextAlignment.center,
                                textColor: ColorConfig.hintLabelTextColor,
                                fitWidth: true,
                                font: FontConfig.hintLabelTextFont,
                                text: StringValue.hintLabelTextString,
                                manager: self)
    }
}
