//
//  Service.swift
//  StarWarsEncyclopedia
//
//  Created by Doni on 1/27/23.
//

import Foundation
import Combine

protocol GenericService {
    associatedtype T
    associatedtype U
    func request(from endpoint: T) -> AnyPublisher<U, APIError>
}
