//
//  RootTabBarController.swift
//  TestCoordinator
//
//  Created by mdy on 09.05.2021.
//

import UIKit

class RootTabBarController: UITabBarController {

  let eventsTabCoordinator = EventsCoordinator(navController: UINavigationController())
  let userTabCoordinator = UserCoordinator(navController: UINavigationController())
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    
    eventsTabCoordinator.start() //UINavControllerDelegate subscribe
    eventsTabCoordinator.showVC(for: MainEventsTabVC.initFromStoryBoard(),
                           tagTabBarItem: 0)
    if isUserLogin() {
      userTabCoordinator.showVC(for: MainUserTabVC.initFromXib(),
                      tagTabBarItem: 1)
    } else {
      userTabCoordinator.showVC(for: UserLoginVC.initFromXib(),
                      tagTabBarItem: 1)
    }
    
    viewControllers = [eventsTabCoordinator.navController,
                         userTabCoordinator.navController ]

        
    }
    
  func isUserLogin() -> Bool {
    return UserDefaults.standard.bool(forKey: "LOGIN")
  }

    

}
