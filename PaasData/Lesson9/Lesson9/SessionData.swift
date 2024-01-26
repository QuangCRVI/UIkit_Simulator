//
//  SessionData.swift
//  Lesson9
//
//  Created by Quang Nguyen on 26/01/2024.
//

import Foundation


struct Data {
    static var share = Data() // Cách tạo ra Design Pattern Singleton
    
    var personData: Person? // Data User
}
