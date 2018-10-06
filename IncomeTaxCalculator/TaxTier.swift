//
//  TaxTier.swift
//  IncomeTaxCalculator
//
//  Created by Zhiyu Ding on 6/10/18.
//  Copyright © 2018 Zhiyu Ding. All rights reserved.
//

import RealmSwift

class TaxTier: Object {
    @objc dynamic var cap = 0.0
    @objc dynamic var rate = 0.0
    @objc dynamic var threshold = 0
}
