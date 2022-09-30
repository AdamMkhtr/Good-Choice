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
    recolorAllView()
    apportLabel.textColor =  #colorLiteral(red: 0.5764705882, green: 0.3803921569, blue: 0.5960784314, alpha: 1)
//    delegate?.didLauchRequestFruits()
  }

  @objc func tapChoose() {
    recolorAllView()
    chooseLabel.textColor =  #colorLiteral(red: 0.5764705882, green: 0.3803921569, blue: 0.5960784314, alpha: 1)

//    delegate?.didLauchRequestFruits()
  }


  @objc func tapConserve() {
    recolorAllView()
    conserveLabel.textColor =  #colorLiteral(red: 0.5764705882, green: 0.3803921569, blue: 0.5960784314, alpha: 1)

//    delegate?.didLauchRequestFruits()
  }

  private func recolorAllView() {
    let selectedLabels: [UILabel] =
    [apportLabel, chooseLabel, conserveLabel]
    for selectedLabel in selectedLabels {
      selectedLabel.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
  }


}
