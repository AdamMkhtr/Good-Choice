//
//  Fruits.swift
//  Good Choice
//
//  Created by Adam Mokhtar on 27/09/2022.
//

import Foundation



class Fruit {


  //----------------------------------------------------------------------------
  // MARK: - MELON
  //----------------------------------------------------------------------------


  static let melon = ProductDetail(type: .fruit,
                                   name: "Melon",
                                   chooseDescription: """
- Soupesez votre melon avant tout. Il doit être lourd ;

- Son écorce est souple ;

- Un melon mûr exhale un parfum typique. Plus il est mûr, plus il est odorant. Choisissez-le parfumé mais pas trop ;

- Observez le pédoncule ; il se décolle lorsque le fruit est à maturité. La craquelure est le signe extérieur de la richesse du melon… le décollement du pédoncule a lieu après l’apparition de la craquelure (sauf bien sûr à pousser sur le pédoncule avec le pouce…).
""",
                                   conserveDescription:"""
Le melon se conserve mieux dans un placard ou une cave fraîche.

À défaut de l'un ou l'autre, placez le dans le bac à légumes du réfrigérateur, enveloppé d'un film plastique afin qu'il ne communique pas son parfum aux autres aliments.
""",
                                   calories: "62kcal",
                                   glucides: "14,80g",
                                   fibres: "1,30g",
                                   water: "84,20g",
                                   vitamines: [Value(element: Vitamine.vitamineA, score : .AP),
                                               Value(element: Vitamine.vitamineB9, score : .A),
                                               Value(element: Vitamine.vitamineC, score : .C)],
                                   elements: [Value(element: Mineral.potassium, score : .B)])


  //  //----------------------------------------------------------------------------
  //  // MARK: - BANANE
  //  //----------------------------------------------------------------------------



  static let banane = ProductDetail(type: .fruit,
                                    name: "Banane",
                                    chooseDescription:"""
Sur les étals, choisissez des fruits encore verts, ils arriveront à maturité chez vous.

Choisissez des fruits plus ou moins mûrs selon son goût et l'usage prévu. Plus l'aspect de la banane est tigré, plus elle est mûre, douce et sucrée.
""",
                                    conserveDescription:"""
- Gardez les bananes à la température de la pièce, sans sac plastique, jusqu’à ce qu’elles soient assez mûres.

- Les bananes dégagent de l’éthylène, un gaz qui fait mûrir les fruits plus rapidement. Évitez donc de les placer près d’autres fruits que vous ne voulez pas voir mûrir trop vite.

- Pour accélérer le mûrissement, placez-les dans un sac de papier brun et/ou près d’une pomme ou d’autres bananes mûres.

- Pour ralentir le mûrissement, emballez les tiges hermétiquement réduirait le dégagement d’éthylène, gaz qui accélère la maturation des fruits.

- Les restants sans la peau peuvent se conserver quelques heures enveloppés dans du papier d’aluminium au frigo, avec un peu de jus de citron.

- Pour éviter que les morceaux de banane ne noircissent dans une salade de fruits, pressez quelques gouttes de jus de citron sur leur chair.
""",
                                    calories: "90,50kcal",
                                    glucides: "19,70g",
                                    fibres: "2,70g",
                                    water: "78,80g",
                                    vitamines: [Value(element: Vitamine.vitamineB6, score : .C),
                                                Value(element: Vitamine.vitamineB9, score : .C)],
                                    elements: [Value(element: Mineral.manganèse, score : .B),
                                               Value(element: Mineral.potassium, score : .B),
                                               Value(element: Mineral.chlorure, score : .C)])
  //
  //  //----------------------------------------------------------------------------
  //  // MARK: - KIWI
  //  //----------------------------------------------------------------------------

  static let kiwi = ProductDetail(type: .fruit,
                                  name: "Kiwi",
                                  chooseDescription:"""
Si vous comptez consommer les kiwis que vous achetez dans la semaine, le mieux est de les choisir souples au toucher, mais pas mous ! Trop souples, ils risquent en effet d'être passés.

Mais si, à l'inverse, ils résistent fermement sous vos doigts, le fruit n'est pas encore mûr et sera trop acide.
""",
                                  conserveDescription:"""
Si vous le choisissez jeune, conservez-le trois à quatre semaines dans le bac à légumes de votre réfrigérateur.

Si vous souhaitez le faire mûrir plus rapidement, placez-le dans un compotier à température ambiante, emballé dans un sac en papier.
""",
                                  calories: "60,50kcal",
                                  glucides: "11g",
                                  fibres: "2,40g",
                                  water: "83,50g",
                                  vitamines: [Value(element: Vitamine.vitamineC, score : .AP),
                                              Value(element: Vitamine.vitamineK, score : .B),
                                              Value(element: Vitamine.vitamineB9, score : .C)],
                                  elements: [Value(element: Mineral.cuivre, score : .B),
                                             Value(element: Mineral.potassium, score : .B)])

  //  //----------------------------------------------------------------------------
  //  // MARK: - FRUIT DE LA PASSION
  //  //----------------------------------------------------------------------------

  static let passionFruit = ProductDetail(type: .fruit,
                                          name: "Fruit de la passion",
                                          chooseDescription:"""
Plus la peau du fruit de la passion est fripée et bosselée, plus il est mûr, savoureux et concentré en jus.

Attention toutefois qu'il ne soit pas trop léger, ce qui pourrait être synonyme de déshydratation trop prononcée.
""",
                                          conserveDescription:"""
Le fruit de la passion acheté non mûr doit se conserver à température ambiante.

Le fruit plissé, donc mûr, peut également rester à température ambiante mais il est conseiller de l'entreposer au réfrigérateur. Le congeler une fois bien mûr.
""",
                                          calories: "101kcal",
                                          glucides: "10,90g",
                                          fibres: "6,80g",
                                          water: "73,60g",
                                          vitamines: [Value(element: Vitamine.vitamineB9, score : .AP),
                                                      Value(element: Vitamine.vitamineC, score : .A),
                                                      Value(element: Vitamine.vitamineA, score : .B),
                                                      Value(element: Vitamine.vitamineB6, score : .C)],
                                          elements: [Value(element: Mineral.cuivre, score : .B),
                                                     Value(element: Mineral.potassium, score : .C),
                                                     Value(element: Mineral.manganèse, score : .C),
                                                     Value(element: Mineral.zinc, score : .C)])


  static let pineapple = ProductDetail(type: .fruit,
                                       name: "Ananas",
                                       chooseDescription:"""
Soupesez et sentez-le : il doit être lourd et parfumé.
Les feuilles de sa couronne doivent être d'un vert bien franc et d'apparence vigoureuse.

Pour juger de la maturité d'un ananas, vous pouvez tirer sur une de ces feuilles : si elle vient facilement, l'ananas est mûr à cœur.
""",
                                       conserveDescription:"""
Rangez les ananas entiers au frais dans le garde-manger ou une armoire.

Ne le mettez pas au frigo s'il est entier.

Une fois coupé, mettez les morceaux dans un contenant hermétique au frigo.

Assurez-vous de maintenir la température de votre frigo entre 0 et 4°C.
""",
                                       calories: "54,40kcal",
                                       glucides: "11,70g",
                                       fibres: "1,20g",
                                       water: "85,50g",
                                       vitamines: [Value(element: Vitamine.vitamineC, score : .AP),
                                                   Value(element: Vitamine.vitamineC, score : .C)],
                                       elements: [Value(element: Mineral.manganèse, score : .AP),
                                                  Value(element: Mineral.potassium, score : .C)])

  static let strawberry = ProductDetail(type: .fruit,
                                        name: "Fraise",
                                        chooseDescription:"""
Préférez des fruits totalement rouges, brillants et avec une collerette bien verte.

Car une fraise ne mûrit plus après la cueillette.

Le premier critère de sélection doit être la saison : avant mars, et après novembre, rabattez-vous sur les fruits d'hiver.
Le deuxième critère est la fraîcheur.
""",
                                        conserveDescription:"""
Les fraises sont des fruits fragiles, qui n’apprécient ni le froid qui leur enlève tout leur goût, ni la chaleur qui les abîme très rapidement, ni l’humidité.

Il est donc conseillé de ne pas les conserver au réfrigérateur, mais plutôt dans un endroit frais et sec.

Si vous n’avez pas le choix, sortez-les du bac à légumes de votre réfrigérateur au moins 20 minutes avant, afin qu’elle retrouvent leur goût, et ne les y laissez pas plus de 3 jours.

Ne les superposez pas, préférez les placer côte à côte et placez un essuie-tout par dessus qui absorbera l’humidité.
""",
                                        calories: "38,60kcal",
                                        glucides: "6,03g",
                                        fibres: "3,80g",
                                        water: "90,30g",
                                        vitamines: [Value(element: Vitamine.vitamineC, score : .AP),
                                                    Value(element: Vitamine.vitamineB9, score : .AP)],
                                        elements: [Value(element: Mineral.manganèse, score : .C)])


  static let watermelon = ProductDetail(type: .fruit,
                                        name: "Pastèque",
                                        chooseDescription:"""
Voici quelques conseils pour sélectionner une bonne pastèque :

- Vendue entière, fiez-vous à son poids. Elle doit être lourde et ferme, et l’écorce, lisse et brillante.

- Les moitiés et les quarts de pastèque sont vendus protégés de film alimentaire. Préférez alors un fruit dont la chair est d’un beau rouge soutenu.

- Une belle tache jaune sur la peau signifie que le fruit a bien pris le soleil et qu’il est donc parfaitement mûr.
""",
                                        conserveDescription:"""
Non entamée, vous pouvez sans problème la conserver une semaine, de préférence dans un endroit frais et bien aéré.

Si la pastèque est entamée, protégez sa chair avec du film alimentaire pour éviter qu'elle s'abîme et qu'elle s'assèche.

Par ailleurs, nous vous conseillons de la placer au réfrigérateur.
""",
                                        calories: "38,90kcal",
                                        glucides: "8,33g",
                                        fibres: "0,50g",
                                        water: "91g",
                                        vitamines: [Value(element: Vitamine.vitamineA, score : .B),
                                                    Value(element: Vitamine.vitamineB9, score : .B)],
                                        elements: [Value(element: Mineral.potassium, score : .C)])




  static let fruits = [melon, banane,kiwi, passionFruit, pineapple, strawberry, watermelon]

}
