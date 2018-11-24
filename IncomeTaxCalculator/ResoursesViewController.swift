//
//  ResoursesViewController.swift
//  IncomeTaxCalculator
//
//  Created by 杨偲 on 24/11/18.
//  Copyright © 2018 Zhiyu Ding. All rights reserved.
//

import UIKit
import WebKit

class ResoursesViewController: UIViewController {

    @IBOutlet var webContent: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let url = URL(string: "https://www.ato.gov.au")
        webContent.load(URLRequest(url: url!))
        // Do any additional setup after loading the view.
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
