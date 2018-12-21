//
//  AppContributorsViewController.swift
//  IncomeTaxCalculator
//
//  Created by 杨偲 on 17/11/18.
//  Copyright © 2018 Zhiyu Ding. All rights reserved.
//

import UIKit

class AppContributorsViewController: UIViewController {
    
    
    var graphics = UILabel(frame: CGRect(x: 16, y: 108, width: 100, height: 36))
    var developers = UILabel(frame: CGRect(x: 16, y: 262, width: 130, height: 36))
    var boss = UILabel(frame: CGRect(x: 16, y: 513, width: 130, height: 36))
    
    var designer = UILabel(frame: CGRect(x: 16, y: 177, width: 79, height: 29))
    var developerOne = UILabel(frame: CGRect(x: 16, y: 340, width: 153, height: 29))
    var developerTwo = UILabel(frame: CGRect(x: 16, y: 424, width: 92, height: 29))
    var manager = UILabel(frame: CGRect(x: 16, y: 596, width: 99, height: 29))
    
    let titleFont = UIFont(name: "ChalkboardSE-Bold", size: 25)
    let contentFont = UIFont(name: "Chalkboard SE", size: 20)
    let color = UIColor.black

    override func viewDidLoad() {
        super.viewDidLoad()
        
        createGradientLayer()
        setLabels()
        addLabels()

    }


    // This function is used to set the actual content of each label
    func setLabels(){
        graphics.text = "Graphic";
        graphics.font = titleFont
        graphics.textColor = color
        graphics.center.x = self.view.center.x
        
        developers.text = "Developers";
        developers.font = titleFont
        developers.textColor = color
        developers.center.x = self.view.center.x
        
        boss.text = "Marketing";
        boss.font = titleFont
        boss.textColor = color
        boss.center.x = self.view.center.x
        
        designer.text = "• Sissy";
        designer.font = contentFont
        designer.textColor = color
        designer.center.x = self.view.center.x
        
        developerOne.text = "• Micheal Lin Liu";
        developerOne.font = contentFont
        developerOne.textColor = color
        developerOne.center.x = self.view.center.x
        
        developerTwo.text = "• Cai Yang";
        developerTwo.font = contentFont
        developerTwo.textColor = color
        developerTwo.center.x = self.view.center.x
        
        manager.text = "• Lightman";
        manager.font = contentFont
        manager.textColor = color
        manager.center.x = self.view.center.x
    }
    
    // This function is used to add all the labels to the current view
    func addLabels(){
        self.view.addSubview(graphics)
        self.view.addSubview(developers)
        self.view.addSubview(boss)
        self.view.addSubview(designer)
        self.view.addSubview(developerOne)
        self.view.addSubview(developerTwo)
        self.view.addSubview(manager)

    }
    

//    // This function is used to set up the navigation bar along with two bar button items
//    func setNavigationBar(){
//        let myNav = UINavigationBar(frame: CGRect(x: 0, y: 30, width: self.view.frame.width, height: 44))
//        myNav.barTintColor = UIColor.purple
//        myNav.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.purple]
//        self.view.addSubview(myNav)
//        let backItem: UIBarButtonItem = UIBarButtonItem(barButtonSystemItem: .reply, target: self, action: #selector(Progress.cancel))
//        backItem.tintColor = UIColor(red: 0.02745, green: 0.09020, blue: 0.25490, alpha: 1)
//
////        let moreItem = UIBarButtonItem(title: "More", style: .plain, target: self, action: Selector(("More")))
////
////        moreItem.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
//        let navigItem: UINavigationItem = UINavigationItem(title: "Contributors")
//
//        //navigItem.rightBarButtonItem = moreItem
//        navigItem.leftBarButtonItem = backItem
//        myNav.items = [navigItem]
//
//        let top = NSLayoutConstraint(item: myNav, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1, constant: 40)
//        let leading = NSLayoutConstraint(item: myNav, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1, constant: 0)
//        let trailing = NSLayoutConstraint(item: myNav, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1, constant: 0)
//        view.addConstraints([top, leading, trailing])
//
//        myNav.translatesAutoresizingMaskIntoConstraints = false
//    }
//
    func createGradientLayer() {
        var gradientLayer: CAGradientLayer!
        
        gradientLayer = CAGradientLayer()
        
        gradientLayer.frame = self.view.bounds
        
        let startColor = UIColor(red: 0.02745, green: 0.09020, blue: 0.25490, alpha: 1).cgColor
        let endColor = UIColor(red: 0.25098, green: 0.196078, blue: 0.54902, alpha: 1).cgColor
        
        gradientLayer.colors = [startColor, endColor]
        gradientLayer.startPoint = CGPoint(x: 0.6, y: 0.05)
        gradientLayer.endPoint = CGPoint(x: 0.1, y: 1)
        gradientLayer.locations = [0.8,1]
        self.view.layer.addSublayer(gradientLayer)
    }
}
