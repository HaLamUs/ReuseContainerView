//
//  TestContainerViewController.swift
//  testApp2
//
//  Created by Ha Lam on 4/18/17.
//  Copyright © 2017 Gotadi. All rights reserved.
//

import UIKit

protocol ContainerDelegate {
  
  func testContainer()
}

class TestContainerViewController: UIViewController {
  
  var delegate: ContainerDelegate?
  
  @IBOutlet weak var testLabel: UILabel!
  
  @IBAction func touchUpChildVC(_ sender: UIButton) {
    delegate?.testContainer()
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
}
