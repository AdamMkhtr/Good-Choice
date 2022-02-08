//
//  FruitsTableViewCell.swift
//  Good Choice
//
//  Created by Adam Mokhtar on 07/02/2022.
//

import UIKit

class FruitsTableViewCell: UITableViewCell {
  
  
  //----------------------------------------------------------------------------
  // MARK: - Outlets
  //----------------------------------------------------------------------------
  
  @IBOutlet weak var fruitsView: UIView!
  
  //----------------------------------------------------------------------------
  // MARK: - Setup
  //----------------------------------------------------------------------------
  
  override func awakeFromNib() {
    super.awakeFromNib()
    setupCornerRadius()
  }
  
  override func setSelected(_ selected: Bool, animated: Bool) {
    super.setSelected(selected, animated: animated)
  }
  
  func setupCornerRadius() {
    fruitsView.layer.cornerRadius = 8
  }
  //----------------------------------------------------------------------------
  // MARK: - Methods
  //----------------------------------------------------------------------------
  
  
  
}
