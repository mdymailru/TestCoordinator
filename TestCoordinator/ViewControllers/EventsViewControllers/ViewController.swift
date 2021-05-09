//
//  ViewController.swift
//  TestCoordinator
//
//  Created by mdy on 08.05.2021.
//

import UIKit

class ViewController: UIViewController, ViewControllerInitPr {
  weak var coordinator: EventsCoordinatorPr?
  
  @IBAction func buyTouch(_ sender: UIButton) {
    print(self.coordinator)
    self.coordinator?.buyVCShow()
    
  }
  
  @IBAction func loginTouch(_ sender: UIButton) {
    self.coordinator?.loginVCShow()
  }
  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("VC didLoad")
      
    }


}

