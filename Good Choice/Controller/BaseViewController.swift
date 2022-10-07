//
//  BaseViewController.swift
//  Good Choice
//
//  Created by Adam Mokhtar on 27/09/2022.
//

import UIKit

class BaseViewController: UIViewController {

  //----------------------------------------------------------------------------
  // MARK: - Properties
  //----------------------------------------------------------------------------

  var dataCell = Fruit.fruits
  //----------------------------------------------------------------------------
  // MARK: - Outlets
  //----------------------------------------------------------------------------

  @IBOutlet weak var choiceTableView: UITableView!

  //----------------------------------------------------------------------------
  // MARK: - Init
  //----------------------------------------------------------------------------

  override func viewDidLoad() {
    super.viewDidLoad()
    setupTableView()
  }

  func setupTableView() {
    self.choiceTableView.register(UINib(nibName: "ChoiceTableViewCell", bundle: nil), forCellReuseIdentifier: "ChoiceCell")
    choiceTableView.dataSource = self
    choiceTableView.delegate = self
  }

  //----------------------------------------------------------------------------
  // MARK: - Methods
  //----------------------------------------------------------------------------

}

//----------------------------------------------------------------------------
// MARK: - Extension delegate bottom bar
//----------------------------------------------------------------------------

extension BaseViewController: BottomBarDelegate {

  func didLauchRequestFruits() {
    print("coucou")
    dataCell = Fruit.fruits
    choiceTableView.reloadData()
  }

  func didLauchRequestVegetables() {
    print("coucou2")
    dataCell = Vegetable.vegetables
    choiceTableView.reloadData()
  }
}

//----------------------------------------------------------------------------
// MARK: - Extension TableView Data source
//----------------------------------------------------------------------------

extension BaseViewController: UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return dataCell.count
  }

  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    guard let cell = tableView.dequeueReusableCell(withIdentifier: "ChoiceCell", for: indexPath) as? ChoiceTableViewCell else {
      print("Error create Cell")
      return UITableViewCell()
    }
    cell.nameCellLabel.text = dataCell[indexPath.row]

    return cell
  }
}

//----------------------------------------------------------------------------
// MARK: - Extension TableView Delegate
//----------------------------------------------------------------------------

extension BaseViewController: UITableViewDelegate {

}

