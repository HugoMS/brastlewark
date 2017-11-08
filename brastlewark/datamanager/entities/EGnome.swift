//
//  EGnome.swift
//  brastlewark
//
//  Created by Hugo Morelli on 07/11/2017.
//  Copyright © 2017 Hugo Morelli. All rights reserved.
//

import ObjectMapper

class EGnome: Mappable {

    // MARK: - Properties
    var id: Int?
    var name: String?
    var thumbnail: String?
    var age: Int?
    var weight: Float?
    var height: Float?
    var hairColor: String?
    var professions: [String]?
    var friends: [String]?

    required init?(map: Map) {

    }

    func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        thumbnail <- map["thumbnail"]
        age <- map["age"]
        weight <- map["weight"]
        height <- map["height"]
        hairColor <- map["hair_color"]
        professions <- map["professions"]
        friends <- map["friends"]

    }

}
