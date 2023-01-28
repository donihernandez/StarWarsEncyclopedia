//
//  TestViewModel.swift
//  StarWarsEncyclopedia
//
//  Created by Doni on 1/27/23.
//

import Foundation
import Combine

class Test: GenericServiceImpl<PeopleAPI, People> {
    func getPeople() {
        request(from: <#T##APIBuilder#>)
    }
}
