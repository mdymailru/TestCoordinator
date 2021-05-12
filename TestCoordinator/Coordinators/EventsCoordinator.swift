//
//  EventsCoordinator.swift
//  TestCoordinator
//
//  Created by mdy on 08.05.2021.
//

import UIKit


class EventsCoordinator: NSObject, CoordinatorPr {
  
  var childCoordinators: [CoordinatorPr] = []
  var navController: UINavigationController
  
  var testValue: Int = 0
  init(navController: UINavigationController) {
    self.navController = navController
  }
}

extension EventsCoordinator: UINavigationControllerDelegate {
  
  func start() {
    navController.delegate = self
  }
  
  func navigationController(_ navigationController: UINavigationController,
                            willShow viewController: UIViewController,
                                          animated: Bool) {
    navigationController.viewControllers.forEach({print(" \($0)")})
    // Read the view controller we’re moving from.
      guard let fromVC = navigationController.transitionCoordinator?
                        .viewController(forKey: .from) else { return }

      // Check whether our view controller array already contains that view controller.
      // If it does it means we’re pushing a different view controller on top rather than popping it, so exit.
      if navigationController.viewControllers.contains(fromVC) { return }

      // We’re still here – it means we’re popping the view controller, so we can check whether it’s a buy view controller
      if let buyVC = fromVC as? BuyVC {
          // We're popping a buy view controller; end its coordinator
          //childDidFinish(buyVC.coordinator)
        print(buyVC.kindOfSport.selectedSegmentIndex)
        self.testValue = buyVC.kindOfSport.selectedSegmentIndex
        print("Close buyVC")
      }
  }
}
  
  


//  func showVC(vc: VCForCoordinatorPr, tagTabBarItem: Int?) {
//
//    //print("EventsCoord: \(vc)")
//    vc.coordinator = self
//
//    self.navController.pushViewController(vc as! UIViewController, animated: true)
//  }
  
//func start() {

  
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


