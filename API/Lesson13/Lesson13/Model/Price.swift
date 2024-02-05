//
//  Price.swift
//  Lesson13
//
//  Created by Quang Nguyen on 05/02/2024.
//

import Foundation
import HandyJSON

struct CoinDesk: HandyJSON {
    var time = Time() //Json Object
    var disclaimer = ""
    var chartName = ""
    var bpi = BPI()
}

struct Time: HandyJSON {
    var updated = ""
    var updatedISO = ""
    var updateduk = ""
}

struct BPI: HandyJSON {
    var USD = Money()
    var GBP = Money()
    var EUR = Money()
}

struct Money: HandyJSON {
    var code = ""
    var symbol = ""
    var rate = ""
    var description = ""
    var rate_float = 0.0
}
