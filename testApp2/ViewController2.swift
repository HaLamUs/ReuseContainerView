//
//  ViewController2.swift
//  testApp2
//
//  Created by Ha Lam on 4/18/17.
//  Copyright © 2017 Gotadi. All rights reserved.
//

import UIKit

class ViewController2: UIViewController, ContainerDelegate {
  
  @IBOutlet weak var container: UIView!
  
  var childVC: TestContainerViewController?

  
  override func viewDidLoad() {
    super.viewDidLoad()
    let storyBoard = UIStoryboard(name: "Main", bundle: nil)
    childVC = storyBoard.instantiateViewController(withIdentifier: "test") as? TestContainerViewController
    childVC?.delegate = self
    
    self.addChildViewController(childVC!)
    childVC?.view.frame = CGRect(x: 0, y: 0, width: self.container.frame.size.width, height: self.container.frame.size.height)
    container.addSubview(childVC!.view)
    childVC?.didMove(toParentViewController: self)
    
  }
  
  func testContainer() {
    print("")
  }
  
}
