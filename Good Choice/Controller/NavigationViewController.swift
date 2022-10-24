//
//  NavigationViewController.swift
//  Good Choice
//
//  Created by Adam Mokhtar on 27/09/2022.
//

import UIKit

class NavigationViewController: UIViewController {

  //----------------------------------------------------------------------------
  // MARK: - Properties
  //----------------------------------------------------------------------------

  weak var navigationDelegate: NavigationDelegate?
  weak var whatProductDelegate : WhatProductDelegate?

  var didTapFruit: (() -> Void)?
  var didTapVegetable: (() -> Void)?

  var resultProduct: Type?

  //----------------------------------------------------------------------------
  // MARK: - Outlets
  //----------------------------------------------------------------------------

  @IBOutlet weak var pastButtonView: UIView!
  
  //----------------------------------------------------------------------------
  // MARK: - Init
  //----------------------------------------------------------------------------

  override func viewDidLoad() {
    super.viewDidLoad()
    setupTapGestureRecognizer()
    pastButtonView.isHidden = true
  }

  //----------------------------------------------------------------------------
  // MARK: - Methods
  //----------------------------------------------------------------------------

  func knowWhatViewDisplay() {

    if resultProduct == Type.fruit {
      pastButtonView.isHidden = true
      didTapFruit?()
    }

    else if resultProduct == Type.vegetable {
      pastButtonView.isHidden = true
      didTapVegetable?()
    }

  }

  func setupTapGestureRecognizer() {
    let tapGestureFruits = UITapGestureRecognizer()
    self.pastButtonView.addGestureRecognizer(tapGestureFruits)
    tapGestureFruits.addTarget(self, action: #selector(tapPast))
  }

  @objc func tapPast() {
    knowWhatViewDisplay()
  }

}

extension NavigationViewController: WhatProductDelegate {
  func didKnowWhatProduct(product: Type) {
    pastButtonView.isHidden = false
    resultProduct = product
  }


}
