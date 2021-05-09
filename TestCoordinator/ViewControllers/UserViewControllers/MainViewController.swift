//
//  MainViewController.swift
//  TestCoordinator
//
//  Created by mdy on 08.05.2021.
//

import UIKit

class MainViewController: UIViewController, ViewControllerInitPr {
  weak var coordinator: UserCoordinatorPr?
  
  @IBAction func buyTouch(_ sender: UIButton) {
//    coordinator?.buyVCShow()
  }
  
  
    override func viewDidLoad() {
        super.viewDidLoad()
//      print(self.coordinator)

        
    }


    

}
