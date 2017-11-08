//
//  Wireframe.swift
//  hugo-atabix
//
//  Created by Hugo Morelli on 04/11/2017.
//  Copyright © 2017 Hugo Morelli. All rights reserved.
//

import UIKit

open class Wireframe: Instantiator {
    
    fileprivate var window: UIWindow?
    
    // App Navigation
    // MARK: App Navigation
    
    func configureAppNavigationWithWindow() {
        let splashVC = SplashViewController(nibName: nil, bundle: nil)
        splashVC.wireframe = self
        splashVC.presenter = SplashPresenter(splashVC, iteractor: getGnomeIteractor())
        let splashNavVC = UINavigationController(rootViewController: splashVC)
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window!.rootViewController = splashNavVC
        self.window!.makeKeyAndVisible()
    }
    
    func presentGnomeListScreenFrom(viewController: UIViewController, gnomeList: [Gnome]) {
        
        let gnomeListVC = Wireframe.getViewControllerFromStoryBoard("GnomeListViewController",
                                                                  storyBoardName:
            Wireframe.storyMain) as! GnomeListViewController
        gnomeListVC.wireframe = self
        gnomeListVC.presenter = GnomeListViewPresenter(gnomeListVC, iteractor:
            getGnomeIteractor(), gnomeList: gnomeList)
        viewController.hidesBottomBarWhenPushed = true
        viewController.navigationController?.pushViewController(gnomeListVC, animated: true)
        viewController.hidesBottomBarWhenPushed = false
    }
    
    func presentGnomeDetailScreenFrom(viewController: UIViewController, gnome: Gnome) {
        
        let gnomeDetailVC = Wireframe.getViewControllerFromStoryBoard("GnomeDetailViewController",
                                                                    storyBoardName:
            Wireframe.storyMain) as! GnomeDetailViewController
        gnomeDetailVC.wireframe = self
        gnomeDetailVC.presenter = GnomeDetailPresenter(gnomeDetailVC, iteractor: getGnomeIteractor(), gnome: gnome)
        viewController.hidesBottomBarWhenPushed = true
        viewController.navigationController?.pushViewController(gnomeDetailVC, animated: true)
        viewController.hidesBottomBarWhenPushed = false
    }
    
}
