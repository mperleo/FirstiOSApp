//
//  FirstAppTests.swift
//  FirstAppTests
//
//  Created by Miguel Pérez León on 27/6/25.
//

import Testing
@testable import FirstApp

extension Tag {
    @Tag static var repository: Self
}
@Suite("Prueba repository StarCards", .tags(.repository))
struct FirstAppTests {
    let repository = RepositoryTest()

    @Test("test de carga de datos") func dataLoad() async throws {
        let data = try repository.getData()
        #expect(data.count > 0)
    }

}
