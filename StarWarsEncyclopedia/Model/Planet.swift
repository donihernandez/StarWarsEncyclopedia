//
//  Planet.swift
//  StarWarsEncyclopedia
//
//  Created by Doni on 1/25/23.
//

import Foundation

struct Planet: Identifiable, Codable {
    var id: UUID = UUID()
    let name, rotationPeriod, orbitalPeriod, diameter: String
       let climate, gravity, terrain, surfaceWater: String
       let population: String
       let residents, films: [String]
       let created, edited: String
       let url: String
}
