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
    
    func getAllPeople() {
        
    }
}
