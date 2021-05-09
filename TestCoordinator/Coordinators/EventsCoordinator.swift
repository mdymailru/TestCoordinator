//
//  EventsCoordinator.swift
//  TestCoordinator
//
//  Created by mdy on 08.05.2021.
//

import UIKit


class EventsCoordinator: CoordinatorPr, EventsCoordinatorPr {
  
  var childCoordinators: [CoordinatorPr] = []
  var navController: UINavigationController
  
  init(navController: UINavigationController) {
    self.navController = navController
  }
  
  func start() {
    let vc = ViewController.initVC()
    vc.coordinator = self
    vc.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 0)
    self.navController.pushViewController(vc, animated: false)
  }
    
  func buyVCShow() {
    let vc = BuyVC.initVC()
    vc.coordinator = self
    self.navController.pushViewController(vc, animated: true)
  }
  
  func loginVCShow() {
    let vc = LoginVC.initVC()
    vc.coordinator = self
    self.navController.pushViewController(vc, animated: true)
  }
  
}


