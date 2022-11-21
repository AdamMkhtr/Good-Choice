//
//  ChoiceTableViewCell.swift
//  Good Choice
//
//  Created by Adam Mokhtar on 27/09/2022.
//

import UIKit

class ChoiceTableViewCell: UITableViewCell {

  //----------------------------------------------------------------------------
  // MARK: - Properties
  //----------------------------------------------------------------------------

  //----------------------------------------------------------------------------
  // MARK: - Outlets
  //----------------------------------------------------------------------------

  @IBOutlet weak var baseView: UIView!
  @IBOutlet weak var nameCellLabel: UILabel!

  //----------------------------------------------------------------------------
  // MARK: - Init
  //----------------------------------------------------------------------------

  override func awakeFromNib() {
    super.awakeFromNib()
    setupCornerRadius()
  }

  override func setSelected(_ selected: Bool, animated: Bool) {
    super.setSelected(selected, animated: animated)
  }

  func setupCornerRadius() {
    baseView.clipsToBounds = true
    baseView.layer.cornerRadius = 30
    baseView.layer.borderWidth = 0
  }

  //----------------------------------------------------------------------------
  // MARK: - Methods
  //----------------------------------------------------------------------------

}
