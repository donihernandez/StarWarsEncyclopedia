//
//  Starship.swift
//  StarWarsEncyclopedia
//
//  Created by Doni on 1/25/23.
//

import Foundation

struct Starship: Identifiable, Codable {
    var id: UUID = UUID()
    let name, model, manufacturer, costInCredits: String
    let length, maxAtmospheringSpeed, crew, passengers: String
    let cargoCapacity, consumables, hyperdriveRating, mglt: String
    let starshipClass: String
    let pilots: [String]?
    let films: [String]
    let created, edited: String
    let url: String
}
