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

class Fruit {

  static let melon = fruitDetail(name: "Melon",chooseDescription: "Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda.", conserveDescription: "klysehfuoij, odufhovsmifu", calories: "1", glucides: "2", lipides: "3", vitamine1: Vitamine(name: "B9", number: "5"), vitamine2: Vitamine(name: "C", number: "9"), vitamine3: Vitamine(name: "F", number: "9"))

  static let fruits = [melon]
  // static let fruits = ["Melon", "Banane", "Poire", "Fraise"]



}
