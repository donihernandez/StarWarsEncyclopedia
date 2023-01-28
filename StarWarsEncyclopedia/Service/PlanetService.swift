//
//  PlanetService.swift
//  StarWarsEncyclopedia
//
//  Created by Doni on 1/27/23.
//

import Foundation
import Combine

struct PlanetService: GenericService {
    func request(from endpoint: PlanetAPI) -> AnyPublisher<Planet, APIError> {
        
        let jsonDecoder = JSONDecoder()
        jsonDecoder.dateDecodingStrategy = .iso8601
        
        return URLSession
            .shared
            .dataTaskPublisher(for: endpoint.urlRequest)
            .receive(on: DispatchQueue.main)
            .mapError { _ in APIError.unknown }
            .flatMap { data, response -> AnyPublisher<Planet,APIError> in
                guard let response = response as? HTTPURLResponse else {
                    return Fail(error: APIError.unknown)
                        .eraseToAnyPublisher()
                }
                
                if (200...299).contains(response.statusCode) {
                    return Just(data)
                        .decode(type: Planet.self, decoder: jsonDecoder)
                        .mapError { _ in APIError.decodingError}
                        .eraseToAnyPublisher()
                } else {
                    return Fail(error: APIError.errorCode(response.statusCode))
                        .eraseToAnyPublisher()
                }
            }
            .eraseToAnyPublisher()
    }
}
