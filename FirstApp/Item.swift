//
//  Item.swift
//  FirstApp
//
//  Created by Miguel Pérez León on 27/6/25.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
