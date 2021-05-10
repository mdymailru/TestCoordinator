//
//  MainEventsTabVC.swift
//  TestCoordinator
//
//  Created by mdy on 08.05.2021.
//

import UIKit

class MainEventsTabVC: UIViewController, VCForCoordinatorPr {
  
  weak var coordinator: CoordinatorPr?
  
  //weak var coordinator: EventsCoordinatorPr?
  
  @IBAction func buyTouch(_ sender: UIButton) {
    
    self.coordinator?.showVC(for: BuyVC.initFromStoryBoard(), tagTabBarItem: nil)
    
  }
  
  @IBAction func loginTouch(_ sender: UIButton) {
    //self.coordinator?.loginVCShow()
    self.coordinator?.showVC(for: SecondVC.initFromStoryBoard(), tagTabBarItem: nil)
  }
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

