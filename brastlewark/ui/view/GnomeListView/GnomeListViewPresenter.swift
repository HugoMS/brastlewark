//
//  GnomeListViewPresenter.swift
//  brastlewark
//
//  Created by Hugo Morelli on 07/11/2017.
//  Copyright © 2017 Hugo Morelli. All rights reserved.
//

import Foundation

class GnomeListViewPresenter: NSObject, GnomeListActionListener {
    
    /* Private Vars */
    // MARK: Section - Private Vars
    private var view: GnomeListView?
    private var gnomeIteractor: GnomeIteractor?
    private var arrayGnome:[Gnome]?
    /* Constructor */
    // MARK: Section - Constructor
    
    init (_ view: GnomeListView, iteractor: GnomeIteractor, gnomeList: [Gnome]) {
        self.view = view
        self.gnomeIteractor = iteractor
        self.arrayGnome = gnomeList
        
    }
    
    /* Protocol Splash ActionListener */
    // MARK: Section - Protocol Splash ActionListener
    
    func viewDidLoad() {
        self.view?.showList(gnomeList: arrayGnome!)
    }
    /* Delegates */
    // MARK: Section - Delegates
    
    /* Private Methods */
    // MARK: Section - Private Methods
    
}
