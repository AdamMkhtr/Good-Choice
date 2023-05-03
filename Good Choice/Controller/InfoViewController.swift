//
//  InfoViewController.swift
//  Good Choice
//
//  Created by Adam Mokhtar on 02/05/2023.
//

import UIKit

class InfoViewController: UIViewController {


  //----------------------------------------------------------------------------
  // MARK: - Properties
  //----------------------------------------------------------------------------



  //----------------------------------------------------------------------------
  // MARK: - Outlet
  //----------------------------------------------------------------------------

  @IBOutlet weak var infoView: UIView!
  @IBOutlet weak var infoLabel: UILabel!


  //----------------------------------------------------------------------------
  // MARK: - Init
  //----------------------------------------------------------------------------

  override func viewDidLoad() {
    super.viewDidLoad()
    setupCornerRadius()
  }


  //----------------------------------------------------------------------------
  // MARK: - Setup
  //----------------------------------------------------------------------------

  /// setup corner radius for the info View
  func setupCornerRadius() {
    infoView.clipsToBounds = true
    infoView.layer.cornerRadius = 16
    infoView.layer.borderWidth = 0
  }

  //----------------------------------------------------------------------------
  // MARK: - Methods
  //----------------------------------------------------------------------------



}

extension InfoViewController : InfoPopUpDelegate {
  func didCollectInfoPopUp(info: String) {
    infoLabel.text = info
  }
}
