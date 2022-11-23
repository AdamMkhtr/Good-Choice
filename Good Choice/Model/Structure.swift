//
//  Structure.swift
//  Good Choice
//
//  Created by Adam Mokhtar on 18/10/2022.
//

import Foundation

struct Value {
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
  var vitamines : [Value]
  var elements: [Value]
}

enum Type {
  case fruit
  case vegetable
}
