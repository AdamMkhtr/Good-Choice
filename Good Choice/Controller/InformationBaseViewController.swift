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

  @IBOutlet weak var informationScrollView: UIScrollView!

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

  @IBOutlet weak var element1: UILabel!
  @IBOutlet weak var element2: UILabel!
  @IBOutlet weak var element3: UILabel!
  @IBOutlet weak var element4: UILabel!

  @IBOutlet weak var resultElement1: UILabel!
  @IBOutlet weak var resultElement2: UILabel!
  @IBOutlet weak var resultElement3: UILabel!
  @IBOutlet weak var resultElement4: UILabel!

  @IBOutlet weak var element1View: UIView!
  @IBOutlet weak var element2View: UIView!
  @IBOutlet weak var element3View: UIView!
  @IBOutlet weak var element4View: UIView!

  @IBOutlet weak var resultElement1View: UIView!
  @IBOutlet weak var resultElement2View: UIView!
  @IBOutlet weak var resultElement3View: UIView!
  @IBOutlet weak var resultElement4View: UIView!

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


    fillVitaminesArray()
    fillElementsArray()

    
    resultCompo1.text = productInformations?.calories
    resultCompo2.text = productInformations?.fibres
    resultCompo3.text = productInformations?.glucides
    resultCompo4.text = productInformations?.water
  }
  
  //----------------------------------------------------------------------------
  // MARK: - Methods
  //----------------------------------------------------------------------------

  func fillVitaminesArray(){

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

  func fillElementsArray(){

    element2View.isHidden = false
    element3View.isHidden = false
    element4View.isHidden = false

    resultElement2View.isHidden = false
    resultElement3View.isHidden = false
    resultElement4View.isHidden = false


    if productInformations?.elements.count == 3 {

      element1.text = productInformations?.elements[0].name
      element2.text = productInformations?.elements[1].name
      element3.text = productInformations?.elements[2].name

      resultElement1.text = productInformations?.elements[0].number
      resultElement2.text = productInformations?.elements[1].number
      resultElement3.text = productInformations?.elements[2].number

      element4View.isHidden = true

      resultElement4View.isHidden = true

    }
    else if productInformations?.elements.count == 2 {

      element1.text = productInformations?.elements[0].name
      element2.text = productInformations?.elements[1].name

      resultElement1.text = productInformations?.elements[0].number
      resultElement2.text = productInformations?.elements[1].number

      element3View.isHidden = true
      element4View.isHidden = true

      resultElement3View.isHidden = true
      resultElement4View.isHidden = true

    }

    else if productInformations?.elements.count == 1 {

      element1.text = productInformations?.elements[0].name

      resultElement1.text = productInformations?.elements[0].number

      element2View.isHidden = true
      element3View.isHidden = true
      element4View.isHidden = true


      resultElement2View.isHidden = true
      resultElement3View.isHidden = true
      resultElement4View.isHidden = true

    } else {

      element1.text = productInformations?.elements[0].name
      element2.text = productInformations?.elements[1].name
      element3.text = productInformations?.elements[2].name
      element4.text = productInformations?.elements[3].name

      resultElement1.text = productInformations?.elements[0].number
      resultElement2.text = productInformations?.elements[1].number
      resultElement3.text = productInformations?.elements[2].number
      resultElement4.text = productInformations?.elements[3].number
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
      informationScrollView.setContentOffset(CGPointZero, animated: false)
      setupInformations()

    }
  }
}
