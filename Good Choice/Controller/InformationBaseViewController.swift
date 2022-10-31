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
  
  var fruitForInformation : ProductDetail?
   var firstTime = false

  //----------------------------------------------------------------------------
  // MARK: - Outlets
  //----------------------------------------------------------------------------
  
  @IBOutlet weak var vitamine1: UILabel!
  @IBOutlet weak var vitamine2: UILabel!
  @IBOutlet weak var vitamine3: UILabel!
  
  @IBOutlet weak var resultVitamine1: UILabel!
  @IBOutlet weak var resultVitamine2: UILabel!
  @IBOutlet weak var resultVitamine3: UILabel!
  
  @IBOutlet weak var compo1: UILabel!
  @IBOutlet weak var compo2: UILabel!
  @IBOutlet weak var compo3: UILabel!
  
  @IBOutlet weak var resultCompo1: UILabel!
  @IBOutlet weak var resultCompo2: UILabel!
  @IBOutlet weak var resultCompo3: UILabel!
  
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
    guard fruitForInformation != nil else {
      print("No data found")
      return
    }
    vitamine1.text = fruitForInformation?.vitamine1.name
    vitamine2.text = fruitForInformation?.vitamine2.name
    vitamine3.text = fruitForInformation?.vitamine3.name
    
    resultVitamine1.text = fruitForInformation?.vitamine1.number
    resultVitamine2.text = fruitForInformation?.vitamine2.number
    resultVitamine3.text = fruitForInformation?.vitamine3.number
    
    resultCompo1.text = fruitForInformation?.calories
    resultCompo2.text = fruitForInformation?.fibres
    resultCompo3.text = fruitForInformation?.glucides

  }
  
  //----------------------------------------------------------------------------
  // MARK: - Methods
  //----------------------------------------------------------------------------
  
  
}

//----------------------------------------------------------------------------
// MARK: - Extension delegate Base
//----------------------------------------------------------------------------

extension InformationBaseViewController: BaseDelegate {
  func didCollectInfos(fruit: ProductDetail) {
    fruitForInformation = fruit
    if firstTime == true {
      setupInformations()
    }
  }
}
