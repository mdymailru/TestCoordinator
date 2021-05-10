//
//  UserCoordinator.swift
//  TestCoordinator
//
//  Created by mdy on 09.05.2021.
//

import UIKit

class UserCoordinator: CoordinatorPr {
  
  var childCoordinators: [CoordinatorPr] = []
  var navController: UINavigationController
  
//  func showVC(vc: VCForCoordinatorPr, tagTabBarItem: Int?) {
//
//    let ff = vc
//    let vcSuper = ff as! UIViewController
//
//    vc.coordinator = self
//
//    if let tag = tagTabBarItem {
//      vcSuper.tabBarItem = UITabBarItem(tabBarSystemItem: .bookmarks, tag: tag)
//      self.navController.setViewControllers([vcSuper], animated: false)
//    } else {
//
//    self.navController.pushViewController(vc as! UIViewController, animated: true)
//    }
//  }
  
//  func start() {
//
//    let vc = MainUserTabVC.initFromXib()
//
//    vc.coordinator = self
//    vc.tabBarItem = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 1)
//    self.navController.pushViewController(vc, animated: false)
//
//  }
  
  init(navController: UINavigationController) {
    self.navController = navController
  }
  
  
}
