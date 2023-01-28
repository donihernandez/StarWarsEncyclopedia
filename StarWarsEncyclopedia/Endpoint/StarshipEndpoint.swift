//
//  StarshipEndpoint.swift
//  StarWarsEncyclopedia
//
//  Created by Doni on 1/28/23.
//

import Foundation

enum StarshipAPI {
    case getAllStarships
}

extension StarshipAPI: APIBuilder {
    var urlRequest: URLRequest {
        return URLRequest(url: self.baseURL.appendingPathComponent(self.path))
    }
    
    var baseURL: URL {
        return BASE_URL
    }
    
    var path: String {
        switch self {
        case .getAllStarships:
            return "/starships"
        }
    }
}
