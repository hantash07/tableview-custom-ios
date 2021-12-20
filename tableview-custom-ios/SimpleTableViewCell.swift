//
//  SimpleTableViewCell.swift
//  tableview-custom-ios
//
//  Created by Hantash on 18/12/2021.
//

import UIKit

class SimpleTableViewCell: UITableViewCell {
    static let identifier = "SimpleTableViewCell"
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    @IBOutlet weak var label: UILabel!
    
    func configureCell(text: String) {
        label.text = text
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
