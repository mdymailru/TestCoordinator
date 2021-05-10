//
//  UserLoginVC.swift
//  TestCoordinator
//
//  Created by mdy on 10.05.2021.
//

import UIKit

class UserLoginVC: UIViewController, VCForCoordinatorPr {
  
  weak var coordinator: CoordinatorPr?
  
  @IBOutlet
  weak var loginLabel: UIButton!
  
  //weak var coordinator: UserCoordinatorPr?
  
  @IBAction
  func buyTouch(_ sender: UIButton) {
    //coordinator?.showVC(vc: MainUserTabVC.initFromXib(), tagTabBarItem: nil)
    if UserDefaults.standard.bool(forKey: "LOGIN") {
      UserDefaults.standard.set(false, forKey: "LOGIN")
      loginLabel.setTitle("LOGIN", for: .normal)
      view.backgroundColor = .red
      //coordinator?.navController.setViewControllers([UserLoginVC.initFromXib()], animated: false)
      coordinator?.showVC(for: UserLoginVC.initFromXib(), tagTabBarItem: 1)
    } else {
      UserDefaults.standard.set(true, forKey: "LOGIN")
      loginLabel.setTitle("LOGOUT", for: .normal)
      view.backgroundColor = .green
      
      coordinator?.showVC(for: MainUserTabVC.initFromXib(), tagTabBarItem: 1)
      
      
//      coordinator?.showVC(vc: MainUserTabVC.initFromXib(), tagTabBarItem: 1)
    }
  
  }
  
    override func viewDidLoad() {
        super.viewDidLoad()
      view.backgroundColor = .red
      
      
      if UserDefaults.standard.bool(forKey: "LOGIN") {
        loginLabel.setTitle("LOGOUT", for: .normal)
        view.backgroundColor = .green
      }
//      print(self.coordinator)

        
    }


}
