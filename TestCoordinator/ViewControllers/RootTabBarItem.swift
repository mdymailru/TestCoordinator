//
//  RootTabBarItem.swift
//  TestCoordinator
//
//  Created by mdy on 11.05.2021.
//

import UIKit

class RootTabBarItem: UITabBarItem {

  convenience init(tag: Int) {
    
    let maxItem = 2
    
    var title: [String] = []
    var image: [UIImage?] = []
    
    title.append("События")
    image.append(UIImage(systemName: "flag.circle"))
    
    title.append("Спортсмен")
    image.append(UIImage(systemName: "person.circle"))
    
    title.append("Другое...")
    image.append(UIImage(systemName: "ant.circle")) // 􀌜
        
    let safeTag = 0..<maxItem ~= tag ? tag : maxItem
  
    self.init(title: title[safeTag],
              image: image[safeTag],
                tag: safeTag)
    
}
    
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  override init() { super.init() }
}
