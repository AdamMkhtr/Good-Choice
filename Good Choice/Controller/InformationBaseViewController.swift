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
  
  @IBOutlet weak var vitamineView1: UIView!
  @IBOutlet weak var vitamineView2: UIView!
  @IBOutlet weak var vitamineView3: UIView!
  @IBOutlet weak var vitamineView4: UIView!
  @IBOutlet weak var vitamineView5: UIView!
  
  @IBOutlet weak var vitamineResultView1: UIView!
  @IBOutlet weak var vitamineResultView2: UIView!
  @IBOutlet weak var vitamineResultView3: UIView!
  @IBOutlet weak var vitamineResultView4: UIView!
  @IBOutlet weak var vitamineResultView5: UIView!
  
  @IBOutlet weak var vitamine1: UILabel!
  @IBOutlet weak var vitamine2: UILabel!
  @IBOutlet weak var vitamine3: UILabel!
  @IBOutlet weak var vitamine4: UILabel!
  @IBOutlet weak var vitamine5: UILabel!
  
  @IBOutlet weak var resultVitamine1: UILabel!
  @IBOutlet weak var resultVitamine2: UILabel!
  @IBOutlet weak var resultVitamine3: UILabel!
  @IBOutlet weak var resultVitamine4: UILabel!
  @IBOutlet weak var resultVitamine5: UILabel!
  
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


    fillTheArray()

    
    resultCompo1.text = productInformations?.calories
    resultCompo2.text = productInformations?.fibres
    resultCompo3.text = productInformations?.glucides
    resultCompo4.text = productInformations?.water
  }
  
  //----------------------------------------------------------------------------
  // MARK: - Methods
  //----------------------------------------------------------------------------

  func fillTheArray(){

    vitamineView2.isHidden = false
    vitamineView3.isHidden = false
    vitamineView4.isHidden = false
    vitamineView5.isHidden = false

    vitamineResultView2.isHidden = false
    vitamineResultView3.isHidden = false
    vitamineResultView4.isHidden = false
    vitamineResultView5.isHidden = false

    if productInformations?.vitamines.count == 4 {

      vitamine1.text = productInformations?.vitamines[0].name
      vitamine2.text = productInformations?.vitamines[1].name
      vitamine3.text = productInformations?.vitamines[2].name
      vitamine4.text = productInformations?.vitamines[3].name

      resultVitamine1.text = productInformations?.vitamines[0].number
      resultVitamine2.text = productInformations?.vitamines[1].number
      resultVitamine3.text = productInformations?.vitamines[2].number
      resultVitamine4.text = productInformations?.vitamines[3].number

      vitamineView5.isHidden = true
      vitamineResultView5.isHidden = true

    }
    else if productInformations?.vitamines.count == 3 {

      vitamine1.text = productInformations?.vitamines[0].name
      vitamine2.text = productInformations?.vitamines[1].name
      vitamine3.text = productInformations?.vitamines[2].name

      resultVitamine1.text = productInformations?.vitamines[0].number
      resultVitamine2.text = productInformations?.vitamines[1].number
      resultVitamine3.text = productInformations?.vitamines[2].number

      vitamineView4.isHidden = true
      vitamineView5.isHidden = true

      vitamineResultView4.isHidden = true
      vitamineResultView5.isHidden = true

    }
    else if productInformations?.vitamines.count == 2 {

      vitamine1.text = productInformations?.vitamines[0].name
      vitamine2.text = productInformations?.vitamines[1].name

      resultVitamine1.text = productInformations?.vitamines[0].number
      resultVitamine2.text = productInformations?.vitamines[1].number

      vitamineView3.isHidden = true
      vitamineView4.isHidden = true
      vitamineView5.isHidden = true

      vitamineResultView3.isHidden = true
      vitamineResultView4.isHidden = true
      vitamineResultView5.isHidden = true


    }
    else if productInformations?.vitamines.count == 1 {

      vitamine1.text = productInformations?.vitamines[0].name

      resultVitamine1.text = productInformations?.vitamines[0].number

      vitamineView2.isHidden = true
      vitamineView3.isHidden = true
      vitamineView4.isHidden = true
      vitamineView5.isHidden = true

      vitamineResultView2.isHidden = true
      vitamineResultView3.isHidden = true
      vitamineResultView4.isHidden = true
      vitamineResultView5.isHidden = true


    } else {

      vitamine1.text = productInformations?.vitamines[0].name
      vitamine2.text = productInformations?.vitamines[1].name
      vitamine3.text = productInformations?.vitamines[2].name
      vitamine4.text = productInformations?.vitamines[3].name
      vitamine5.text = productInformations?.vitamines[4].name

      resultVitamine1.text = productInformations?.vitamines[0].number
      resultVitamine2.text = productInformations?.vitamines[1].number
      resultVitamine3.text = productInformations?.vitamines[2].number
      resultVitamine4.text = productInformations?.vitamines[3].number
      resultVitamine5.text = productInformations?.vitamines[4].number
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
