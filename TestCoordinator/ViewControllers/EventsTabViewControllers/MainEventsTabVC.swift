//
//  MainEventsTabVC.swift
//  TestCoordinator
//
//  Created by mdy on 08.05.2021.
//

import UIKit

class MainEventsTabVC: UIViewController, VCForCoordinatorPr {
  
  weak var coordinator: CoordinatorPr?
  var monitorValue: Int = 0 {
    didSet {
      monitor.text = String(monitorValue)
    }
  }
  
  @IBOutlet weak var monitor: UILabel!
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
      print("MainVC didLoad")
           
    }
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    print("MainVC didAppear")
    print(" TestValue from Coord: \((coordinator as! EventsCoordinator).testValue)")
    monitorValue = (coordinator as! EventsCoordinator).testValue
    
    coordinator?.navController.viewControllers.forEach({print($0)})
  }
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    print("MainVC willAppear")
    
    
    
    
  }


}

