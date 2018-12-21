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
    var boss = UILabel(frame: CGRect(x: 16, y: 513, width: 51, height: 36))
    
    var designer = UILabel(frame: CGRect(x: 16, y: 177, width: 79, height: 29))
    var developerOne = UILabel(frame: CGRect(x: 16, y: 340, width: 153, height: 29))
    var developerTwo = UILabel(frame: CGRect(x: 16, y: 424, width: 92, height: 29))
    var manager = UILabel(frame: CGRect(x: 16, y: 596, width: 99, height: 29))
    
    let titleFont = UIFont(name: "ChalkboardSE-Bold", size: 25)
    let contentFont = UIFont(name: "Chalkboard SE", size: 20)
    let color = UIColor.black

    override func viewDidLoad() {
        super.viewDidLoad()

        setNavigationBar()
        setLabels()
        addLabels()

    }


    // This function is used to set the actual content of each label
    func setLabels(){
        graphics.text = "Graphic";
        graphics.font = titleFont
        graphics.textColor = color
        
        developers.text = "Developers";
        developers.font = titleFont
        developers.textColor = color
        
        boss.text = "Boss";
        boss.font = titleFont
        boss.textColor = color
        
        designer.text = "• Jay He";
        designer.font = contentFont
        designer.textColor = color
        
        developerOne.text = "• Micheal Lin Liu";
        developerOne.font = contentFont
        developerOne.textColor = color
        
        developerTwo.text = "• Cai Yang";
        developerTwo.font = contentFont
        developerTwo.textColor = color
        
        manager.text = "• Lightman";
        manager.font = contentFont
        manager.textColor = color
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
    

    // This function is used to set up the navigation bar along with two bar button items
    func setNavigationBar(){
        let myNav = UINavigationBar(frame: CGRect(x: 0, y: 30, width: self.view.frame.width, height: 44))
        myNav.barTintColor = #colorLiteral(red: 0.3529411765, green: 0.7333333333, blue: 0.3529411765, alpha: 1)
        myNav.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white]
        self.view.addSubview(myNav)
        let backItem: UIBarButtonItem = UIBarButtonItem(barButtonSystemItem: .reply, target: self, action: #selector(Progress.cancel))
        backItem.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
//        let moreItem = UIBarButtonItem(title: "More", style: .plain, target: self, action: Selector(("More")))
//
//        moreItem.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        let navigItem: UINavigationItem = UINavigationItem(title: "Contributors")
        //navigItem.rightBarButtonItem = moreItem
        navigItem.leftBarButtonItem = backItem
        myNav.items = [navigItem]
        
        let top = NSLayoutConstraint(item: myNav, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1, constant: 50)
        let leading = NSLayoutConstraint(item: myNav, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1, constant: 0)
        let trailing = NSLayoutConstraint(item: myNav, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1, constant: 0)
        view.addConstraints([top, leading, trailing])
        
        myNav.translatesAutoresizingMaskIntoConstraints = false
    }
}
