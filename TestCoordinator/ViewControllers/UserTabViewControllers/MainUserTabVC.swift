//
//  MainViewController.swift
//  TestCoordinator
//
//  Created by mdy on 08.05.2021.
//

import UIKit

class MainUserTabVC: UIViewController, VCForCoordinatorPr {
  
  weak var coordinator: CoordinatorPr?
  
    
  //weak var coordinator: UserCoordinatorPr?
  
  @IBAction func buyTouch(_ sender: UIButton) {
    coordinator?.showVC(for: UserLoginVC.initFromXib(),
             tagTabBarItem: nil)
    
  }
  
  
    override func viewDidLoad() {
        super.viewDidLoad()
//      print(self.coordinator)

        
    }


    

}
