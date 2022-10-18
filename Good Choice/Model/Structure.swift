//
//  Structure.swift
//  Good Choice
//
//  Created by Adam Mokhtar on 18/10/2022.
//

import Foundation

struct Vitamine {
  var name : String
  var number : String
}

struct ProductDetail {
  var name : String
  var conserve = "Conserver :"
  var choose = "Choisir :"
  var chooseDescription: String
  var conserveDescription: String
  var calories : String
  var glucides : String
  var lipides : String
  var vitamine1: Vitamine
  var vitamine2 : Vitamine
  var vitamine3 : Vitamine
}
