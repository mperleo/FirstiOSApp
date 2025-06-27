//
//  Model.swift
//  FirstApp
//
//  Created by Miguel Pérez León on 27/6/25.
//

import Foundation

struct StarCardDto: Codable {
    let nombre: String
    let raza: String
    let descripcion: String
    let planetaOrigen: String
    let epoca: String
    let afiliacion: String
    let habilidades: String
    let armas: String
    let id: Int
    let imagen: String
}

extension StarCardDto {
    var toCard: StarCard {
        StarCard(id: id,
                 nombre: nombre,
                 raza: raza,
                 descripcion: descripcion,
                 planetaOrigen: planetaOrigen, epoca: epoca,
                 afiliacion: afiliacion.components(separatedBy: ", ").map(\.capitalized),
                 habilidades: habilidades.components(separatedBy: ", ").map(\.capitalized),
                 armas: armas.components(separatedBy: ", ").map(\.capitalized),
                 imagen: imagen)
    }
}

struct StarCard: Identifiable, Hashable {
    let id: Int
    let nombre: String
    let raza: String
    let descripcion: String
    let planetaOrigen: String
    let epoca: String
    let afiliacion: [String]
    let habilidades: [String]
    let armas: [String]
    let imagen: String
}

extension StarCard {
    static let test = StarCard(id: 6629,
                               nombre: "Luke Skywalker",
                               raza: "Humano",
                               descripcion: "Héroe de la Alianza Rebelde y Caballero Jedi. Hijo de Anakin Skywalker y Padmé Amidala.",
                               planetaOrigen: "Tatooine",
                               epoca: "Era del Imperio Galáctico",
                               afiliacion: ["Alianza Rebelde", "Nueva República"],
                               habilidades: ["Uso de la Fuerza", "Combate con sable de luz", "Pilotaje"],
                               armas: ["Sable de luz"],
                               imagen: "lukeskywalker")}
