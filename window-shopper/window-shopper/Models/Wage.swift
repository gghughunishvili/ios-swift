//
//  Wage.swift
//  window-shopper
//
//  Created by Giorgi Ghughunishvili on 10/3/17.
//  Copyright © 2017 Giorgi Ghughunishvili. All rights reserved.
//

import Foundation
class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price/wage))
    }
}
