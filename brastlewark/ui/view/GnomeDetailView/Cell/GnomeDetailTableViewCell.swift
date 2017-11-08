//
//  GnomeDetailTableViewCell.swift
//  brastlewark
//
//  Created by Hugo Morelli on 08/11/2017.
//  Copyright © 2017 Hugo Morelli. All rights reserved.
//

import Foundation
import UIKit
import Kingfisher

class GnomeDetailTableViewCell: UITableViewCell {
    
    @IBOutlet weak var gnomeImage: UIImageView!
    @IBOutlet weak var gnomeName: UILabel!
    @IBOutlet weak var gnomeAgeLabel: UILabel!
    @IBOutlet weak var hairLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    
    @IBOutlet weak var professionLabel: UILabel!
    @IBOutlet weak var friendsLabel: UILabel!
    
    func setInfo(gnome: Gnome) {
        gnomeName.text = gnome.name
        gnomeImage.kf.setImage(with: URL(string: gnome.thumbnail!))
        gnomeImage.contentMode = UIViewContentMode.scaleAspectFill
        gnomeImage.clipsToBounds = true
        gnomeImage.layer.cornerRadius =
            (self.gnomeImage?.frame.size.height)! / 2.0
        gnomeAgeLabel.text = String(describing: gnome.age!)
        hairLabel.text = gnome.hairColor
        weightLabel.text = String(describing: gnome.weight!)
        heightLabel.text = String(describing: gnome.height!)
        var profesionList = ""
        var friendList = ""
        for profession in gnome.professions! {
            profesionList += profession + "\n"
        }
        professionLabel.text = profesionList
        for friend in gnome.friends! {
            friendList += friend + "\n"
        }
        friendsLabel.text = friendList
    }
    
}
