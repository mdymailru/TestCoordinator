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
}

protocol EventsCoordinatorPr: AnyObject {
  func buyVCShow()
  func loginVCShow()
}

protocol UserCoordinatorPr: AnyObject {
  func loginVCShow()
}

protocol ViewControllerInitPr {
  static func initVC() -> Self
  static func initFromXib() -> Self
}

extension ViewControllerInitPr where Self: UIViewController {
  
  static func initVC() -> Self {
  
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
