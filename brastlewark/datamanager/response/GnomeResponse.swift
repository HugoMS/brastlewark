//
//  GnomeResponse.swift
//  brastlewark
//
//  Created by Hugo Morelli on 07/11/2017.
//  Copyright © 2017 Hugo Morelli. All rights reserved.
//

import ObjectMapper

class GnomeResponse: BaseResponse {

    var gnomeArray: [EGnome]?

    override init() {
        super.init()
    }

    required init?(map: Map) {
        super.init(map: map)
    }

    // Mappable
    override func mapping(map: Map) {
        super.mapping(map: map)
        gnomeArray  <- map["Brastlewark"]
    }

}
