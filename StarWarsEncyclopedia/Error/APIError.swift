//
//  APIError.swift
//  StarWarsEncyclopedia
//
//  Created by Doni on 1/27/23.
//

import Foundation

enum APIError {
    case decodingError
    case errorCode(Int)
    case unknown
}

extension APIError: LocalizedError {
    
    var errorDescription: String? {
        switch self {
        case .decodingError:
            return "Failed to decode from the service."
        case .errorCode(let code):
            return "\(code) - Something went wrong."
        case .unknown:
            return "The error is unknown"
        }
    }
    
}
