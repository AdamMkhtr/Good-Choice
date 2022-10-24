//
//  Delegate.swift
//  Good Choice
//
//  Created by Adam Mokhtar on 15/10/2022.
//

import Foundation

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

protocol WhatProductDelegate: AnyObject {
  func didKnowWhatProduct(product : Type)
}
