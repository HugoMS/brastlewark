//
//  GnomeDetailContract.swift
//  brastlewark
//
//  Created by Hugo Morelli on 08/11/2017.
//  Copyright © 2017 Hugo Morelli. All rights reserved.
//

import Foundation

protocol GnomeDetailView: BaseView {
    func goToGnomeDetail(gnome: Gnome)
}

protocol GnomeDetailActionListener: BaseActionListener {
    
}
