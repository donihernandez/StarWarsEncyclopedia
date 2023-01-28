//
//  VehicleEndpoint.swift
//  StarWarsEncyclopedia
//
//  Created by Doni on 1/27/23.
//

import Foundation

enum VehicleAPI {
    case getAllVehicles
}

extension VehicleAPI: APIBuilder {
    var urlRequest: URLRequest {
        return URLRequest(url: self.baseURL.appendingPathComponent(self.path))
    }
    
    var baseURL: URL {
        return BASE_URL
    }
    
    var path: String {
        switch self {
        case .getAllVehicles:
            return "/vehicles"
        }
    }
    
    
}
