//
//  GnomeTableViewCell.swift
//  brastlewark
//
//  Created by Hugo Morelli on 07/11/2017.
//  Copyright © 2017 Hugo Morelli. All rights reserved.
//

import UIKit
import Kingfisher

class GnomeTableViewCell: UITableViewCell {
    
    @IBOutlet weak var gnomeImage: UIImageView!
    @IBOutlet weak var gnomeLabel: UILabel!
    
    func setInfo(gnomeName: String, gnomeImg: String ) {
        gnomeLabel.text = gnomeName
        gnomeImage.kf.setImage(with: URL(string: gnomeImg))
        gnomeImage.contentMode = UIViewContentMode.scaleAspectFill
        gnomeImage.clipsToBounds = true
        gnomeImage.layer.cornerRadius =
            (self.gnomeImage?.frame.size.height)! / 2.0
    }
    
}
