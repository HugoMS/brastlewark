//
//  GnomeIteractor.swift
//  brastlewark
//
//  Created by Hugo Morelli on 07/11/2017.
//  Copyright © 2017 Hugo Morelli. All rights reserved.
//

import Foundation
import RxSwift

class GnomeIteractor: BaseIteractor {

    override init(repository: Repository) {
        super.init(repository: repository)
    }

    func getGnomes() -> Observable<GnomeList> {
         return self.repository!.getGnomes()
    }
}
