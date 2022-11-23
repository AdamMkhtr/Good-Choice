//
//  Fruits.swift
//  Good Choice
//
//  Created by Adam Mokhtar on 27/09/2022.
//

import Foundation



class Fruit {

  static let exemple = "Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda."


  static let melon = ProductDetail(type: .fruit,
                                   name: "Melon",
                                   chooseDescription: exemple,
                                   conserveDescription: exemple,
                                   calories: "62kcal",
                                   glucides: "14,80g",
                                   fibres: "1,30g",
                                   water: "84,30g",
                                   vitamines: [Value(name: "B9", number: "29,45%"),
                                               Value(name: "A", number: "52,08%"),
                                               Value(name: "C", number: "10,18%"),
                                               Value(name: "Potassium", number: "380mg")],
                                   elements: [Value(name: "1", number: "2"),
                                              Value(name: "2", number: "333"),
                                              Value(name: "3", number: "4444")])

  static let banane = ProductDetail(type: .fruit,
                                    name: "Banane",
                                    chooseDescription: exemple,
                                    conserveDescription: exemple,
                                    calories: "90,50kcal",
                                    glucides: "19,70g",
                                    fibres: "2,70g",
                                    water: "78,80g",
                                    vitamines: [Value(name: "B6", number: "0,18mg"),
                                                Value(name: "B9", number: "19µg"),
                                                Value(name: "Potassium", number: "320mg")],
                                    elements: [Value(name: "22", number: "DFDD"),
                                               Value(name: "333", number: "4444")])

  static let fruits = [melon, banane]

}
