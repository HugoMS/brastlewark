//
//  SplashContract.swift
//  hugo-atabix
//
//  Created by Hugo Morelli on 04/11/2017.
//  Copyright © 2017 Hugo Morelli. All rights reserved.
//

import Foundation

protocol SplashView: BaseView {
    func goToGnomeList(gnomeList: [Gnome])
}

protocol SplashActionListener: BaseActionListener {

}
