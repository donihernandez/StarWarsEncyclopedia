//
//  PlanetEndpoint.swift
//  StarWarsEncyclopedia
//
//  Created by Doni on 1/27/23.
//

import Foundation

enum PlanetAPI {
    case getAllPlanets
}

extension PlanetAPI: APIBuilder {
    var urlRequest: URLRequest {
        return URLRequest(url: self.baseURL.appendingPathComponent(self.path))
    }
    
    var baseURL: URL {
        return BASE_URL
    }
    
    var path: String {
        switch self {
        case .getAllPlanets:
            return "/planets"
        }
    }
}
