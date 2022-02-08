//
//  DetailsViewController.swift
//  Good Choice
//
//  Created by Adam Mokhtar on 08/02/2022.
//

import UIKit

class DetailsViewController: UIViewController {

  //----------------------------------------------------------------------------
  // MARK: - Properties
  //----------------------------------------------------------------------------



  //----------------------------------------------------------------------------
  // MARK: - Outlets
  //----------------------------------------------------------------------------


  @IBOutlet weak var choiceView: UIView!
  @IBOutlet weak var caloriesView: UIView!
  @IBOutlet weak var infoView: UIView!

  //----------------------------------------------------------------------------
  // MARK: - Setup
  //----------------------------------------------------------------------------

  override func viewDidLoad() {
      super.viewDidLoad()
  }

  func setupCornerRadius() {
    choiceView.layer.cornerRadius = 8
    caloriesView.layer.cornerRadius = 8
    infoView.layer.cornerRadius = 8
  }
  //----------------------------------------------------------------------------
  // MARK: - Methods
  //----------------------------------------------------------------------------


}
