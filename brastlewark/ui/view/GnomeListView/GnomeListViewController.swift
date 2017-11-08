//
//  GnomeListViewController.swift
//  brastlewark
//
//  Created by Hugo Morelli on 07/11/2017.
//  Copyright © 2017 Hugo Morelli. All rights reserved.
//

import Foundation
import UIKit

class GnomeListViewController: BaseViewController, GnomeListView {

    /* Outlets */
    // MARK: Section - Outlets

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var searchbar: UISearchBar!
    
    /* Public Vars */
    // MARK: Section - Public Vars

    var presenter: GnomeListActionListener?

    /* Private Vars */
    // MARK: Section - Private Vars
    var arrayGnome: [Gnome] = []
    var arrayFilterGnome: [Gnome] = []
    /* UIViewController */
    // MARK: Section - UIViewController

    override func viewDidLoad() {
        super.viewDidLoad()
        completeView()
        presenter?.viewDidLoad()
    }
    
    /* Protocol Splash View */
    // MARK: Section - Protocol Splash View

    func showList( gnomeList: [Gnome] ) {
         arrayGnome = gnomeList
        arrayFilterGnome = gnomeList
        tableView.reloadData()
    }
    /* Private Methods */
    // MARK: Section - Private Methods
    
    func completeView() {
        self.navigationItem.title = "GnomeList"
        self.navigationItem.hidesBackButton = true
        tableView.dataSource = self
        tableView.delegate = self
        searchbar.delegate = self
    }
    
    func filterGnomeByName(query: String) {
        let searchArray = arrayFilterGnome
        let results: [Gnome] = searchArray.filter({ ($0.name?.lowercased().contains(query.lowercased()))!})
        if results.count > 0 {
            arrayGnome = results
            tableView.reloadData()
        } else {
          arrayGnome = []
        }
    }
}

extension GnomeListViewController: UISearchBarDelegate {
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchText.characters.count > 3 {
            self.filterGnomeByName(query: searchText)
        } else {
            arrayGnome = arrayFilterGnome
             tableView.reloadData()
        }
    }
}

extension GnomeListViewController: UITableViewDelegate {

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
}

// MARK: - UITableViewDataSource
extension GnomeListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayGnome.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "GnomeCell",
                                                 for: indexPath) as! GnomeTableViewCell
        let gnome = arrayGnome[indexPath.row]
        cell.tag = gnome.id!
        cell.setInfo(gnomeName: gnome.name!, gnomeImg: gnome.thumbnail!)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let gnome = arrayGnome[indexPath.row]
        self.wireframe?.presentGnomeDetailScreenFrom(viewController: self, gnome: gnome)
    }
}
