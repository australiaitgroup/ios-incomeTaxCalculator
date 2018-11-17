//
//  TaxCalculationViewController.swift
//  IncomeTaxCalculator
//
//  Created by LIN LIU on 17/11/18.
//  Copyright © 2018 Zhiyu Ding. All rights reserved.
//

import UIKit

class TaxCalculationViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //M: background color (gradient)
        let topColor = UIColor(red: (230 / 255.0), green: (246 / 255.0), blue: (114 / 255.0), alpha: 1)
        let bottomColor = UIColor(red: (22 / 255.0), green: (127 / 255.0), blue: (126/255.0), alpha: 1)
        
        let gradientColors: [CGColor] = [topColor.cgColor, bottomColor.cgColor]
        let gradientLocations: [NSNumber] = [0.0, 0.65]
        
        let gradientLayer: CAGradientLayer = CAGradientLayer()
        gradientLayer.colors = gradientColors
        gradientLayer.locations = gradientLocations
        
        gradientLayer.frame = self.view.bounds
        self.view.layer.insertSublayer(gradientLayer, at: 0)
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
