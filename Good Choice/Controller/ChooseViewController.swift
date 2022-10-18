//
//  ChooseViewController.swift
//  Good Choice
//
//  Created by Adam Mokhtar on 30/09/2022.
//

import UIKit

class ChooseViewController: UIViewController {

  //----------------------------------------------------------------------------
  // MARK: - Properties
  //----------------------------------------------------------------------------

  var fruitDescription: fruitDetail?

  //----------------------------------------------------------------------------
  // MARK: - Outlets
  //----------------------------------------------------------------------------

  @IBOutlet weak var titleLabel: UILabel!
  @IBOutlet weak var descriptionTextView: UITextView!

  //----------------------------------------------------------------------------
  // MARK: - Init
  //----------------------------------------------------------------------------

  override func viewDidLoad() {
      super.viewDidLoad()
  }

  override func viewWillAppear(_ animated: Bool) {
    titleLabel.text = fruitDescription?.choose
    descriptionTextView.text = fruitDescription?.chooseDescription
  }

  //----------------------------------------------------------------------------
  // MARK: - Methods
  //----------------------------------------------------------------------------

}

extension ChooseViewController: DescriptionDelegate {
  func didCollectDescriptionOfProduct(fruit: fruitDetail) {
    guard fruit != nil else {
      return
    }
    fruitDescription = fruit
  }


}


//----------------------------------------------------------------------------
// MARK: - Extension Choose/ conserve delegate
//----------------------------------------------------------------------------


extension ChooseViewController: InformationDelegate {
  func didDisplayChoose() {
    titleLabel.text = "Choisir :"
    descriptionTextView.text = fruitDescription?.chooseDescription
  }

  func didDisplayConserve() {
    titleLabel.text = "Conserver :"
    descriptionTextView.text = fruitDescription?.conserveDescription
  }


}
