//
//  AppContributorsViewController.swift
//  IncomeTaxCalculator
//
//  Created by 杨偲 on 17/11/18.
//  Copyright © 2018 Zhiyu Ding. All rights reserved.
//

import UIKit

class AppContributorsViewController: UIViewController {
    
    
    
    var titleBegin = UILabel(frame: CGRect(x: 16, y: 596, width: 80, height: 35))
    var titleContent = UILabel(frame: CGRect(x: 16, y: 596, width: 300, height: 35))
    
    var MichealLinLiu = UIButton(frame: CGRect(x: 0, y: 0, width: 320, height: 40))
    var CaiYang = UIButton(frame: CGRect(x: 0, y: 0, width: 320, height: 40))
    var SissyZhou = UIButton(frame: CGRect(x: 0, y: 0, width: 320, height: 40))
    var Lightman = UIButton(frame: CGRect(x: 0, y: 0, width: 320, height: 40))
    var MichealDing = UIButton(frame: CGRect(x: 0, y: 0, width: 320, height: 40))
    var returnButton = UIButton(frame: CGRect(x: 0, y: 0, width: 30, height: 30))
    
    let titleFont = UIFont(name: "ChalkboardSE-Bold", size: 25)
    let contentFont = UIFont(name: "Chalkboard SE", size: 25)
    let color = UIColor.white

    override func viewDidLoad() {
        super.viewDidLoad()

        createGradientLayer()
        setLabels()
        setButtons()
        addLabelsAndButtons()
        //animateBackground()
        //animateBackground2()
    }


    // This function is used to set the actual content of each label
    func setLabels(){
        
        let distance = UIScreen.main.bounds.size.height / 15
        let xCenterPos = UIScreen.main.bounds.size.width/2
        let yCenterPos = UIScreen.main.bounds.size.height/2
 
        titleBegin.text = "We"
        titleBegin.font = UIFont.boldSystemFont(ofSize: 35)
        titleBegin.textColor = color
        titleBegin.center.x = xCenterPos/2.5
        titleBegin.center.y = yCenterPos - distance * 6.1
        
        titleContent.text = "Build Tax Calculator For You"
        titleContent.textAlignment = .left
        titleContent.font = UIFont.systemFont(ofSize: 20)
        titleContent.textColor = color
        titleContent.center.x = xCenterPos * 1.3
        titleContent.center.y = yCenterPos - distance * 6
        
        if UIScreen.main.bounds.size.height == 568 { // Means this is iPhone 5 series
            titleBegin.center.x = xCenterPos/3
            titleContent.center.x = xCenterPos * 1.4
        }
    
    }
    
    // This function is used to add all the labels to the current view
    func addLabelsAndButtons(){
        
//        self.view.addSubview(marketing)
//        self.view.addSubview(designer)
//        self.view.addSubview(developerOne)
//        self.view.addSubview(developerTwo)
//        self.view.addSubview(coOrdinator)
        self.view.addSubview(titleBegin)
        self.view.addSubview(titleContent)

        self.view.addSubview(MichealDing)
        self.view.addSubview(CaiYang)
        self.view.addSubview(MichealLinLiu)
        self.view.addSubview(Lightman)
        self.view.addSubview(SissyZhou)
        self.view.addSubview(returnButton)

    }
    
    func setButtons(){
        
        let distance = UIScreen.main.bounds.size.height / 15
        let xCenterPos = UIScreen.main.bounds.size.width/2
        let yCenterPos = UIScreen.main.bounds.size.height/2
        print(UIScreen.main.bounds.size.height)
        if UIScreen.main.bounds.size.height == 568 { // Means this is iPhone 5 series
            MichealLinLiu.frame = CGRect(x: 0, y: 0, width: 310, height: 40)
            CaiYang.frame = CGRect(x: 0, y: 0, width: 310, height: 40)
            SissyZhou.frame = CGRect(x: 0, y: 0, width: 310, height: 40)
            Lightman.frame = CGRect(x: 0, y: 0, width: 310, height: 40)
            MichealDing.frame = CGRect(x: 0, y: 0, width: 310, height: 40)

        }
        
        
        //MichealLinLiu.setTitle("Micheal Lin Liu", for: .normal)
        setMultipleFonts(button: MichealLinLiu, title: "Developer  ", name: "Micheal Lin Liu")
        MichealLinLiu.titleLabel?.baselineAdjustment = .alignCenters
        MichealLinLiu.layer.cornerRadius = 10
        MichealLinLiu.layer.borderWidth = 1
        MichealLinLiu.layer.borderColor = UIColor.white.cgColor
        MichealLinLiu.backgroundColor = UIColor.white.withAlphaComponent(0.1)
        MichealLinLiu.setTitleColor(color, for: .normal)
        MichealLinLiu.titleLabel?.font = contentFont
        MichealLinLiu.center.x = xCenterPos
        MichealLinLiu.center.y = yCenterPos - distance * 4.5
        MichealLinLiu.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        
        
        //CaiYang.setTitle("Cai Yang", for: .normal)
        setMultipleFonts(button: CaiYang, title: "Developer  ", name: "Cai Yang")
        CaiYang.titleLabel?.baselineAdjustment = .alignCenters
        CaiYang.layer.cornerRadius = 10
        CaiYang.layer.borderWidth = 1
        CaiYang.layer.borderColor = UIColor.white.cgColor
        CaiYang.backgroundColor = UIColor.white.withAlphaComponent(0.1)
        CaiYang.setTitleColor(color, for: .normal)
        CaiYang.titleLabel?.font = contentFont
        CaiYang.center.x = xCenterPos
        CaiYang.center.y = yCenterPos - distance * 3
        CaiYang.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        
        //SissyZhou.setTitle("Sissy Zhou", for: .normal)
        setMultipleFonts(button: SissyZhou, title: "Designer  ", name: "Sissy Zhou")
        SissyZhou.titleLabel?.baselineAdjustment = .alignCenters
        SissyZhou.layer.cornerRadius = 10
        SissyZhou.layer.borderWidth = 1
        SissyZhou.layer.borderColor = UIColor.white.cgColor
        SissyZhou.backgroundColor = UIColor.white.withAlphaComponent(0.1)
        SissyZhou.setTitleColor(color, for: .normal)
        SissyZhou.titleLabel?.font = contentFont
        SissyZhou.center.x = xCenterPos
        SissyZhou.center.y = yCenterPos - distance * 1.5
        SissyZhou.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        
        //Lightman.setTitle("Lightman", for: .normal)
        setMultipleFonts(button: Lightman, title: "Marketing  ", name: "Lightman")
        Lightman.titleLabel?.baselineAdjustment = .alignCenters
        Lightman.layer.cornerRadius = 10
        Lightman.layer.borderWidth = 1
        Lightman.layer.borderColor = UIColor.white.cgColor
        Lightman.backgroundColor = UIColor.white.withAlphaComponent(0.1)
        Lightman.setTitleColor(color, for: .normal)
        Lightman.titleLabel?.font = contentFont
        Lightman.center.x = xCenterPos
        Lightman.center.y = yCenterPos
        Lightman.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        
        //MichealDing.setTitle("Micheal Ding", for: .normal)
        setMultipleFonts(button: MichealDing, title: "Co-ordinator  ", name: "Micheal Ding")
        MichealDing.titleLabel?.baselineAdjustment = .alignCenters
        MichealDing.layer.cornerRadius = 10
        MichealDing.layer.borderWidth = 1
        MichealDing.layer.borderColor = UIColor.white.cgColor
        MichealDing.backgroundColor = UIColor.white.withAlphaComponent(0.1)
        MichealDing.setTitleColor(color, for: .normal)
        MichealDing.titleLabel?.font = contentFont
        MichealDing.center.x = xCenterPos
        MichealDing.center.y = yCenterPos + distance * 1.5
        MichealDing.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        
       
        returnButton.setImage(#imageLiteral(resourceName: "Button2.jpg"), for: .normal)
        returnButton.center.x = xCenterPos * 1.7
        returnButton.center.y = yCenterPos + distance * (distance / 10)
        returnButton.addTarget(self, action: #selector(returnButtonTouched), for: .touchUpInside)
        
        if UIScreen.main.bounds.size.height == 896 { // Means this is iPhone XS Max
            returnButton.center.y = yCenterPos + distance * (distance / 11)
        }
    }
    
    @objc func buttonAction(sender: UIButton!) {
        UIApplication.shared.open(URL(string: "https://github.com/australiaitgroup/ios-incomeTaxCalculator")!)
    }
    
    @objc func returnButtonTouched(sender: UIButton!) {
        let calculationViewController = TaxCalculationViewController(nibName:"TaxCalculationViewController", bundle: nil)
 
        present(calculationViewController, animated: true, completion: nil)

    }

    func createGradientLayer() {
        var gradientLayer: CAGradientLayer!
        
        gradientLayer = CAGradientLayer()
        
        gradientLayer.frame = UIScreen.main.bounds
        
        let startColor = UIColor(red: 0.02745, green: 0.09020, blue: 0.25490, alpha: 1).cgColor
        let endColor = UIColor(red: 0.25098, green: 0.196078, blue: 0.54902, alpha: 1).cgColor
        
        gradientLayer.colors = [startColor, endColor]
        gradientLayer.startPoint = CGPoint(x: 0.6, y: 0.05)
        gradientLayer.endPoint = CGPoint(x: 0.4, y: 1)
        gradientLayer.locations = [0.8,1]
        self.view.layer.addSublayer(gradientLayer)
    }
    
    
   
    
    func animateBackground() {
        
        let frame = UIScreen.main.bounds
        let distance = UIScreen.main.bounds.size.height / 15
        
        //let xCenterPos = UIScreen.main.bounds.size.width/2
        let yCenterPos = UIScreen.main.bounds.size.height/2
        
        let animationOptions = UIView.AnimationOptions.repeat.rawValue | UIView.AnimationOptions.curveLinear.rawValue
        let backgroundImage = UIImage(named:"Wave3.jpg")!
        let amountToKeepImageSquare = backgroundImage.size.height - frame.size.height
        
        // UIImageView 1
        // Change the y value to move down
        let backgroundImageView1 = UIImageView(image: #imageLiteral(resourceName: "ButtonImage.png"))
        //backgroundImageView1.alpha = 0.3 // set the opacity
        backgroundImageView1.frame = CGRect(x: frame.origin.x, y: yCenterPos + distance*6, width: (backgroundImage.size.width - amountToKeepImageSquare)*2, height: frame.size.height/8)
        self.view.addSubview(backgroundImageView1)
        
        // UIImageView 2
        let backgroundImageView2 = UIImageView(image: #imageLiteral(resourceName: "ButtonImage.png"))
        //backgroundImageView2.alpha = 0.3
        //backgroundImageView1.frame.size.width
        backgroundImageView2.frame = CGRect(x: backgroundImageView1.frame.size.width, y: yCenterPos+distance*6,  width: (backgroundImage.size.width - amountToKeepImageSquare)*2, height: frame.size.height/8)
        self.view.addSubview(backgroundImageView2)
        
        // Animate background
        UIView.animate(withDuration: 6.0, delay: 5.0, options: UIView.AnimationOptions(rawValue: animationOptions), animations: {
            backgroundImageView1.frame = backgroundImageView1.frame.offsetBy(dx: -1 * backgroundImageView1.frame.size.width , dy: 0.0) // dy is used to controll the image move up and down
            backgroundImageView2.frame = backgroundImageView2.frame.offsetBy(dx: -1 * backgroundImageView2.frame.size.width, dy: 0.0)
        }, completion: nil)
    }
    
    
    // In this special situation, we may extend the width to make the background seems like scrolling at different speed
    func animateBackground2() {
        
        let frame = UIScreen.main.bounds
        let distance = UIScreen.main.bounds.size.height / 15
        
        //let xCenterPos = UIScreen.main.bounds.size.width/2
        let yCenterPos = UIScreen.main.bounds.size.height/2
        
        let animationOptions = UIView.AnimationOptions.repeat.rawValue | UIView.AnimationOptions.curveLinear.rawValue
        let backgroundImage = UIImage(named:"Wave3.jpg")!
        let amountToKeepImageSquare = backgroundImage.size.height - frame.size.height
        
        // UIImageView 1
        // Change the y value to move down
        let backgroundImageView1 = UIImageView(image: #imageLiteral(resourceName: "Wave3.jpg"))
        backgroundImageView1.alpha = 0.3 // set the opacity
        backgroundImageView1.frame = CGRect(x: frame.origin.x, y: yCenterPos + distance*6, width: (backgroundImage.size.width - amountToKeepImageSquare)*2, height: frame.size.height/8)
        self.view.addSubview(backgroundImageView1)
        
        // UIImageView 2
        let backgroundImageView2 = UIImageView(image: #imageLiteral(resourceName: "Wave3.jpg"))
        backgroundImageView2.alpha = 0.3
        backgroundImageView2.frame = CGRect(x: backgroundImageView1.frame.size.width, y: yCenterPos+distance*6,  width: (backgroundImage.size.width - amountToKeepImageSquare)*2, height: frame.size.height/8)
        self.view.addSubview(backgroundImageView2)
        
        // Animate background
        UIView.animate(withDuration: 6.0, delay: 0.0, options: UIView.AnimationOptions(rawValue: animationOptions), animations: {
            backgroundImageView1.frame = backgroundImageView1.frame.offsetBy(dx: -1 * backgroundImageView1.frame.size.width , dy: 0.0) // dy is used to controll the image move up and down
            backgroundImageView2.frame = backgroundImageView2.frame.offsetBy(dx: -1 * backgroundImageView2.frame.size.width, dy: 0.0)
        }, completion: nil)
    }

    func setMultipleFonts(button:UIButton, title:String, name:String){
//        let attributedText = NSMutableAttributedString(string: title, attributes: [NSAttributedString.Key.font: UIFont(name: "ChalkboardSE-Bold", size: 28)!,NSAttributedString.Key.foregroundColor: UIColor.white])
//        attributedText.append(NSAttributedString(string: name, attributes: [NSAttributedString.Key.font: UIFont(name: "Chalkboard SE", size: 25)!, NSAttributedString.Key.foregroundColor: UIColor.white]))
        let attributedText = NSMutableAttributedString(string: title, attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 20),NSAttributedString.Key.foregroundColor: UIColor.white])
        
        attributedText.append(NSAttributedString(string: name, attributes: [NSAttributedString.Key.font: UIFont.italicSystemFont(ofSize: FontConfig.payFrequencyYearlyButtonTextFont), NSAttributedString.Key.foregroundColor: UIColor.white]))
        button.setAttributedTitle(attributedText,for: .normal)
    }
}
