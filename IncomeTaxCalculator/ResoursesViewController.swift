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
        
    }

}
