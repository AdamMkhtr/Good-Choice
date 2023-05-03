//
//  Vegetable.swift
//  Good Choice
//
//  Created by Adam Mokhtar on 27/09/2022.
//

import Foundation

class Vegetable {

  //----------------------------------------------------------------------------
  // MARK: - AVOCAT
  //----------------------------------------------------------------------------

//  static let avocat = ProductDetail(type: .vegetable,
//                                    name: "Avocat",
//                                    chooseDescription:"""
//En pressant doucement, votre fruit en 3 ou 4 points avec un doigt, vous pourrez vous assurer qu'il est uniformément mûr.
//Si le doigt s'enfonce sans rencontrer trop de résistance, mais sans pénétrer trop facilement non plus (et sans laisser de marques sur la peau), votre avocat est mûr à point.
//
//L’avocat est mûr lorsque la base du pédoncule  est souple à la pression.
//Une autre astuce consiste à enlever la tige. Pour permettre à d’autres de faire ce test en magasin, faites ce test après les deux premiers et uniquement si vous achetez cet avocat.
//Enlevez le pédoncule de votre avocat :
//
//- S’il s’enlève facilement et que la couleur est verte votre avocat est mûr.
//- S’il s’enlève facilement et que la couleur est marron ou noircie, votre avocat est peut-être trop mûr, voire pire abîmé.
//- Si la tige est rigide, il n’est pas encore mûr si vous faîtes les deux premiers tests vous ne devriez pas en arriver à là pour vous en rendre compte.
//""",
//                                    conserveDescription:"""
//Le frigo est le meilleur endroit pour conserver les avocats mûrs.
//
//Conservez les avocats mûrs au frigo dans leur emballage d'origine.
//
//Pour faire mûrir les avocats, laissez-les à température ambiante jusqu'à ce qu'ils mûrissent, puis mettez-les au frigo jusqu'au moment de les utiliser.
//""",
//                                    calories: "205kcal",
//                                    glucides: "0,83g",
//                                    fibres: "3,6g",
//                                    water: "84,30g",
//                                    vitamines: [Value(name: "B9", score : .A),
//                                                Value(name: "K1", score : .B),
//                                                Value(name: "B5", score : .C),
//                                                Value(name: "E", score : .C),
//                                                Value(name: "B6", score : .C)],
//                                    elements: [Value(name: "Potassium", score : .A),
//                                               Value(name: "Cuivre", score : .B),
//                                               Value(name: "Manganèse", score : .C)])
//
//  //----------------------------------------------------------------------------
//  // MARK: - ARTICHAUT
//  //----------------------------------------------------------------------------
//
//  static let artichaut = ProductDetail(type: .vegetable,
//                                       name: "Artichaut",
//                                       chooseDescription:"""
//   La tête d'artichaut doit présenter un aspect dense et des écailles non tachées et bien serrées.
//
//   Les feuilles des artichauts violets doivent être drues et légèrement piquantes.
//
//   Une tige légèrement humide et de couleur tendre est gage de fraîcheur.
//   """,
//                                       conserveDescription:"""
//   Au réfrigérateur, l'artichaut se conserve quelques jours dans un sac plastique après une légère humidification des feuilles.
//
//   Si l'artichaut a encore sa queue, placez-le dans un récipient avec un fond d'eau et conservez-le au réfrigérateur.
//
//   Il ne doit être lavé qu'au moment de sa préparation.
//   """,
//                                       calories: "47,30kcal",
//                                       glucides: "0,83g",
//                                       fibres: "3,6g",
//                                       water: "81,40g",
//                                       vitamines: [Value(name: "B9", score : .A),
//                                                   Value(name: "K1", score : .B),
//                                                   Value(name: "C", score : .B)],
//                                       elements: [Value(name: "Cuivre", score : .B),
//                                                  Value(name: "Potassium", score : .B),
//                                                  Value(name: "Manganèse", score : .C),
//                                                  Value(name: "Magnésium", score : .C)])
//
//  //----------------------------------------------------------------------------
//  // MARK: - CHAMPIGNON
//  //----------------------------------------------------------------------------
//
//  static let champignon = ProductDetail(type: .vegetable,
//                                        name: "Champignon de Paris",
//                                        chooseDescription:"""
//    - Leur couleur, blanche ou dorée, doit être parfaitement uniforme.
//
//
//    - Le chapeau doit être bien fermé autour du pied. S’ils sont vendus sans leur pied, la coupe doit être récente et fraîche. Elle ne doit donc pas avoir bruni.
//
//
//    - Choisissez leur taille en fonction de leur destination. Les plus gros sont délicieux farcis, les moyens en salades ou poêlés, et les plus petits seront fondants dans les plats mijotés.
//    """,
//                                        conserveDescription:"""
//    Pour bien garder les champignons au réfrigérateur, il faut permettre une circulation de l'air.
//
//    Leur contenant d'origine conserve trop l'humidité, conservez-les plutôt dans un sac de papier.
//
//    Comme de nombreux autres légumes, il est conseillé de ne nettoyer les champignons seulement au moment de les apprêter.
//    """,
//                                        calories: "38,40kcal",
//                                        glucides: "4,53mg",
//                                        fibres: "0,90g",
//                                        water: "88,40g",
//                                        vitamines: [Value(name: "B3", score : .A),
//                                                    Value(name: "B5", score : .A),
//                                                    Value(name: "B2", score : .B),
//                                                    Value(name: "B9", score : .B)],
//                                        elements: [Value(name: "Cuivre", score : .A),
//                                                   Value(name: "Potassium", score : .B),
//                                                   Value(name: "Phosphore", score : .B),
//                                                   Value(name: "Sélénium", score : .C)])
//
//  //----------------------------------------------------------------------------
//  // MARK: - COURGETTE
//  //----------------------------------------------------------------------------
//
//  static let courgette = ProductDetail(type: .vegetable,
//                                       name: "Courgette",
//                                       chooseDescription:"""
//   - Elles doivent être lisses, denses et fermes sous les doigts, c'est la garantie de sa fraîcheur.
//
//   - Regardez-les sous tous les angles : la peau doit être exempte de taches brunes.
//   """,
//                                       conserveDescription:"""
//   Pour les garder plus longtemps, disposez-les plutôt à l'obscurité, dans un endroit frais.
//
//   Le lieu idéal ? Une cave à l'abri de l'humidité ! Déposées dans des cagettes et espacées les unes des autres, vos courgettes se conserveront ainsi jusqu'à 4 mois.
//   """,
//                                       calories: "23kcal",
//                                       glucides: "3,13g",
//                                       fibres: "1,7g",
//                                       water: "93,10g",
//                                       vitamines: [Value(name: "B9", score : .B),
//                                                   Value(name: "C", score : .B),
//                                                   Value(name: "B6", score : .C)],
//                                       elements: [Value(name: "Potassium", score : .C),
//                                                  Value(name: "Manganèse", score : .C)])
//
//  //----------------------------------------------------------------------------
//  // MARK: - CONCOMBRE
//  //----------------------------------------------------------------------------
//
//  static let concombre = ProductDetail(type: .vegetable,
//                                       name: "Concombre",
//                                       chooseDescription:"""
//   Il doit avoir les deux extrémités bien dures, la peau lisse, verte et ferme.
//
//   Bon à savoir : plus il est petit, moins il contient de graines et plus il est concentré en saveurs.
//   """,
//                                       conserveDescription:"""
//   - Conservez le concombre (entier ou coupé) au réfrigérateur, dans le bac à légumes, dans un sac plastique ou autre contenant hermétique pour qu’il se conserve plus longtemps et qu’il ne donne pas son goût aux autres aliments.
//
//   - Si vous préférez son goût à la température de la pièce, il peut être conservé quelques jours sur le comptoir s’il n’est pas entamé. Vous pouvez aussi le sortir du réfrigérateur un peu avant votre repas.
//   """,
//                                       calories: "14,70kcal",
//                                       glucides: "2,23g",
//                                       fibres: "0,90g",
//                                       water: "96,30g",
//                                       vitamines: [Value(name: "C", score : .C)],
//                                       elements: [Value(name: "Potassium", score : .C)])
//
//  //----------------------------------------------------------------------------
//  // MARK: - HARICOT VERT
//  //----------------------------------------------------------------------------
//
//  static let haricotVert = ProductDetail(type: .vegetable,
//                                         name: "Haricot vert",
//                                         chooseDescription:"""
//     - Notez bien la catégorie : moyen, fin ou extra-fin. Selon la norme européenne, seuls les haricots filets très fins peuvent être classés dans la catégorie extra. Les gousses doivent être gonflées, très tendres, sans défauts, sans fils, ni grains.
//
//     - Soyez attentif à l’origine : en été, préférez des haricots produits en France. En hiver, le haricot du Kenya reste une valeur sûre.
//
//     - Le haricot doit être fin, long et ferme. Plus il est gros, plus vous risquez de trouver des fils.
//
//     - Un haricot frais doit se rompre immédiatement si vous le pliez. Vous verrez alors une goutte d’eau perler à l’endroit où vous avez cassé la gousse.
//
//     - Cherchez un produit sans taches avec une couleur uniforme.
//
//     - Les haricots beurre doivent être d’un beau jaune qui évoque… le beurre, évidemment ! N’hésitez pas néanmoins à les prendre encore un peu verts.
//
//     - Demandez conseil à votre maraîcher, il connaît bien les meilleurs produits du moment.
//     """,
//                                         conserveDescription:"""
//     Conserver les haricots verts crus au réfrigérateur ne dure pas plus de 4 jours.
//
//     Pour prolonger un peu leur durée de vie, nettoyez-les si besoin à la main ou avec un torchon (pas à l’eau donc) et mettez-les bien rangés dans une serviette en papier puis dans un sac hermétique.
//
//     La serviette en papier va absorber l’humidité des haricots verts, ralentissant l’apparition de moisissures.
//
//     Fermez le sac en enlevant le plus d’air possible.
//
//     Vous le placerez ensuite dans le bac à légume du réfrigérateur où ils pourront rester jusqu’à 1 semaine.
//     """,
//                                         calories: "28kcal",
//                                         glucides: "3,39g",
//                                         fibres: "3,20g",
//                                         water: "90,8g",
//                                         vitamines: [Value(name: "B9", score : .A),
//                                                     Value(name: "K1", score : .B),
//                                                     Value(name: "C", score : .B)],
//                                         elements: [Value(name: "Manganèse", score : .C),
//                                                    Value(name: "Potassium", score : .C)])
//
//  //----------------------------------------------------------------------------
//  // MARK: - PETIT POIS
//  //----------------------------------------------------------------------------
//
//  static let petitPois = ProductDetail(type: .vegetable,
//                                       name: "Petit pois",
//                                       chooseDescription:"""
//   - Dans sa cosse, et pas autrement : le petit pois frais ne peut pas être vendu hors de sa housse protectrice. Vert tendre, bien renflée, ferme et transpirant d’humidité, c’est un gage de fraîcheur.
//
//   - Si la cosse a commencé à jaunir, les petits pois sont déjà trop avancés et ils risquent d’être farineux.
//
//   - Goûtez ! mais demandez tout de même au maraîcher de vous ouvrir une gousse. Ça ne le dérangera pas, et c’est l’occasion pour vous de croquer un petit pois frais : un concentré de fraîcheur subtilement sucré !
//   """,
//                                       conserveDescription:"""
//   Les petits pois frais se conservent très peu de temps: seulement 2 à 3 jours dans leur gousse, dans le bac du réfrigérateur.
//
//   Les petits poids écossés seront encore plus fragiles.
//
//   Si vous voulez garder vos petits pois plus longtemps, mieux vaudra envisager de les congeler ou de les stériliser.
//   """,
//                                       calories: "80,30kcal",
//                                       glucides: "9,93g",
//                                       fibres: "4,80g",
//                                       water: "77,40g",
//                                       vitamines: [Value(name: "K1", score : .AP),
//                                                   Value(name: "C", score : .AP),
//                                                   Value(name: "B1", score : .A),
//                                                   Value(name: "B9", score : .A),
//                                                   Value(name: "B3", score : .C)],
//                                       elements: [Value(name: "Manganèse", score : .B),
//                                                  Value(name: "Phosphore", score : .B),
//                                                  Value(name: "Cuivre", score : .C),
//                                                  Value(name: "Fer", score : .C)])
//

  static let vegetables = [Fruit.melon]//avocat, artichaut, champignon, courgette, concombre,haricotVert, petitPois]

}
