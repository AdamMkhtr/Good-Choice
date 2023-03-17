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
                                    vitamines: [Value(name: "B9", number: "++"),
                                                Value(name: "K1", number: "++"),
                                                Value(name: "B5", number: "+"),
                                                Value(name: "E", number: "+"),
                                                Value(name: "B6", number: "+")],
                                    elements: [Value(name: "Cuivre", number: "18%"),
                                               Value(name: "Potassium", number: "21,50%"),
                                               Value(name: "Manganèse", number: "10%")])


//  static let avocat = ProductDetail(type: .vegetable,
//                                    name: "Avocat",
//                                    chooseDescription: exemple,
//                                    conserveDescription: exemple,
//                                    calories: "205kcal",
//                                    glucides: "0,83g",
//                                    fibres: "3,6g",
//                                    water: "84,30g",
//                                    vitamines: [Value(name: "B9", number: "35,20%"),
//                                                Value(name: "K1", number: "19,33%"),
//                                                Value(name: "B5", number: "17,83%"),
//                                                Value(name: "E", number: "18,58%"),
//                                                Value(name: "B6", number: "12,14%")],
//                                    elements: [Value(name: "Cuivre", number: "18%"),
//                                               Value(name: "Potassium", number: "21,50%"),
//                                               Value(name: "Manganèse", number: "10%")])

  static let artichaut = ProductDetail(type: .vegetable,
                                       name: "Artichaut",
                                       chooseDescription: exemple,
                                       conserveDescription: exemple,
                                       calories: "47,30kcal",
                                       glucides: "0,83g",
                                       fibres: "3,6g",
                                       water: "81,40g",
                                       vitamines: [Value(name: "B9", number: "34%"),
                                                   Value(name: "K1", number: "20%"),
                                                   Value(name: "C", number: "15%%")],
                                       elements: [Value(name: "Cuivre", number: "23%"),
                                                  Value(name: "Potassium", number: "19%"),
                                                  Value(name: "Manganèse", number: "13%"),
                                                  Value(name: "Magnésium", number: "13%")])


  static let champignon = ProductDetail(type: .vegetable,
                                        name: "Champignon",
                                        chooseDescription: exemple,
                                        conserveDescription: exemple,
                                        calories: "38,40kcal",
                                        glucides: "4,53mg",
                                        fibres: "0,90g",
                                        water: "88,40g",
                                        vitamines: [Value(name: "B3", number: "31%"),
                                                    Value(name: "B5", number: "26%"),
                                                    Value(name: "B2", number: "21%"),
                                                    Value(name: "B9", number: "17%")],
                                        elements: [Value(name: "Cuivre", number: "35%"),
                                                   Value(name: "Potassium", number: "18%"),
                                                   Value(name: "Phosphore", number: "14%"),
                                                   Value(name: "Sélénium", number: "12%")])


  static let courgette = ProductDetail(type: .vegetable,
                                       name: "Courgette",
                                       chooseDescription: exemple,
                                       conserveDescription: exemple,
                                       calories: "23kcal",
                                       glucides: "3,13g",
                                       fibres: "1,7g",
                                       water: "93,10g",
                                       vitamines: [Value(name: "B9", number: "19%"),
                                                   Value(name: "C", number: "22%"),
                                                   Value(name: "B6", number: "14%")],
                                       elements: [Value(name: "Potassium", number: "13%"),
                                                  Value(name: "Manganèse", number: "9%")])


  static let concombre = ProductDetail(type: .vegetable,
                                       name: "Concombre",
                                       chooseDescription: exemple,
                                       conserveDescription: exemple,
                                       calories: "14,70kcal",
                                       glucides: "2,23g",
                                       fibres: "0,90g",
                                       water: "96,30g",
                                       vitamines: [Value(name: "C", number: "4%")],
                                       elements: [Value(name: "Potassium", number: "7%")])


  static let haricotVert = ProductDetail(type: .vegetable,
                                         name: "Haricot vert",
                                         chooseDescription: exemple,
                                         conserveDescription: exemple,
                                         calories: "28kcal",
                                         glucides: "3,39g",
                                         fibres: "3,20g",
                                         water: "90,8g",
                                         vitamines: [Value(name: "B9", number: "25%"),
                                                     Value(name: "K1", number: "19%"),
                                                     Value(name: "C", number: "17%")],
                                         elements: [Value(name: "Manganèse", number: "12%"),
                                                    Value(name: "Potassium", number: "11%")])


  static let petitPois = ProductDetail(type: .vegetable,
                                       name: "Petit pois",
                                       chooseDescription: exemple,
                                       conserveDescription: exemple,
                                       calories: "80,30kcal",
                                       glucides: "9,93g",
                                       fibres: "4,80g",
                                       water: "77,40g",
                                       vitamines: [Value(name: "K1", number: "63%"),
                                                   Value(name: "C", number: "52%"),
                                                   Value(name: "B1", number: "26%"),
                                                   Value(name: "B9", number: "23%"),
                                                   Value(name: "B3", number: "13%")],
                                       elements: [Value(name: "Manganèse", number: "20%"),
                                                  Value(name: "Phosphore", number: "17%"),
                                                  Value(name: "Cuivre", number: "14%"),
                                                  Value(name: "Fer", number: "12%")])


  static let vegetables = [avocat, artichaut, champignon, courgette, concombre,haricotVert, petitPois]

}
