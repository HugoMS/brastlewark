//
//  GnomeDetailViewController.swift
//  brastlewark
//
//  Created by Hugo Morelli on 08/11/2017.
//  Copyright © 2017 Hugo Morelli. All rights reserved.
//

import Foundation
import UIKit

class GnomeDetailViewController: BaseViewController, GnomeDetailView {
    /* Outlets */
    // MARK: Section - Outlets
    
    @IBOutlet weak var tableView: UITableView!
    /* Public Vars */
    // MARK: Section - Public Vars
    
    var presenter: GnomeDetailActionListener?
    var gnomeDetail: Gnome?
    /* Private Vars */
    // MARK: Section - Private Vars
    
    /* UIViewController */
    // MARK: Section - UIViewController
    
    override func viewDidLoad() {
        super.viewDidLoad()
        completeView()
        presenter?.viewDidLoad()
    }
    
    /* Protocol Splash View */
    // MARK: Section - Protocol Splash View
    
    func goToGnomeDetail(gnome: Gnome ) {
        gnomeDetail = gnome
        tableView.reloadData()
    }

    /* Private Methods */
    // MARK: Section - Private Methods
    
    func completeView() {
        tableView.dataSource = self
        tableView.delegate = self
        self.navigationItem.title = "Gnome Detail"
        
    }

}

extension GnomeDetailViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return self.view.frame.height
    }
}

// MARK: - UITableViewDataSource
extension GnomeDetailViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "GnomeDetailCell",
                                                 for: indexPath) as! GnomeDetailTableViewCell
        
        cell.setInfo(gnome: gnomeDetail!)
        return cell
    }
    
}
