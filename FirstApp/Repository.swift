//
//  Repository.swift
//  FirstApp
//
//  Created by Miguel Pérez León on 27/6/25.
//

import Foundation

protocol DataRepository {
    var url: URL { get }
}

extension DataRepository {
    func getData() throws -> [StarCard] {
        let data = try Data(contentsOf: url)
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        return try decoder.decode([StarCardDto].self, from: data).map(\.toCard)
    }
}

struct Repository: DataRepository {
    var url: URL{
        Bundle.main.url(forResource: "StarWars", withExtension: "json")!
    }
}

struct RepositoryTest: DataRepository {
    var url: URL{
        Bundle.main.url(forResource: "StarWarsTest", withExtension: "json")!
    }
}
