//
//  Vehicle.swift
//  StarWarsEncyclopedia
//
//  Created by Doni on 1/25/23.
//

import Foundation

struct Vehicle: Identifiable, Codable {
    var id: UUID = UUID()
    let name, model, manufacturer, costInCredits: String
    let length, maxAtmospheringSpeed, crew, passengers: String
    let cargoCapacity, consumables, vehicleClass: String
    let pilots: [String]?
    let films: [String]
    let created: Date
    let edited: String
    let url: String
}
