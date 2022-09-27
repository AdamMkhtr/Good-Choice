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

extension BaseViewController: UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 4
  }

  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    guard let cell = tableView.dequeueReusableCell(withIdentifier: "ChoiceCell", for: indexPath) as? ChoiceTableViewCell else {
      print("Error create Cell")
      return UITableViewCell()
    }
    return cell
  }


}

extension BaseViewController: UITableViewDelegate {

}

