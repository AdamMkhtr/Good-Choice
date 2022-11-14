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
  weak var whatProductDelegate : ProductDelegate?
  
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

  /// Know what is the product fruit or vegetable for return on the correct display.
  func knowWhatViewDisplay() {
    pastButtonView.isHidden = true
    
    if resultProduct == Type.fruit {
      didTapFruit?()
    }
    
    else if resultProduct == Type.vegetable {
      didTapVegetable?()
    }
  }

  /// Setup the gesture recognizer for the view.
  func setupTapGestureRecognizer() {
    let tapGestureFruits = UITapGestureRecognizer()
    self.pastButtonView.addGestureRecognizer(tapGestureFruits)
    tapGestureFruits.addTarget(self, action: #selector(tapPast))
  }
  
  @objc func tapPast() {
    knowWhatViewDisplay()
  }
}

//----------------------------------------------------------------------------
// MARK: - Extension What product Delegate
//----------------------------------------------------------------------------

extension NavigationViewController: ProductDelegate {
  func didKnowProduct(product: Type) {
    pastButtonView.isHidden = false
    resultProduct = product
  }
}

extension NavigationViewController: InformationNavigatonDelegate {
  func didHideTheButton() {
    pastButtonView.isHidden = true
  }
}
