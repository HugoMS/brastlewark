//
//  GlobalParser.swift
//  brastlewark
//
//  Created by Hugo Morelli on 07/11/2017.
//  Copyright © 2017 Hugo Morelli. All rights reserved.
//

import Foundation

class GlobalParser {

    static func getGnomeListFromGnomeResponse(response: GnomeResponse) -> GnomeList {

        let gnomeList = GnomeList()
        for egnome in response.gnomeArray! {
            let gnome = GlobalParser.getGnomeFromEGnome(egnome: egnome)
            gnomeList.gnomeList?.append(gnome)
        }
        return gnomeList
    }

    static func getGnomeFromEGnome(egnome: EGnome) -> Gnome {

        let gnome = Gnome()
        gnome.id = egnome.id
        gnome.name = egnome.name
        gnome.thumbnail = egnome.thumbnail
        gnome.age = egnome.age
        gnome.weight = egnome.weight
        gnome.height = egnome.height
        gnome.hairColor = egnome.hairColor
        gnome.professions = egnome.professions
        gnome.friends = egnome.friends

        return gnome
    }

}
