//
//  PeopleViewModel.swift
//  StarWarsEncyclopedia
//
//  Created by Doni on 1/27/23.
//

import Foundation
import Combine

protocol PeopleViewModel {
    func getAllPeople()
}

class PeopleViewModelImpl: ObservableObject, PeopleViewModel {
    
    private let service: PeopleService
    
    init(service: PeopleService) {
        self.service = service
    }
    
    func getAllPeople() {
    }
}
