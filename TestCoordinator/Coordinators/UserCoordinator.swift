//
//  UserCoordinator.swift
//  TestCoordinator
//
//  Created by mdy on 09.05.2021.
//

import UIKit

class UserCoordinator: CoordinatorPr, UserCoordinatorPr {
  
  var childCoordinators: [CoordinatorPr] = []
  var navController: UINavigationController
  
  func start() {
    let vc = MainViewController.initFromXib()
    vc.coordinator = self
    vc.tabBarItem = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 1)
    self.navController.pushViewController(vc, animated: false)
      
  }
  
  func loginVCShow() {
    //dd
  }
  
  init(navController: UINavigationController) {
    self.navController = navController
  }
  
  
}
