//
//  InformationBaseViewController.swift
//  Good Choice
//
//  Created by Adam Mokhtar on 28/09/2022.
//

import UIKit

class InformationBaseViewController: UIViewController {
  
  //----------------------------------------------------------------------------
  // MARK: - Properties
  //----------------------------------------------------------------------------
  
  var productInformations : ProductDetail?
   var firstTime = false

  //----------------------------------------------------------------------------
  // MARK: - Outlets
  //----------------------------------------------------------------------------
  
  @IBOutlet weak var vitamine1: UILabel!
  @IBOutlet weak var vitamine2: UILabel!
  @IBOutlet weak var vitamine3: UILabel!
  @IBOutlet weak var vitamine4: UILabel!

  @IBOutlet weak var resultVitamine1: UILabel!
  @IBOutlet weak var resultVitamine2: UILabel!
  @IBOutlet weak var resultVitamine3: UILabel!
  @IBOutlet weak var resultVitamine4: UILabel!

  @IBOutlet weak var compo1: UILabel!
  @IBOutlet weak var compo2: UILabel!
  @IBOutlet weak var compo3: UILabel!
  @IBOutlet weak var compo4: UILabel!

  @IBOutlet weak var resultCompo1: UILabel!
  @IBOutlet weak var resultCompo2: UILabel!
  @IBOutlet weak var resultCompo3: UILabel!
  @IBOutlet weak var resultCompo4: UILabel!

  //----------------------------------------------------------------------------
  // MARK: - Init
  //----------------------------------------------------------------------------
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
    override func viewWillAppear(_ animated: Bool) {
      super.viewWillAppear(true)
      setupInformations()
      firstTime = true
    }
  
  /// Check if the information is not optional and use the data on the display .
  func setupInformations() {
    guard productInformations != nil else {
      print("No data found")
      return
    }
    if productInformations?.vitamines.count == 3 {

    }
    else if productInformations?.vitamines.count == 2 {

    }
    else if productInformations?.vitamines.count == 2 {

    }
    vitamine1.text = productInformations?.vitamine1.name
    vitamine2.text = productInformations?.vitamine2.name
    vitamine3.text = productInformations?.vitamine3.name
    
    resultVitamine1.text = productInformations?.vitamine1.number
    resultVitamine2.text = productInformations?.vitamine2.number
    resultVitamine3.text = productInformations?.vitamine3.number
    
    resultCompo1.text = productInformations?.calories
    resultCompo2.text = productInformations?.fibres
    resultCompo3.text = productInformations?.glucides
  }
  
  //----------------------------------------------------------------------------
  // MARK: - Methods
  //----------------------------------------------------------------------------
  func fillTheArray(){

    var namesVitamines = [vitamine1,vitamine2,vitamine3, vitamine4]

    for detailsVitamine in productInformations?.vitamines {
      detailsVitamine.name =
    }

  }
  
}

//----------------------------------------------------------------------------
// MARK: - Extension delegate Base
//----------------------------------------------------------------------------

extension InformationBaseViewController: BaseDelegate {
  func didCollectInfos(fruit: ProductDetail) {
    productInformations = fruit
    if firstTime == true {
      setupInformations()
    }
  }
}
