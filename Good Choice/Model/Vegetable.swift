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
                                    vitamines: [Value(name: "B9", score : .A),
                                                Value(name: "K1", score : .B),
                                                Value(name: "B5", score : .C),
                                                Value(name: "E", score : .C),
                                                Value(name: "B6", score : .C)],
                                    elements: [Value(name: "Cuivre", score : .B),
                                               Value(name: "Potassium", score : .A),
                                               Value(name: "Manganèse", score : .C)])




  static let artichaut = ProductDetail(type: .vegetable,
                                       name: "Artichaut",
                                       chooseDescription: exemple,
                                       conserveDescription: exemple,
                                       calories: "47,30kcal",
                                       glucides: "0,83g",
                                       fibres: "3,6g",
                                       water: "81,40g",
                                       vitamines: [Value(name: "B9", score : .A),
                                                   Value(name: "K1", score : .B),
                                                   Value(name: "C", score : .B)],
                                       elements: [Value(name: "Cuivre", score : .B),
                                                  Value(name: "Potassium", score : .B),
                                                  Value(name: "Manganèse", score : .C),
                                                  Value(name: "Magnésium", score : .C)])


  static let champignon = ProductDetail(type: .vegetable,
                                        name: "Champignon",
                                        chooseDescription: exemple,
                                        conserveDescription: exemple,
                                        calories: "38,40kcal",
                                        glucides: "4,53mg",
                                        fibres: "0,90g",
                                        water: "88,40g",
                                        vitamines: [Value(name: "B3", score : .A),
                                                    Value(name: "B5", score : .A),
                                                    Value(name: "B2", score : .B),
                                                    Value(name: "B9", score : .B)],
                                        elements: [Value(name: "Cuivre", score : .A),
                                                   Value(name: "Potassium", score : .B),
                                                   Value(name: "Phosphore", score : .B),
                                                   Value(name: "Sélénium", score : .C)])


  static let courgette = ProductDetail(type: .vegetable,
                                       name: "Courgette",
                                       chooseDescription: exemple,
                                       conserveDescription: exemple,
                                       calories: "23kcal",
                                       glucides: "3,13g",
                                       fibres: "1,7g",
                                       water: "93,10g",
                                       vitamines: [Value(name: "B9", score : .B),
                                                   Value(name: "C", score : .B),
                                                   Value(name: "B6", score : .C)],
                                       elements: [Value(name: "Potassium", score : .C),
                                                  Value(name: "Manganèse", score : .C)])


  static let concombre = ProductDetail(type: .vegetable,
                                       name: "Concombre",
                                       chooseDescription: exemple,
                                       conserveDescription: exemple,
                                       calories: "14,70kcal",
                                       glucides: "2,23g",
                                       fibres: "0,90g",
                                       water: "96,30g",
                                       vitamines: [Value(name: "C", score : .C)],
                                       elements: [Value(name: "Potassium", score : .C)])


  static let haricotVert = ProductDetail(type: .vegetable,
                                         name: "Haricot vert",
                                         chooseDescription: exemple,
                                         conserveDescription: exemple,
                                         calories: "28kcal",
                                         glucides: "3,39g",
                                         fibres: "3,20g",
                                         water: "90,8g",
                                         vitamines: [Value(name: "B9", score : .A),
                                                     Value(name: "K1", score : .B),
                                                     Value(name: "C", score : .B)],
                                         elements: [Value(name: "Manganèse", score : .C),
                                                    Value(name: "Potassium", score : .C)])


  static let petitPois = ProductDetail(type: .vegetable,
                                       name: "Petit pois",
                                       chooseDescription: exemple,
                                       conserveDescription: exemple,
                                       calories: "80,30kcal",
                                       glucides: "9,93g",
                                       fibres: "4,80g",
                                       water: "77,40g",
                                       vitamines: [Value(name: "K1", score : .AP),
                                                   Value(name: "C", score : .AP),
                                                   Value(name: "B1", score : .A),
                                                   Value(name: "B9", score : .A),
                                                   Value(name: "B3", score : .C)],
                                       elements: [Value(name: "Manganèse", score : .B),
                                                  Value(name: "Phosphore", score : .B),
                                                  Value(name: "Cuivre", score : .C),
                                                  Value(name: "Fer", score : .C)])


  static let vegetables = [avocat, artichaut, champignon, courgette, concombre,haricotVert, petitPois]

}
