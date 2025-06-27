//
//  StarCardVm.swift
//  FirstApp
//
//  Created by Miguel Pérez León on 27/6/25.
//

import SwiftUI

@Observable
final class StarCardVm {
    let repository: DataRepository
    
    var cards: [StarCard]
    
    init(repository: DataRepository = Repository()) {
        self.repository = repository
        do {
            cards = try repository.getData()
        }
        catch {
            cards = []
        }
    }
}
