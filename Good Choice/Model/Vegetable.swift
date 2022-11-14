//
//  Vegetable.swift
//  Good Choice
//
//  Created by Adam Mokhtar on 27/09/2022.
//

import Foundation

class Vegetable {


  static let exemple = "Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda."


  static let avocat = ProductDetail(type: .vegetable,
                                    name: "Avocat",
                                    chooseDescription: exemple,
                                    conserveDescription: exemple,
                                    calories: "205kcal",
                                    glucides: "0,83g",
                                    fibres: "3,6g",
                                    water: "84,30g",
                                    vitamines: [Vitamine(name: "B9", number: "35,20%"),
                                                Vitamine(name: "K1", number: "19,33%"),
                                                Vitamine(name: "B5", number: "17,83%"),
                                                Vitamine(name: "E", number: "18,58%"),
                                                Vitamine(name: "B6", number: "12,14%")])


  static let artichaut = ProductDetail(type: .vegetable,
                                       name: "Artichaut",
                                       chooseDescription: exemple,
                                       conserveDescription: exemple,
                                       calories: "205kcal",
                                       glucides: "0,83g",
                                       fibres: "3,6g",
                                       water: "84,30g",
                                       vitamines: [Vitamine(name: "B9", number: "70,40µg"),
                                                   Vitamine(name: "K1", number: "14,80µg"),
                                                   Vitamine(name: "C", number: "11,70mg")])

  static let champignon = ProductDetail(type: .vegetable,
                                        name: "Champignon",
                                        chooseDescription: exemple,
                                        conserveDescription: exemple,
                                        calories: "38,40kcal",
                                        glucides: "4,53mg",
                                        fibres: "0,90g",
                                        water: "84,30g",
                                        vitamines: [Vitamine(name: "B3", number: "4,53mg"),
                                                    Vitamine(name: "B5", number: "1,57mg"),
                                                    Vitamine(name: "B3", number: "0,29mg")])

  static let courgette = ProductDetail(type: .vegetable,
                                       name: "Courgette",
                                       chooseDescription: exemple,
                                       conserveDescription: exemple,
                                       calories: "23kcal",
                                       glucides: "3,13g",
                                       fibres: "1,7g",
                                       water: "84,30g",
                                       vitamines: [Vitamine(name: "B9", number: "16,40µg"),
                                                   Vitamine(name: "C", number: "17,50mg"),
                                                   Vitamine(name: "B6", number: "0,19mg")])

  static let concombre = ProductDetail(type: .vegetable,
                                       name: "Cobcombre",
                                       chooseDescription: exemple,
                                       conserveDescription: exemple,
                                       calories: "14,70kcal",
                                       glucides: "2,23g",
                                       fibres: "0,90g",
                                       water: "84,30g",
                                       vitamines: [Vitamine(name: "Eau", number: "96,30g"),
                                                   Vitamine(name: "Manganèse", number: "0,11mg"),
                                                   Vitamine(name: "Potassium", number: "140mg")])

  static let haricotVert = ProductDetail(type: .vegetable,
                                         name: "Haricot vert",
                                         chooseDescription: exemple,
                                         conserveDescription: exemple,
                                         calories: "28kcal",
                                         glucides: "3,39g",
                                         fibres: "3,20g",
                                         water: "84,30g",
                                         vitamines: [Vitamine(name: "B9", number: "48,50µg"),
                                                     Vitamine(name: "K1", number: "14,40µg"),
                                                     Vitamine(name: "C", number: "13,60mg")])

  static let petitPois = ProductDetail(type: .vegetable,
                                       name: "Petit pois",
                                       chooseDescription: exemple,
                                       conserveDescription: exemple,
                                       calories: "80,30kcal",
                                       glucides: "9,93g",
                                       fibres: "4,80g",
                                       water: "84,30g",
                                       vitamines: [Vitamine(name: "K1", number: "47,40µg"),
                                                   Vitamine(name: "C", number: "41,50mg"),
                                                   Vitamine(name: "B1", number: "0,29mg")])

  static let vegetables = [avocat, artichaut, champignon, courgette, concombre,haricotVert, petitPois]

}
