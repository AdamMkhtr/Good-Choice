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
  func didCollectDescriptionOfProduct(fruit: fruitDetail)
}

protocol InformationDelegate: AnyObject {
  func didDisplayChoose()
  func didDisplayConserve()
}
