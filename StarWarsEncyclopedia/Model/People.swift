//
//  People.swift
//  StarWarsEncyclopedia
//
//  Created by Doni on 1/25/23.
//

import Foundation

struct People: Identifiable, Codable {
    var id: UUID = UUID()
    let name, height, mass, hairColor: String
    let skinColor, eyeColor, birthYear, gender: String
    let homeworld: String
    let films, species, vehicles, starships: [String]
    let created, edited: String
    let url: String
}
