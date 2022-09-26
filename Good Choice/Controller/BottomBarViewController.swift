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

  //----------------------------------------------------------------------------
  // MARK: - Outlet
  //----------------------------------------------------------------------------

  @IBOutlet weak var bottombarView: UIView!

  //----------------------------------------------------------------------------
  // MARK: - Init
  //----------------------------------------------------------------------------

  override func viewDidLoad() {
    super.viewDidLoad()
    setupCornerRadius()

  }
  func setupCornerRadius() {
    bottombarView.clipsToBounds = true
    bottombarView.layer.cornerRadius = 40
    bottombarView.layer.borderWidth = 0
  }


  //----------------------------------------------------------------------------
  // MARK: - Methods
  //----------------------------------------------------------------------------


}
