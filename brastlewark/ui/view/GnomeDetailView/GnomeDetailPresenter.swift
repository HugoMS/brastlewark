//
//  GnomeDetailPresenter.swift
//  brastlewark
//
//  Created by Hugo Morelli on 08/11/2017.
//  Copyright © 2017 Hugo Morelli. All rights reserved.
//

import Foundation

class GnomeDetailPresenter: NSObject, GnomeDetailActionListener {
    
    /* Private Vars */
    // MARK: Section - Private Vars
    private var view: GnomeDetailView?
    private var gnomeIteractor: GnomeIteractor?
    private var gnome: Gnome?
    /* Constructor */
    // MARK: Section - Constructor
    
    init (_ view: GnomeDetailView, iteractor: GnomeIteractor, gnome: Gnome) {
        self.view = view
        self.gnomeIteractor = iteractor
        self.gnome = gnome
        
    }
    
    /* Protocol Splash ActionListener */
    // MARK: Section - Protocol Splash ActionListener
    
    func viewDidLoad() {
        
        self.view?.goToGnomeDetail(gnome: gnome!)
    }
    /* Delegates */
    // MARK: Section - Delegates
    
    /* Private Methods */
    // MARK: Section - Private Methods
    
}
