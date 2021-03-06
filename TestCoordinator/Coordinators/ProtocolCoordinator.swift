//
//  ProtocolCoordinator.swift
//  TestCoordinator
//
//  Created by mdy on 09.05.2021.
//

import UIKit

protocol CoordinatorPr: AnyObject {
  var childCoordinators: [CoordinatorPr] { get set}
  var navController: UINavigationController { get set }
    
  func start()
  func showVC(for vc: VCForCoordinatorPr, tagTabBarItem: Int?)
}

extension CoordinatorPr {
  
  func showVC(for vc: VCForCoordinatorPr, tagTabBarItem: Int?) {
    
    let vcSuper = vc as! UIViewController
    vc.coordinator = self
    
    if let tag = tagTabBarItem {
        //navController.delegate = self as! UINavigationControllerDelegate
        vcSuper.tabBarItem = RootTabBarItem(tag: tag)
        self.navController.setViewControllers([vcSuper], animated: false)
    } else {
        self.navController.pushViewController(vcSuper, animated: true)
    }
  }
  
  func start() {
    // no code, override if coordinator class need UINavControllerDelegate
  }
}

protocol VCForCoordinatorPr: AnyObject {
  var coordinator: CoordinatorPr? { get set }
  
  static func initFromStoryBoard() -> Self
  static func initFromXib() -> Self
}

extension VCForCoordinatorPr where Self: UIViewController {
  
  static func initFromStoryBoard() -> Self {
    let fullName = NSStringFromClass(Self.self)
    let className =  fullName.components(separatedBy: ".")[1]
    let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
    return storyboard.instantiateViewController(withIdentifier: className) as! Self
  }
  
  static func initFromXib() -> Self {
    let fullName = NSStringFromClass(Self.self)
    let className =  fullName.components(separatedBy: ".")[1]
    return self.init(nibName: className, bundle: nil)
  }
}
