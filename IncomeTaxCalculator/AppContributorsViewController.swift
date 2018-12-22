//
//  AppContributorsViewController.swift
//  IncomeTaxCalculator
//
//  Created by 杨偲 on 17/11/18.
//  Copyright © 2018 Zhiyu Ding. All rights reserved.
//

import UIKit

class AppContributorsViewController: UIViewController {
    
    
    
    var designer = UILabel(frame: CGRect(x: 16, y: 177, width: 120, height: 35))
    var developerOne = UILabel(frame: CGRect(x: 16, y: 340, width: 160, height: 35))
    var developerTwo = UILabel(frame: CGRect(x: 16, y: 424, width: 160, height: 35))
    var marketing = UILabel(frame: CGRect(x: 16, y: 596, width: 120, height: 35))
    var coOrdinator = UILabel(frame: CGRect(x: 16, y: 596, width: 160, height: 35))
    var titleBegin = UILabel(frame: CGRect(x: 16, y: 596, width: 80, height: 35))
    var titleContent = UILabel(frame: CGRect(x: 16, y: 596, width: 300, height: 35))
    
    var MichealLinLiu = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 29))
    var CaiYang = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 29))
    var SissyZhou = UIButton(frame: CGRect(x: 0, y: 0, width: 130, height: 29))
    var Lightman = UIButton(frame: CGRect(x: 0, y: 0, width: 130, height: 29))
    var MichealDing = UIButton(frame: CGRect(x: 0, y: 0, width: 150, height: 29))
    var returnButton = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
    
    let titleFont = UIFont(name: "ChalkboardSE-Bold", size: 25)
    let contentFont = UIFont(name: "Chalkboard SE", size: 25)
    let color = UIColor.white

    override func viewDidLoad() {
        super.viewDidLoad()
//        print(self.view.bounds.height)
//        print(self.view.center.y)
//        print(self.view.bounds.midY)
//        print(UIScreen.main.bounds.size)
//        print(UIScreen.main.bounds.size.width)
        createGradientLayer()
        setLabels()
        setButtons()
        addLabelsAndButtons()
        animateBackground()

    }


    // This function is used to set the actual content of each label
    func setLabels(){
        
        let distance = UIScreen.main.bounds.size.height / 15
        let xCenterPos = UIScreen.main.bounds.size.width/2
        let yCenterPos = UIScreen.main.bounds.size.height/2
 
        designer.text = "Designer"
        designer.font = titleFont
        designer.textColor = color
        designer.center.x = xCenterPos/2
        designer.center.y = yCenterPos - distance
        
        developerOne.text = "Developer"
        developerOne.font = titleFont
        developerOne.textColor = color
        developerOne.center.x = xCenterPos/1.8
        developerOne.center.y = yCenterPos - distance * 3
       
        developerTwo.text = "Developer"
        developerTwo.font = titleFont
        developerTwo.textColor = color
        developerTwo.center.x = xCenterPos/1.7
        developerTwo.center.y = yCenterPos - distance * 2
        
        marketing.text = "Marketing"
        marketing.font = titleFont
        marketing.textColor = color
        marketing.center.x = xCenterPos/2
        marketing.center.y = yCenterPos
        
        coOrdinator.text = "Co-ordinator"
        coOrdinator.font = titleFont
        coOrdinator.textColor = color
        coOrdinator.center.x = xCenterPos/2
        coOrdinator.center.y = yCenterPos + distance
        
        titleBegin.text = "We"
        titleBegin.font = UIFont(name: "ChalkboardSE-Bold", size: 35)
        titleBegin.textColor = color
        titleBegin.center.x = xCenterPos/2.5
        titleBegin.center.y = yCenterPos - distance * 5
        
        titleContent.text = "Build Tax Calculator For You"
        titleContent.textAlignment = .left
        titleContent.font = UIFont(name: "ChalkboardSE-Bold", size: 20)
        titleContent.textColor = color
        titleContent.center.x = xCenterPos * 1.3
        titleContent.center.y = yCenterPos - distance * 4.95
       
    
    }
    
    // This function is used to add all the labels to the current view
    func addLabelsAndButtons(){
        
        self.view.addSubview(marketing)
        self.view.addSubview(designer)
        self.view.addSubview(developerOne)
        self.view.addSubview(developerTwo)
        self.view.addSubview(coOrdinator)
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
//        let distance = self.view.bounds.height / 15
        
        MichealLinLiu.setTitle("Micheal Lin Liu", for: .normal)
        MichealLinLiu.setTitleColor(color, for: .normal)
        MichealLinLiu.titleLabel?.font = contentFont
        MichealLinLiu.center.x = xCenterPos * 1.45
        MichealLinLiu.center.y = yCenterPos - distance * 3
        MichealLinLiu.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        
        CaiYang.setTitle("Cai Yang", for: .normal)
        CaiYang.setTitleColor(color, for: .normal)
        CaiYang.titleLabel?.font = contentFont
        CaiYang.center.x = xCenterPos * 1.4
        CaiYang.center.y = yCenterPos - distance * 2
        CaiYang.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        
        SissyZhou.setTitle("Sissy Zhou", for: .normal)
        SissyZhou.setTitleColor(color, for: .normal)
        SissyZhou.titleLabel?.font = contentFont
        SissyZhou.center.x = xCenterPos * 1.4
        SissyZhou.center.y = yCenterPos - distance
        SissyZhou.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        
        Lightman.setTitle("Lightman", for: .normal)
        Lightman.setTitleColor(color, for: .normal)
        Lightman.titleLabel?.font = contentFont
        Lightman.center.x = xCenterPos * 1.4
        Lightman.center.y = yCenterPos
        Lightman.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        
        MichealDing.setTitle("Micheal Ding", for: .normal)
        MichealDing.setTitleColor(color, for: .normal)
        MichealDing.titleLabel?.font = contentFont
        MichealDing.center.x = xCenterPos * 1.4
        MichealDing.center.y = yCenterPos + distance
        MichealDing.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        
        returnButton.setImage(#imageLiteral(resourceName: "ButtonImage.png"), for: .normal)
        returnButton.center.x = xCenterPos * 1.45
        returnButton.center.y = yCenterPos + distance * (4 * distance / 60)
        returnButton.addTarget(self, action: #selector(returnButtonTouched), for: .touchUpInside)
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
        
        let xCenterPos = UIScreen.main.bounds.size.width/2
        let yCenterPos = UIScreen.main.bounds.size.height/2
        
        let animationOptions = UIView.AnimationOptions.repeat.rawValue | UIView.AnimationOptions.curveLinear.rawValue
        let backgroundImage = UIImage(named:"Wave3.jpg")!
        let amountToKeepImageSquare = backgroundImage.size.height - frame.size.height
        
        // UIImageView 1
        // Change the y value to move down
        let backgroundImageView1 = UIImageView(image: #imageLiteral(resourceName: "ButtonImage.png"))
        //backgroundImageView1.alpha = 0 // set the opacity
        backgroundImageView1.frame = CGRect(x: frame.origin.x, y: yCenterPos + distance*6, width: backgroundImage.size.width - amountToKeepImageSquare, height: frame.size.height/8)
        self.view.addSubview(backgroundImageView1)
        
        // UIImageView 2
        let backgroundImageView2 = UIImageView(image: #imageLiteral(resourceName: "ButtonImage.png"))
        backgroundImageView2.frame = CGRect(x: backgroundImageView1.frame.size.width, y: yCenterPos+distance*6,  width: backgroundImage.size.width - amountToKeepImageSquare, height: frame.size.height/8)
        self.view.addSubview(backgroundImageView2)
        
        // Animate background
        UIView.animate(withDuration: 6.0, delay: 0.0, options: UIView.AnimationOptions(rawValue: animationOptions), animations: {
            backgroundImageView1.frame = backgroundImageView1.frame.offsetBy(dx: -1 * backgroundImageView1.frame.size.width , dy: 0.0) // dy is used to controll the image move up and down
            backgroundImageView2.frame = backgroundImageView2.frame.offsetBy(dx: -1 * backgroundImageView2.frame.size.width, dy: 0.0)
        }, completion: nil)
    }

}
