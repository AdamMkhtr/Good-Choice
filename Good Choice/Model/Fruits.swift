//
//  Fruits.swift
//  Good Choice
//
//  Created by Adam Mokhtar on 27/09/2022.
//

import Foundation

struct Vitamine {
  var name : String
  var number : String
}

struct fruitDetail {
  var name : String
  var calories : String
  var glucides : String
  var lipides : String
  var vitamine1: Vitamine
  var vitamine2 : Vitamine
  var vitamine3 : Vitamine
}

class Fruit {

  static let melon = fruitDetail(name: "melon", calories: "1", glucides: "2", lipides: "3", vitamine1: Vitamine(name: "b9", number: "5"), vitamine2: Vitamine(name: "C", number: "9"), vitamine3: Vitamine(name: "F", number: "9"))

  static let fruits = [melon]
  // static let fruits = ["Melon", "Banane", "Poire", "Fraise"]



}
