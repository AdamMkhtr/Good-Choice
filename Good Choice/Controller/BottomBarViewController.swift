//
//  BottomBarViewController.swift
//  Good Choice
//
//  Created by Adam Mokhtar on 26/09/2022.
//

import UIKit

class BottomBarViewController: UIViewController {

  //----------------------------------------------------------------------------
  // MARK: - Properties
  //----------------------------------------------------------------------------

  weak var delegate: BottomBarDelegate?
  weak var delegateNavigation: InformationNavigatonDelegate?
  var didTapFruit: (() -> Void)?
  var didTapVegetable: (() -> Void)?

  //----------------------------------------------------------------------------
  // MARK: - Outlet
  //----------------------------------------------------------------------------

  @IBOutlet weak var légumeView: UIView!
  @IBOutlet weak var fruitView: UIView!
  @IBOutlet weak var bottombarView: UIView!
  @IBOutlet weak var fruitsLabel: UILabel!
  @IBOutlet weak var vegetableLabel: UILabel!
  @IBOutlet weak var vegetableImageView: UIImageView!
  @IBOutlet weak var fruitImageView: UIImageView!

  //----------------------------------------------------------------------------
  // MARK: - Init
  //----------------------------------------------------------------------------

  override func viewDidLoad() {
    super.viewDidLoad()
    setupCornerRadius()
  }

  override func viewWillAppear(_ animated: Bool) {
    setupTapGestureRecognizer()
  }

  //----------------------------------------------------------------------------
  // MARK: - Setup
  //----------------------------------------------------------------------------

  /// setup corner radius for the bottom bar
  func setupCornerRadius() {
    bottombarView.clipsToBounds = true
    bottombarView.layer.cornerRadius = 35
    bottombarView.layer.borderWidth = 0
  }

  /// setup the gesture recognizer for fruits and vegetables buttton
  func setupTapGestureRecognizer() {
    let tapGestureFruits = UITapGestureRecognizer()
    self.fruitView.addGestureRecognizer(tapGestureFruits)
    tapGestureFruits.addTarget(self, action: #selector(tapFruits))
    
    let tapGestureLégumes = UITapGestureRecognizer()
    self.légumeView.addGestureRecognizer(tapGestureLégumes)
    tapGestureLégumes.addTarget(self, action: #selector(tapVegetable))
  }

  //----------------------------------------------------------------------------
  // MARK: - Methods
  //----------------------------------------------------------------------------

  @objc func tapFruits() {
    recolorAllView()
    fruitsLabel.textColor =  #colorLiteral(red: 0.5764705882, green: 0.3803921569, blue: 0.5960784314, alpha: 1)
    fruitImageView.image = UIImage(named: "FruitsActivate")
    delegate?.didLauchRequestFruits()
    didTapFruit?()
    delegateNavigation?.didHideTheButton()
  }

  @objc func tapVegetable() {
    delegate?.didLauchRequestVegetables()
    recolorAllView()
    vegetableLabel.textColor =  #colorLiteral(red: 0.5764705882, green: 0.3803921569, blue: 0.5960784314, alpha: 1)
    vegetableImageView.image = UIImage(named: "legumesActivate")
    didTapVegetable?()
    delegateNavigation?.didHideTheButton()
  }

  /// Recolor the view on white and change the icon in white when the button is unused.
  private func recolorAllView() {
    let selectedLabels: [UILabel] =
    [fruitsLabel, vegetableLabel]
    for selectedLabel in selectedLabels {
      selectedLabel.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    fruitImageView.image = UIImage(named: "FruitsBar")
    vegetableImageView.image = UIImage(named: "LégumesBar")
  }
}
