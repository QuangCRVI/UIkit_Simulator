//
//  Entries.swift
//  Lesson13
//
//  Created by Quang Nguyen on 05/02/2024.
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


