//
//  EventsCoordinator.swift
//  TestCoordinator
//
//  Created by mdy on 08.05.2021.
//

import UIKit


class EventsCoordinator: CoordinatorPr {
  
  var childCoordinators: [CoordinatorPr] = []
  var navController: UINavigationController
  
  init(navController: UINavigationController) {
    self.navController = navController
  }
}

//  func showVC(vc: VCForCoordinatorPr, tagTabBarItem: Int?) {
//
//    //print("EventsCoord: \(vc)")
//    vc.coordinator = self
//
//    self.navController.pushViewController(vc as! UIViewController, animated: true)
//  }
  
//  func start() {
//    let vc = MainEventsTabVC.initFromStoryBoard()
//    vc.coordinator = self
//    vc.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 0)
//    self.navController.pushViewController(vc, animated: false)
//  }
  
//MARK: showVC for Events
  
//  func buyVCShow() {
//    let vc = BuyVC.initFromStoryBoard()
//    vc.coordinator = self
//    self.navController.pushViewController(vc, animated: true)
//  }
//
//  func loginVCShow() {
//    let vc = LoginVC.initFromStoryBoard()
//    vc.coordinator = self
//    self.navController.pushViewController(vc, animated: true)
//  }
//
//}


