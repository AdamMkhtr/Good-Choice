//
//  FruitsViewController.swift
//  Good Choice
//
//  Created by Adam Mokhtar on 07/02/2022.
//

import UIKit

class FruitsViewController: UIViewController {



  //----------------------------------------------------------------------------
  // MARK: - Properties
  //----------------------------------------------------------------------------




  //----------------------------------------------------------------------------
  // MARK: - Outlets
  //----------------------------------------------------------------------------

  @IBOutlet weak var fruitsTableView: UITableView!

  //----------------------------------------------------------------------------
  // MARK: - Setup
  //----------------------------------------------------------------------------


  override func viewDidLoad() {
    super.viewDidLoad()
    self.fruitsTableView.register(UINib(nibName: "FruitsTableViewCell", bundle: nil), forCellReuseIdentifier: "FruitsCell")
    fruitsTableView.delegate = self
    fruitsTableView.dataSource = self
  }

  //----------------------------------------------------------------------------
  // MARK: - Methods
  //----------------------------------------------------------------------------



}



//----------------------------------------------------------------------------
// MARK: - Extension Data source
//----------------------------------------------------------------------------

extension FruitsViewController: UITableViewDataSource {

  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 10
  }

  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    guard let cell = tableView.dequeueReusableCell(withIdentifier: "FruitsCell", for: indexPath) as? FruitsTableViewCell else {
      print("Error create Cell")
      return UITableViewCell()
    }

    return cell
  }

}

//----------------------------------------------------------------------------
// MARK: - Extension delegate
//----------------------------------------------------------------------------

extension FruitsViewController: UITableViewDelegate {


  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
      let cell = tableView.cellForRow(at: indexPath)
      guard cell is FruitsTableViewCell else { return }
      DetailsViewController()
  }

}
