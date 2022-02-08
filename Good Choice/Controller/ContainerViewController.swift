//
//  ContainerViewController.swift
//  Good Choice
//
//  Created by Adam Mokhtar on 07/02/2022.
//

import UIKit

class ContainerViewController: UIViewController {

  //----------------------------------------------------------------------------
  // MARK: - Properties
  //----------------------------------------------------------------------------

  let fruitsController = FruitsViewController(nibName: nil, bundle: nil)

  //----------------------------------------------------------------------------
  // MARK: - Outlets
  //----------------------------------------------------------------------------

  @IBOutlet weak var fruitsViewContainer: UIView!


  //----------------------------------------------------------------------------
  // MARK: - Setup
  //----------------------------------------------------------------------------


  override func viewDidLoad() {
    super.viewDidLoad()
    setupContainers()
  }

  func setupContainers() {
    configureHomeController()
  }

  //----------------------------------------------------------------------------
  // MARK: - Methods
  //----------------------------------------------------------------------------

  /// Configure the view for the fruits container.
  func configureHomeController() {
    fruitsViewContainer.addSubview(fruitsController.view)
    addChild(fruitsController)
    fruitsController.didMove(toParent: self)

    fruitsController.view.translatesAutoresizingMaskIntoConstraints = false

    NSLayoutConstraint.activate([
      fruitsController.view.topAnchor.constraint(equalTo: fruitsViewContainer.topAnchor),
      fruitsController.view.bottomAnchor.constraint(equalTo: fruitsViewContainer.bottomAnchor),
      fruitsController.view.leadingAnchor.constraint(equalTo: fruitsViewContainer.leadingAnchor),
      fruitsController.view.trailingAnchor.constraint(equalTo: fruitsViewContainer.trailingAnchor),
    ])
  }

}
