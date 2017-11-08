//
//  DependencyProvider.swift
//  hugo-atabix
//
//  Created by Hugo Morelli on 04/11/2017.
//  Copyright © 2017 Hugo Morelli. All rights reserved.
//

import Foundation

open class DependencyProvider {

    func getRepository() -> Repository {
        return RepositoryImpl(localManager: LocalManager())
    }

    func getGnomeIteractor() -> GnomeIteractor {
        return GnomeIteractor(repository: getRepository())
    }

}
