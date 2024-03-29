//
//  Delegate.swift
//  Good Choice
//
//  Created by Adam Mokhtar on 15/10/2022.
//

import Foundation

protocol BaseDelegate: AnyObject {
  func didCollectInfos(fruit : ProductDetail)
}

protocol DisplayDelegate: AnyObject {
  func didDisplayTheInformationsView()
}

protocol DescriptionDelegate: AnyObject {
  func didCollectDescriptionOfProduct(fruit: ProductDetail)
}

protocol InformationDelegate: AnyObject {
  func didDisplayChoose()
  func didDisplayConserve()
}

protocol BottomBarDelegate: AnyObject {
  func didLauchRequestFruits()
  func didLauchRequestVegetables()
}

protocol DetailsTopBarDelegate: AnyObject {
  func didReeloadTopBarColor()
}

protocol NavigationDelegate: AnyObject {
  func didPastViewFruit()
  func didPastViewVegetable()
}

protocol ProductDelegate: AnyObject {
  func didKnowProduct(product : Type)
}
protocol InformationNavigatonDelegate: AnyObject {
  func didHideTheButton()
}

protocol NameNavigationDelegate: AnyObject {
  func didCollectName(name: String)
}

protocol PopUpDelegate: AnyObject {
  func didDisplayPopUp()
}

protocol InfoPopUpDelegate : AnyObject {
  func didCollectInfoPopUp(info: String)
}
