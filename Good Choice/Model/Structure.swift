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
  var type: Type
  var name : String
  var chooseDescription: String
  var conserveDescription: String
  var calories : String
  var glucides : String
  var fibres : String
  var water : String
  var vitamines : [Vitamine]
}

enum Type {
  case fruit
  case vegetable
}

// fruit.vitamines[1].number

