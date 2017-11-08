//
//  SplashViewController.swift
//  hugo-atabix
//
//  Created by Hugo Morelli on 04/11/2017.
//  Copyright © 2017 Hugo Morelli. All rights reserved.
//

import Foundation

class SplashViewController: BaseViewController, SplashView {

    /* Outlets */
    // MARK: Section - Outlets

    /* Public Vars */
    // MARK: Section - Public Vars

    var presenter: SplashActionListener?

    /* Private Vars */
    // MARK: Section - Private Vars

    /* UIViewController */
    // MARK: Section - UIViewController

    override func viewDidLoad() {
        super.viewDidLoad()

        presenter?.viewDidLoad()
    }

    /* Protocol Splash View */
    // MARK: Section - Protocol Splash View
    
    func goToGnomeList(gnomeList: [Gnome]) {
        wireframe?.presentGnomeListScreenFrom(viewController: self, gnomeList: gnomeList)
    }

}
