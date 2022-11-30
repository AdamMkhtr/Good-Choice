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
                                   water: "84,20g",
                                   vitamines: [Value(name: "B9", number: "29%"),
                                               Value(name: "A", number: "52%"),
                                               Value(name: "C", number: "10%")],
                                   elements: [Value(name: "Potassium", number: "19%")])

  static let banane = ProductDetail(type: .fruit,
                                    name: "Banane",
                                    chooseDescription: exemple,
                                    conserveDescription: exemple,
                                    calories: "90,50kcal",
                                    glucides: "19,70g",
                                    fibres: "2,70g",
                                    water: "78,80g",
                                    vitamines: [Value(name: "B6", number: "13%"),
                                                Value(name: "B9", number: "10%")],
                                    elements: [Value(name: "Manganèse", number: "18%"),
                                               Value(name: "Potassium", number: "16%"),
                                               Value(name: "Chlorure", number: "10%")])

  static let kiwi = ProductDetail(type: .fruit,
                                  name: "Kiwi",
                                  chooseDescription: exemple,
                                  conserveDescription: exemple,
                                  calories: "60,50kcal",
                                  glucides: "11g",
                                  fibres: "2,40g",
                                  water: "83,50g",
                                  vitamines: [Value(name: "C", number: "102%"),
                                              Value(name: "K1", number: "22%"),
                                              Value(name: "B9", number: "11%")],
                                  elements: [Value(name: "Cuivre", number: "15%"),
                                             Value(name: "Potassium", number: "15%")])

  static let passionFruit = ProductDetail(type: .fruit,
                                          name: "Fruit de la passion",
                                          chooseDescription: exemple,
                                          conserveDescription: exemple,
                                          calories: "101kcal",
                                          glucides: "10,90g",
                                          fibres: "6,80g",
                                          water: "73,60g",
                                          vitamines: [Value(name: "B9", number: "51%"),
                                                      Value(name: "C", number: "32%"),
                                                      Value(name: "A", number: "21%"),
                                                      Value(name: "B6", number: "12%")],
                                          elements: [Value(name: "Cuivre", number: "15%"),
                                                     Value(name: "Potassium", number: "12%"),
                                                     Value(name: "Manganèse", number: "9%"),
                                                     Value(name: "Zinc", number: "8%")])


  static let pineapple = ProductDetail(type: .fruit,
                                       name: "Ananas",
                                       chooseDescription: exemple,
                                       conserveDescription: exemple,
                                       calories: "54,40kcal",
                                       glucides: "11,70g",
                                       fibres: "1,20g",
                                       water: "85,50g",
                                       vitamines: [Value(name: "C", number: "58%"),
                                                   Value(name: "B9", number: "10%")],
                                       elements: [Value(name: "Manganèse", number: "42%"),
                                                  Value(name: "Potassium", number: "7%")])

  static let strawberry = ProductDetail(type: .fruit,
                                        name: "Fraise",
                                        chooseDescription: exemple,
                                        conserveDescription: exemple,
                                        calories: "38,60kcal",
                                        glucides: "6,03g",
                                        fibres: "3,80g",
                                        water: "90,30g",
                                        vitamines: [Value(name: "C", number: "68%"),
                                                    Value(name: "B9", number: "49%")],
                                        elements: [Value(name: "Manganèse", number: "13%")])


  static let watermelon = ProductDetail(type: .fruit,
                                        name: "Pastèque",
                                        chooseDescription: exemple,
                                        conserveDescription: exemple,
                                        calories: "38,90kcal",
                                        glucides: "8,33g",
                                        fibres: "0,50g",
                                        water: "91g",
                                        vitamines: [Value(name: "A", number: "25%"),
                                                    Value(name: "B9", number: "18%")],
                                        elements: [Value(name: "Potassium", number: "5%")])




  static let fruits = [melon, banane,kiwi, passionFruit, pineapple, strawberry, watermelon]

}
