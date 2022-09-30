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
  let navigationBarController = NavigationViewController(nibName: nil, bundle: nil)
  let baseBarController = BaseViewController(nibName: nil, bundle: nil)
  let informationBaseController = InformationBaseViewController(nibName: nil, bundle: nil)
  let detailsTopBarController = DetailsTopBarViewController(nibName: nil, bundle: nil)
  //----------------------------------------------------------------------------
  // MARK: - Outlets
  //----------------------------------------------------------------------------

  @IBOutlet weak var baseView: UIView!
  @IBOutlet weak var bottomBar: UIView!
  @IBOutlet weak var navigationBarView: UIView!
  @IBOutlet weak var detailsTopBarView: UIView!
  //----------------------------------------------------------------------------
  // MARK: - Init
  //----------------------------------------------------------------------------

  override func viewDidLoad() {
    super.viewDidLoad()
    configureBottomBarController()
    configureNavigationBarController()
    configureBaseBarController()
    configureDetailsBarController()
  }

  //----------------------------------------------------------------------------
  // MARK: - Setup
  //----------------------------------------------------------------------------

  /// Configure the view for the home container.
  func configureDetailsBarController() {
    detailsTopBarView.addSubview(detailsTopBarController.view)
    addChild(detailsTopBarController)
    detailsTopBarController.didMove(toParent: self)

    detailsTopBarController.view.translatesAutoresizingMaskIntoConstraints = false

    NSLayoutConstraint.activate([
      detailsTopBarController.view.topAnchor.constraint(equalTo: detailsTopBarView.topAnchor),
      detailsTopBarController.view.bottomAnchor.constraint(equalTo: detailsTopBarView.bottomAnchor),
      detailsTopBarController.view.leadingAnchor.constraint(equalTo: detailsTopBarView.leadingAnchor),
      detailsTopBarController.view.trailingAnchor.constraint(equalTo: detailsTopBarView.trailingAnchor),
    ])
  }

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

  /// Configure the view for the home container.
  func configureNavigationBarController() {
    navigationBarView.addSubview(navigationBarController.view)
    addChild(navigationBarController)
    navigationBarController.didMove(toParent: self)

    navigationBarController.view.translatesAutoresizingMaskIntoConstraints = false

    NSLayoutConstraint.activate([
      navigationBarController.view.topAnchor.constraint(equalTo: navigationBarView.topAnchor),
      navigationBarController.view.bottomAnchor.constraint(equalTo: navigationBarView.bottomAnchor),
      navigationBarController.view.leadingAnchor.constraint(equalTo: navigationBarView.leadingAnchor),
      navigationBarController.view.trailingAnchor.constraint(equalTo: navigationBarView.trailingAnchor),
    ])
  }

//  /// Configure the view for the home container.
//  func configureBaseBarController() {
//    baseView.addSubview(baseBarController.view)
//    addChild(baseBarController)
//    baseBarController.didMove(toParent: self)
//
//    baseBarController.view.translatesAutoresizingMaskIntoConstraints = false
//
//    NSLayoutConstraint.activate([
//      baseBarController.view.topAnchor.constraint(equalTo: baseView.topAnchor),
//      baseBarController.view.bottomAnchor.constraint(equalTo: baseView.bottomAnchor),
//      baseBarController.view.leadingAnchor.constraint(equalTo: baseView.leadingAnchor),
//      baseBarController.view.trailingAnchor.constraint(equalTo: baseView.trailingAnchor),
//    ])
//  }

  /// Configure the view for the home container.
  func configureBaseBarController() {
    baseView.addSubview(informationBaseController.view)
    addChild(informationBaseController)
    informationBaseController.didMove(toParent: self)

    informationBaseController.view.translatesAutoresizingMaskIntoConstraints = false

    NSLayoutConstraint.activate([
      informationBaseController.view.topAnchor.constraint(equalTo: baseView.topAnchor),
      informationBaseController.view.bottomAnchor.constraint(equalTo: baseView.bottomAnchor),
      informationBaseController.view.leadingAnchor.constraint(equalTo: baseView.leadingAnchor),
      informationBaseController.view.trailingAnchor.constraint(equalTo: baseView.trailingAnchor),
    ])
  }


}
