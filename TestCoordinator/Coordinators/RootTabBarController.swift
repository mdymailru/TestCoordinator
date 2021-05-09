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
    
    self.eventsTabCoordinator.start()
    self.userTabCoordinator.start()
    self.viewControllers = [self.eventsTabCoordinator.navController, self.userTabCoordinator.navController ]

        
    }
    

    

}
