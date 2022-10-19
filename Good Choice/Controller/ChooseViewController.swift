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

  var fruitDescription: ProductDetail?

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


  //----------------------------------------------------------------------------
  // MARK: - Methods
  //----------------------------------------------------------------------------

}

//----------------------------------------------------------------------------
// MARK: - Extension Description Delegate
//----------------------------------------------------------------------------

extension ChooseViewController: DescriptionDelegate {
  func didCollectDescriptionOfProduct(fruit: ProductDetail) {
    #warning("Attention ne pas oublier de régler ça")
    guard fruit != nil else {
      return
    }
    fruitDescription = fruit
  }
}

//----------------------------------------------------------------------------
// MARK: - Extension Choose / Conserve Delegate
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
