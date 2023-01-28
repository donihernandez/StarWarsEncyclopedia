//
//  SpeciesEndpoint.swift
//  StarWarsEncyclopedia
//
//  Created by Doni on 1/28/23.
//

import Foundation

enum SpeciesAPI {
    case getAllSpecies
}

extension SpeciesAPI: APIBuilder {
    var urlRequest: URLRequest {
        return URLRequest(url: self.baseURL.appendingPathComponent(self.path))
    }
    
    var baseURL: URL {
        return BASE_URL
    }
    
    var path: String {
        switch self {
        case .getAllSpecies:
            return "/species"
        }
    }
}
