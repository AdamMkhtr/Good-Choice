//
//  Fruits.swift
//  Good Choice
//
//  Created by Adam Mokhtar on 27/09/2022.
//

import Foundation



class Fruit {

  static let exemple = "Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda."


  static let melon = ProductDetail(type: .fruit ,name: "Melon",chooseDescription: exemple, conserveDescription: exemple, calories: "62kcal", glucides: "14,80g", fibres: "1,30g", vitamine1: Vitamine(name: "B9", number: "58,90µg"), vitamine2: Vitamine(name: "A", number: "416,67µg"), vitamine3: Vitamine(name: "C", number: "8,14mg"))

  static let banane = ProductDetail(type: .fruit ,name: "Banane",chooseDescription: exemple, conserveDescription: exemple, calories: "90,50kcal", glucides: "19,70g", fibres: "2,70g", vitamine1: Vitamine(name: "B6", number: "0,18mg"), vitamine2: Vitamine(name: "B9", number: "19µg"), vitamine3: Vitamine(name: "Potassium", number: "320mg"))

  static let fruits = [melon, banane]

}
