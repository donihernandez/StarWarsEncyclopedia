//
//  FilmEndpoint.swift
//  StarWarsEncyclopedia
//
//  Created by Doni on 1/27/23.
//

import Foundation

enum FilmAPI {
    case getAllFilms
}

extension FilmAPI: APIBuilder {
    var urlRequest: URLRequest {
        return URLRequest(url: self.baseURL.appendingPathComponent(self.path))
    }
    
    var baseURL: URL {
        return BASE_URL
    }
    
    var path: String {
        switch self {
        case .getAllFilms:
            return "/films"
        }
    }
    
    
}
