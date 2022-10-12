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

  let baseController = BaseViewController(nibName: nil, bundle: nil)
  let bottomBarController = BottomBarViewController(nibName: nil, bundle: nil)
  let ChooseController = ChooseViewController(nibName: nil, bundle: nil)
  let informationBaseController = InformationBaseViewController(nibName: nil, bundle: nil)
  let detailsTopBarController = DetailsTopBarViewController(nibName: nil, bundle: nil)
  let navigationBarController = NavigationViewController(nibName: nil, bundle: nil)

  //----------------------------------------------------------------------------
  // MARK: - Outlets
  //----------------------------------------------------------------------------

  @IBOutlet weak var bottomBar: UIView!
  @IBOutlet weak var baseView: UIView!
  @IBOutlet weak var navigationBarView: UIView!
  @IBOutlet weak var detailsTopBarView: UIView!
  
  //----------------------------------------------------------------------------
  // MARK: - Init
  //----------------------------------------------------------------------------

  override func viewDidLoad() {
    super.viewDidLoad()
 //   setupBaseContainer()

    configureTableViewController()
    configureBottomBarController()
    configureNavigationBarController()
    configureDetailsBarController()
    detailsTopBarView.isHidden = true

  }

  //----------------------------------------------------------------------------
  // MARK: - Setup
  //----------------------------------------------------------------------------

  /// Setup the button for the base container.
  func setupBaseContainer() {
    detailsTopBarController.didTapSupply = { [weak self] in
      self?.configureBaseBarController(controller: self!.informationBaseController)
    }
    detailsTopBarController.didTapChoose = { [weak self] in
      self?.configureBaseBarController(controller: self!.ChooseController)
    }
    detailsTopBarController.didTapConserve = { [weak self] in
      self?.configureBaseBarController(controller: self!.ChooseController)
    }
  }

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

    /// Configure the view for the home container.
    func configureTableViewController() {
      baseView.addSubview(baseController.view)
      addChild(baseController)
      baseController.didMove(toParent: self)

      baseController.view.translatesAutoresizingMaskIntoConstraints = false
      bottomBarController.delegate = baseController.self

      NSLayoutConstraint.activate([
        baseController.view.topAnchor.constraint(equalTo: baseView.topAnchor),
        baseController.view.bottomAnchor.constraint(equalTo: baseView.bottomAnchor),
        baseController.view.leadingAnchor.constraint(equalTo: baseView.leadingAnchor),
        baseController.view.trailingAnchor.constraint(equalTo: baseView.trailingAnchor),
      ])
    }

  /// Configure the view for the home container.
  func configureBaseBarController(controller : UIViewController) {
    baseView.addSubview(controller.view)
    addChild(controller)
    controller.didMove(toParent: self)

    controller.view.translatesAutoresizingMaskIntoConstraints = false

    NSLayoutConstraint.activate([
      controller.view.topAnchor.constraint(equalTo: baseView.topAnchor),
      controller.view.bottomAnchor.constraint(equalTo: baseView.bottomAnchor),
      controller.view.leadingAnchor.constraint(equalTo: baseView.leadingAnchor),
      controller.view.trailingAnchor.constraint(equalTo: baseView.trailingAnchor),
    ])
  }
}

