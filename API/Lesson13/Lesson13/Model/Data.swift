//
//  Data.swift
//  Lesson13
//
//  Created by Quang Nguyen on 02/02/2024.
//

import Foundation
import HandyJSON

struct APIResponse: HandyJSON {
    var count = 0
    var entries = [Entries].self //Json Array
}

struct Entries: HandyJSON {
    var API = ""
    var Description = ""
    var Auth = ""
    var HTTPS = false
    var Cors = ""
    var Link = ""
    var Category = ""
}

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
