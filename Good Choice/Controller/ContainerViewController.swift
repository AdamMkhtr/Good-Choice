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

  weak var delegateTopBar: DetailsTopBarDelegate?

  let baseController = BaseViewController(nibName: nil, bundle: nil)
  let bottomBarController = BottomBarViewController(nibName: nil, bundle: nil)
  let chooseController = ChooseViewController(nibName: nil, bundle: nil)
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
    setupDelegate()
    setupContainers()
    detailsTopBarView.isHidden = true
    setupBaseInformationContainer()
    setupNavigationBarContainer()
  }

  //----------------------------------------------------------------------------
  // MARK: - Setup
  //----------------------------------------------------------------------------

  /// setup all container for the app.
  func setupContainers() {
    configureTopNavigationBarController()
    configureMainController(controller: baseController)
    configureBottomBarController()
    configureTopDetailsBarController()
    setupBottomBarContainer()
  }

  /// Setup all delegate for the app.
  func setupDelegate() {

    delegateTopBar = detailsTopBarController.self
    bottomBarController.delegate = baseController.self
    baseController.delegateInformation = informationBaseController.self
    baseController.delegateDisplay = self
    baseController.delegateDescription = chooseController.self
    detailsTopBarController.informationDelegateDisplay = chooseController.self
    baseController.knowWhatProductDelegate = navigationBarController.self

  }

  /// Setup the button for the base container.
  func setupBaseInformationContainer() {
    detailsTopBarController.didTapSupply = { [weak self] in
      self?.configureMainController(controller: self!.informationBaseController)
    }
    detailsTopBarController.didTapChoose = { [weak self] in
      self?.configureMainController(controller: self!.chooseController)
    }
    detailsTopBarController.didTapConserve = { [weak self] in
      self?.configureMainController(controller: self!.chooseController)
    }
  }

  /// Setup how base display with bottom bar
  func setupBottomBarContainer() {
    bottomBarController.didTapFruit = { [weak self] in
      self?.configureMainController(controller: self!.baseController)
      self?.detailsTopBarView.isHidden = true
      self?.delegateTopBar?.didReeloadTopBarColor()
    }

    bottomBarController.didTapVegetable = { [weak self] in
      self?.configureMainController(controller: self!.baseController)
      self?.detailsTopBarView.isHidden = true
      self?.delegateTopBar?.didReeloadTopBarColor()
    }
  }

  /// Setup how base display with pas button on Navigation bar
  func setupNavigationBarContainer() {
    navigationBarController.didTapFruit = { [weak self] in
      self?.configureMainController(controller: self!.baseController)
      self?.detailsTopBarView.isHidden = true
      self?.delegateTopBar?.didReeloadTopBarColor()
    }

    navigationBarController.didTapVegetable = { [weak self] in
      self?.configureMainController(controller: self!.baseController)
      self?.detailsTopBarView.isHidden = true
      self?.delegateTopBar?.didReeloadTopBarColor()
    }
  }

  /// Configure the view for the Details Top Bar container.
  func configureTopDetailsBarController() {
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

  /// Configure the view for the bottom bar container.
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

  /// Configure the view for the top bar navigation container.
  func configureTopNavigationBarController() {
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

  /// Configure the view for Main container.
  func configureMainController(controller : UIViewController) {
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

//----------------------------------------------------------------------------
// MARK: - Extension
//----------------------------------------------------------------------------

extension ContainerViewController: DisplayDelegate {
  func didDisplayTheInformationsView() {
    setupBaseInformationContainer()
    detailsTopBarView.isHidden = false
    configureMainController(controller: informationBaseController)
  }
}
