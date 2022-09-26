//
//  ContainerViewController.swift
//  Good Choice
//
//  Created by Adam Mokhtar on 26/09/2022.
//

import UIKit

class ContainerViewController: UIViewController {

  //----------------------------------------------------------------------------
  // MARK: - Properties
  //----------------------------------------------------------------------------
  let bottomBarController = BottomBarViewController(nibName: nil, bundle: nil)

  //----------------------------------------------------------------------------
  // MARK: - Outlets
  //----------------------------------------------------------------------------

  @IBOutlet weak var bottomBar: UIView!

  //----------------------------------------------------------------------------
  // MARK: - Init
  //----------------------------------------------------------------------------

  override func viewDidLoad() {
    super.viewDidLoad()
    configureBottomBarController()
    
  }

  //----------------------------------------------------------------------------
  // MARK: - Setup
  //----------------------------------------------------------------------------

  /// Configure the view for the home container.
  func configureBottomBarController() {
    bottomBar.addSubview(bottomBarController.view)
    addChild(bottomBarController)
    bottomBarController.didMove(toParent: self)

    bottomBarController.view.translatesAutoresizingMaskIntoConstraints = false

    NSLayoutConstraint.activate([
      bottomBarController.view.topAnchor.constraint(equalTo: bottomBar.topAnchor),
      bottomBarController.view.bottomAnchor.constraint(equalTo: bottomBar.bottomAnchor),
      bottomBarController.view.leadingAnchor.constraint(equalTo: bottomBar.leadingAnchor),
      bottomBarController.view.trailingAnchor.constraint(equalTo: bottomBar.trailingAnchor),
    ])
  }


}
