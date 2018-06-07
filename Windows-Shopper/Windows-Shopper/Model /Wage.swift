//
//  Wage.swift
//  Windows-Shopper
//
//  Created by Full On Pimp on 07/06/2018.
//  Copyright © 2018 Nagels. All rights reserved.
//

import Foundation
class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price / wage))
    }
}
