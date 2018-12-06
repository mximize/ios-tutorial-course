//
//  ViewController.swift
//  Tutorial
//
//  Created by Witchayarot Jantana on 6/12/2561 BE.
//  Copyright © 2561 WiCommerce. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  struct Params {
    let category: UIElement
    let text: String
    let color: UIColor
  }
  
  enum UIElement {
    case label
    case button
  }
  
  @IBOutlet weak var titleLabel: UILabel!
  @IBOutlet weak var okButton: UIButton!
  
  var isTapButton: Bool = false
  
  override func viewDidLoad() {
    super.viewDidLoad()
    let label: Params = Params(category: .label, text: "Hello World", color: .green)
    let button: Params = Params(category: .button, text: "OMG", color: .cyan)
    changeText(params: label)
    changeText(params: button)
  }
  
  @IBAction func changeTextAction(_ sender: Any) {
    let text: String = isTapButton ? "Red" : "Blue"
    let color: UIColor = isTapButton ? UIColor.red : UIColor.blue
    let label: Params = Params(category: .label, text: text, color: color)
    changeText(params: label)
    isTapButton = !isTapButton
  }
  
  func changeText(params: Params) {
    switch params.category {
    case .label:
      titleLabel.text = params.text
      titleLabel.textColor = params.color
    case .button:
      okButton.setTitle(params.text, for: .normal)
      okButton.setTitleColor(params.color, for: .normal)
    }
  }
}

