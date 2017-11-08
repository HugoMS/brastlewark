//
//  GnomeListViewContract.swift
//  brastlewark
//
//  Created by Hugo Morelli on 07/11/2017.
//  Copyright © 2017 Hugo Morelli. All rights reserved.
//

import Foundation

protocol GnomeListView: BaseView {
    
    func showList(gnomeList: [Gnome])
}

protocol GnomeListActionListener: BaseActionListener {
    
}
