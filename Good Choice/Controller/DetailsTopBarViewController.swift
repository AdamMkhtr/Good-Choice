//
//  DetailsTopBarViewController.swift
//  Good Choice
//
//  Created by Adam Mokhtar on 30/09/2022.
//

import UIKit

class DetailsTopBarViewController: UIViewController {

  //----------------------------------------------------------------------------
  // MARK: - Properties
  //----------------------------------------------------------------------------
  
  var didTapSupply: (() -> Void)?
  var didTapChoose: (() -> Void)?
  var didTapConserve: (() -> Void)?
  
  var informationDelegateDisplay: InformationDelegate?
  
  //----------------------------------------------------------------------------
  // MARK: - Outlets
  //----------------------------------------------------------------------------
  
  @IBOutlet weak var apportView: UIView!
  @IBOutlet weak var apportLabel: UILabel!
  
  @IBOutlet weak var chooseView: UIView!
  @IBOutlet weak var chooseLabel: UILabel!
  
  @IBOutlet weak var conserveView: UIView!
  @IBOutlet weak var conserveLabel: UILabel!
  
  //----------------------------------------------------------------------------
  // MARK: - Init
  //----------------------------------------------------------------------------
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setupTapGestureRecognizer()
    tapSupply()
  }
  
  //----------------------------------------------------------------------------
  // MARK: - Methods
  //----------------------------------------------------------------------------
  
  func setupTapGestureRecognizer() {
    let tapGestureSupply = UITapGestureRecognizer()
    self.apportView.addGestureRecognizer(tapGestureSupply)
    tapGestureSupply.addTarget(self, action: #selector(tapSupply))
    
    let tapGestureChoose = UITapGestureRecognizer()
    self.chooseView.addGestureRecognizer(tapGestureChoose)
    tapGestureChoose.addTarget(self, action: #selector(tapChoose))
    
    let tapGestureConserve = UITapGestureRecognizer()
    self.conserveView.addGestureRecognizer(tapGestureConserve)
    tapGestureConserve.addTarget(self, action: #selector(tapConserve))
  }
  
  
  @objc func tapSupply() {
    recolorAllLabels()
    apportLabel.textColor =  #colorLiteral(red: 0.5764705882, green: 0.3803921569, blue: 0.5960784314, alpha: 1)
    didTapSupply?()
  }
  
  @objc func tapChoose() {
    recolorAllLabels()
    chooseLabel.textColor =  #colorLiteral(red: 0.5764705882, green: 0.3803921569, blue: 0.5960784314, alpha: 1)
    didTapChoose?()
    informationDelegateDisplay?.didDisplayChoose()
  }
  
  @objc func tapConserve() {
    recolorAllLabels()
    conserveLabel.textColor =  #colorLiteral(red: 0.5764705882, green: 0.3803921569, blue: 0.5960784314, alpha: 1)
    didTapConserve?()
    informationDelegateDisplay?.didDisplayConserve()
  }
  
  /// Recolor all label in white.
  private func recolorAllLabels() {
    let selectedLabels: [UILabel] =
    [apportLabel, chooseLabel, conserveLabel]
    for selectedLabel in selectedLabels {
      selectedLabel.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
  }
}

//----------------------------------------------------------------------------
// MARK: - Extension TopBar Delegate
//----------------------------------------------------------------------------

extension DetailsTopBarViewController: DetailsTopBarDelegate {
  
  func didReeloadTopBarColor() {
    recolorAllLabels()
    apportLabel.textColor =  #colorLiteral(red: 0.5764705882, green: 0.3803921569, blue: 0.5960784314, alpha: 1)
  }
}
