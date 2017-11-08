//
//  SplashPresenter.swift
//  hugo-atabix
//
//  Created by Hugo Morelli on 04/11/2017.
//  Copyright © 2017 Hugo Morelli. All rights reserved.
//

import Foundation

class SplashPresenter: NSObject, SplashActionListener {

    /* Private Vars */
    // MARK: Section - Private Vars
    private var view: SplashView?
    private var gnomeIteractor: GnomeIteractor?
    /* Constructor */
    // MARK: Section - Constructor

    init (_ view: SplashView, iteractor: GnomeIteractor) {
        self.view = view
        self.gnomeIteractor = iteractor

    }

    /* Protocol Splash ActionListener */
    // MARK: Section - Protocol Splash ActionListener

    func viewDidLoad() {
        
        _ = gnomeIteractor?.getGnomes().subscribe { event in
            switch event {
            case .next(let gnomeList):
                print(gnomeList)
                self.view?.goToGnomeList(gnomeList: gnomeList.gnomeList!)
                break
            case .error(let error):
                NSLog("Error %@", error.localizedDescription)
                break
            case .completed:
                break
            }
        }

    }
    /* Delegates */
    // MARK: Section - Delegates

    /* Private Methods */
    // MARK: Section - Private Methods

}
