//
//  ViewController.swift
//  IncomeTaxCalculator
//
//  Created by Zhiyu Ding on 29/9/18.
//  Copyright © 2018 Zhiyu Ding. All rights reserved.
//

import UIKit
import Alamofire
import RealmSwift


class ViewController: UIViewController {
    @IBOutlet weak var taxValue: UILabel!
    @IBOutlet weak var incomeValue: UITextField!
    @IBOutlet weak var buttonCalculate: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NSLog("View Loaded");
        self.APICall();
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onCalculateTouched(_ sender: Any) {
        let incomeText:String = incomeValue.text!;
        let income:Double = Double(incomeText)!;
        let tax:Double = self.calculateTax(income: income);
        taxValue.text = String(tax);
        NSLog("Button Clicked");
    }
    
    func calculateTax(income:Double) -> Double {
        if (income < 18200) {
            return 0.0;
        } else if (income < 37000) {
            let taxableValue:Double = income - 18200;
            return taxableValue * 0.19;
        } else if (income < 90000) {
            let taxableValue:Double = income - 37000;
            return taxableValue * 0.325 + 3572;
        } else if (income < 180000) {
            let taxableValue:Double = income - 90000;
            return taxableValue * 0.337 + 20797;
        } else {
            let taxableValue:Double = income - 180000;
            return taxableValue * 0.45 + 54097;
        }
    }
    
    func APICall() {
        let realm = try! Realm();
        Alamofire.request("https://xstudio.com.au/incometax.php").responseJSON { response in
            let incomeTax = response.result.value as! NSDictionary ;
            print("Tie1: \(String(describing: incomeTax.object(forKey: "tie1")))" );
            let tie1data = incomeTax.object(forKey: "tie1") as! NSDictionary;
            let tie1 = TaxTier();
            tie1.cap = tie1data.value(forKey: "cap") as! Double;
            tie1.rate = tie1data.value(forKey: "rate") as! Double;
            tie1.threshold = tie1data.value(forKey: "threshold") as! Int;
            try! realm.write {
                realm.deleteAll()
            }
            try! realm.write {
                realm.add(tie1)
            }
            let taxTiers = realm.objects(TaxTier.self)
            debugPrint(taxTiers)
            
        }
        
    }

}

