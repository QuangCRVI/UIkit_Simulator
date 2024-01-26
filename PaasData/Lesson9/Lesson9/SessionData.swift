//
//  SessionData.swift
//  Lesson9
//
//  Created by Quang Nguyen on 26/01/2024.
//

import Foundation

class SessionData {
    static let share = SessionData()
    
    var personData: Person?
}

struct Data {
    static let share = Data()
    
    var personData: Person?
}
