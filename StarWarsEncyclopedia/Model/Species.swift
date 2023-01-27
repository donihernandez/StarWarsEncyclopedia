//
//  File.swift
//  StarWarsEncyclopedia
//
//  Created by Doni on 1/25/23.
//

import Foundation

struct Species: Identifiable, Codable {
    var id: UUID = UUID()
    let name, classification, designation, averageHeight: String
    let skinColors, hairColors, eyeColors, averageLifespan: String
    let homeworld: String
    let language: String
    let people, films: [String]
    let created, edited: String
    let url: String
}
