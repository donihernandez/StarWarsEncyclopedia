//
//  PeopleEndpoint.swift
//  StarWarsEncyclopedia
//
//  Created by Doni on 1/27/23.
//

import Foundation

enum PeopleAPI {
    case getAllPeople
}

extension PeopleAPI: APIBuilder {

    var baseURL: URL {
        return BASE_URL
    }
    
    var path: String {
        switch self {
        case .getAllPeople:
            return "/people"
        }
    }
    
    var urlRequest: URLRequest {
        return URLRequest(url: BASE_URL.appendingPathComponent(self.path))
    }
}
