//
//  Repository.swift
//  SwiftTest
//
//  Created by Ramses Velasquez on 2/17/17.
//  Copyright © 2017 CotusCompany. All rights reserved.
//

import Foundation
import RxSwift

protocol Repository {

    // MARK: - Network

    func getGnomes() -> Observable<GnomeList>

    // MARK: - Local

//    func getTipsShown() -> Bool

    // MARK: - Session

  //  func setSessionLocationsList(locationsList: LocationsList)

}
