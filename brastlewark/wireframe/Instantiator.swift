//
//  Instantiator.swift
//  hugo-atabix
//
//  Created by Hugo Morelli on 04/11/2017.
//  Copyright © 2017 Hugo Morelli. All rights reserved.
//

import UIKit

open class Instantiator: DependencyProvider {

    static let storyMain = "Main"

    // MARK: Helpers

    static func getVCFromStoryBoard<Subject>(_ viewControllerClass: Subject,
                                             storyBoardName: String) -> UIViewController {
        let storyBoard = UIStoryboard(name: storyBoardName, bundle: nil)
        return storyBoard.instantiateViewController(withIdentifier: String(describing: viewControllerClass))
    }

    static func getViewControllerFromStoryBoard(_ viewControllerIdentifier: String,
                                                storyBoardName: String) -> UIViewController {
        let storyBoard = UIStoryboard(name: storyBoardName, bundle: nil)
        return storyBoard.instantiateViewController(withIdentifier: viewControllerIdentifier)
    }

}
