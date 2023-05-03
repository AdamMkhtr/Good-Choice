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
  weak var popUpDelegate : PopUpDelegate?
  weak var infoPopupDelegate : InfoPopUpDelegate?

  //----------------------------------------------------------------------------
  // MARK: - Outlets
  //----------------------------------------------------------------------------

  @IBOutlet weak var informationScrollView: UIScrollView!

  //----------------------------------------------------------------------------
  // MARK: - Vitamins Outlets
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


  @IBOutlet weak var resultVitamine1: UIImageView!
  @IBOutlet weak var resultVitamine2: UIImageView!
  @IBOutlet weak var resultVitamine3: UIImageView!
  @IBOutlet weak var resultVitamine4: UIImageView!
  @IBOutlet weak var resultVitamine5: UIImageView!

  @IBOutlet weak var compo1: UILabel!
  @IBOutlet weak var compo2: UILabel!
  @IBOutlet weak var compo3: UILabel!
  @IBOutlet weak var compo4: UILabel!

  @IBOutlet weak var resultCompo1: UILabel!
  @IBOutlet weak var resultCompo2: UILabel!
  @IBOutlet weak var resultCompo3: UILabel!
  @IBOutlet weak var resultCompo4: UILabel!

  //----------------------------------------------------------------------------
  // MARK: - Elements Outlets
  //----------------------------------------------------------------------------

  @IBOutlet weak var element1: UILabel!
  @IBOutlet weak var element2: UILabel!
  @IBOutlet weak var element3: UILabel!
  @IBOutlet weak var element4: UILabel!


  @IBOutlet weak var resultElement1: UIImageView!
  @IBOutlet weak var resultElement2: UIImageView!
  @IBOutlet weak var resultElement3: UIImageView!
  @IBOutlet weak var resultElement4: UIImageView!

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
    setupGesture()
  }

  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(true)
    setupInformations()
    firstTime = true
    setupGesture()
  }

  //----------------------------------------------------------------------------
  // MARK: - Setup
  //----------------------------------------------------------------------------

  func setupGesture() {
    let tapGestureVitamine1 = UITapGestureRecognizer()
    self.vitamineView1.addGestureRecognizer(tapGestureVitamine1)
    tapGestureVitamine1.addTarget(self, action: #selector(tapVitamine1))

    let tapGestureVitamine2 = UITapGestureRecognizer()
    self.vitamineView2.addGestureRecognizer(tapGestureVitamine2)
    tapGestureVitamine2.addTarget(self, action: #selector(tapVitamine2))

    let tapGestureVitamine3 = UITapGestureRecognizer()
    self.vitamineView3.addGestureRecognizer(tapGestureVitamine3)
    tapGestureVitamine3.addTarget(self, action: #selector(tapVitamine3))

    let tapGestureVitamine4 = UITapGestureRecognizer()
    self.vitamineView4.addGestureRecognizer(tapGestureVitamine4)
    tapGestureVitamine4.addTarget(self, action: #selector(tapVitamine4))

    let tapGestureVitamine5 = UITapGestureRecognizer()
    self.vitamineView5.addGestureRecognizer(tapGestureVitamine5)
    tapGestureVitamine5.addTarget(self, action: #selector(tapVitamine5))
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

  @objc func tapVitamine1() {
    guard let info = productInformations?.vitamines[0].element.info else {return}
    infoPopupDelegate?.didCollectInfoPopUp(info: info)
    popUpDelegate?.didDisplayPopUp()
  }

  @objc func tapVitamine2() {
    guard let info = productInformations?.vitamines[1].element.info else {return}
    infoPopupDelegate?.didCollectInfoPopUp(info: info)
    popUpDelegate?.didDisplayPopUp()
  }

  @objc func tapVitamine3() {
    guard let info = productInformations?.vitamines[2].element.info else {return}
    infoPopupDelegate?.didCollectInfoPopUp(info: info)
    popUpDelegate?.didDisplayPopUp()
  }

  @objc func tapVitamine4() {
    guard let info = productInformations?.vitamines[3].element.info else {return}
    infoPopupDelegate?.didCollectInfoPopUp(info: info)
    popUpDelegate?.didDisplayPopUp()
  }

  @objc func tapVitamine5() {
    guard let info = productInformations?.vitamines[4].element.info else {return}
    infoPopupDelegate?.didCollectInfoPopUp(info: info)
    popUpDelegate?.didDisplayPopUp()
  }



  /// Fill and setup the array vitamins in informations view according to the count of vitamins for the product.
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

      vitamine1.text = productInformations?.vitamines[0].element.name
      vitamine2.text = productInformations?.vitamines[1].element.name
      vitamine3.text = productInformations?.vitamines[2].element.name
      vitamine4.text = productInformations?.vitamines[3].element.name

      resultVitamine1.image = UIImage(named: (productInformations?.vitamines[0].score.rawValue)!)
      resultVitamine2.image = UIImage(named: (productInformations?.vitamines[1].score.rawValue)!)
      resultVitamine3.image = UIImage(named: (productInformations?.vitamines[2].score.rawValue)!)
      resultVitamine4.image = UIImage(named: (productInformations?.vitamines[3].score.rawValue)!)

      vitamineView5.isHidden = true
      vitamineResultView5.isHidden = true

    }
    else if productInformations?.vitamines.count == 3 {

      vitamine1.text = productInformations?.vitamines[0].element.name
      vitamine2.text = productInformations?.vitamines[1].element.name
      vitamine3.text = productInformations?.vitamines[2].element.name

      resultVitamine1.image = UIImage(named: (productInformations?.vitamines[0].score.rawValue)!)
      resultVitamine2.image = UIImage(named: (productInformations?.vitamines[1].score.rawValue)!)
      resultVitamine3.image = UIImage(named: (productInformations?.vitamines[2].score.rawValue)!)

      vitamineView4.isHidden = true
      vitamineView5.isHidden = true

      vitamineResultView4.isHidden = true
      vitamineResultView5.isHidden = true

    }
    else if productInformations?.vitamines.count == 2 {

      vitamine1.text = productInformations?.vitamines[0].element.name
      vitamine2.text = productInformations?.vitamines[1].element.name

      resultVitamine1.image = UIImage(named: (productInformations?.vitamines[0].score.rawValue)!)
      resultVitamine2.image = UIImage(named: (productInformations?.vitamines[1].score.rawValue)!)

      vitamineView3.isHidden = true
      vitamineView4.isHidden = true
      vitamineView5.isHidden = true

      vitamineResultView3.isHidden = true
      vitamineResultView4.isHidden = true
      vitamineResultView5.isHidden = true


    }
    else if productInformations?.vitamines.count == 1 {

      vitamine1.text = productInformations?.vitamines[0].element.name

      resultVitamine1.image = UIImage(named: (productInformations?.vitamines[0].score.rawValue)!)

      vitamineView2.isHidden = true
      vitamineView3.isHidden = true
      vitamineView4.isHidden = true
      vitamineView5.isHidden = true

      vitamineResultView2.isHidden = true
      vitamineResultView3.isHidden = true
      vitamineResultView4.isHidden = true
      vitamineResultView5.isHidden = true


    } else {

      vitamine1.text = productInformations?.vitamines[0].element.name
      vitamine2.text = productInformations?.vitamines[1].element.name
      vitamine3.text = productInformations?.vitamines[2].element.name
      vitamine4.text = productInformations?.vitamines[3].element.name
      vitamine5.text = productInformations?.vitamines[4].element.name

      resultVitamine1.image = UIImage(named: (productInformations?.vitamines[0].score.rawValue)!)
      resultVitamine2.image = UIImage(named: (productInformations?.vitamines[1].score.rawValue)!)
      resultVitamine3.image = UIImage(named: (productInformations?.vitamines[2].score.rawValue)!)
      resultVitamine4.image = UIImage(named: (productInformations?.vitamines[3].score.rawValue)!)
      resultVitamine5.image = UIImage(named: (productInformations?.vitamines[4].score.rawValue)!)
    }
  }

  /// Fill and setup the array Elements in informations view according to the count of elements for the product.
  func fillElementsArray(){

    element2View.isHidden = false
    element3View.isHidden = false
    element4View.isHidden = false

    resultElement2View.isHidden = false
    resultElement3View.isHidden = false
    resultElement4View.isHidden = false

    if productInformations?.elements.count == 3 {

      element1.text = productInformations?.elements[0].element.name
      element2.text = productInformations?.elements[1].element.name
      element3.text = productInformations?.elements[2].element.name

      resultElement1.image = UIImage(named: (productInformations?.elements[0].score.rawValue)!)
      resultElement2.image = UIImage(named: (productInformations?.elements[1].score.rawValue)!)
      resultElement3.image = UIImage(named: (productInformations?.elements[2].score.rawValue)!)

      element4View.isHidden = true

      resultElement4View.isHidden = true

    }
    else if productInformations?.elements.count == 2 {

      element1.text = productInformations?.elements[0].element.name
      element2.text = productInformations?.elements[1].element.name

      resultElement1.image = UIImage(named: (productInformations?.elements[0].score.rawValue)!)
      resultElement2.image = UIImage(named: (productInformations?.elements[1].score.rawValue)!)

      element3View.isHidden = true
      element4View.isHidden = true

      resultElement3View.isHidden = true
      resultElement4View.isHidden = true

    }

    else if productInformations?.elements.count == 1 {

      element1.text = productInformations?.elements[0].element.name

      resultElement1.image = UIImage(named: (productInformations?.elements[0].score.rawValue)!)

      element2View.isHidden = true
      element3View.isHidden = true
      element4View.isHidden = true


      resultElement2View.isHidden = true
      resultElement3View.isHidden = true
      resultElement4View.isHidden = true

    } else {

      element1.text = productInformations?.elements[0].element.name
      element2.text = productInformations?.elements[1].element.name
      element3.text = productInformations?.elements[2].element.name
      element4.text = productInformations?.elements[3].element.name

      resultElement1.image = UIImage(named: (productInformations?.elements[0].score.rawValue)!)
      resultElement2.image = UIImage(named: (productInformations?.elements[1].score.rawValue)!)
      resultElement3.image = UIImage(named: (productInformations?.elements[2].score.rawValue)!)
      resultElement4.image = UIImage(named: (productInformations?.elements[3].score.rawValue)!)
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
