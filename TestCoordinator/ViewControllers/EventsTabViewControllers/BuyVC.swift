//
//  BuyViewController.swift
//  TestCoordinator
//
//  Created by mdy on 08.05.2021.
//

import UIKit

class BuyVC: UIViewController, VCForCoordinatorPr {
  
  @IBOutlet
  weak var kindOfSport: UISegmentedControl!
  weak var coordinator: CoordinatorPr?
  
  //weak var coordinator: EventsCoordinatorPr?
  
    override func viewDidLoad() {
        super.viewDidLoad()
      print("ByVC diLoad")
      coordinator?.navController.viewControllers.forEach({print($0)})

        // Do any additional setup after loading the view.
    }
    

   

}
