//
//  ImageTableViewCell.swift
//  tableview-custom-ios
//
//  Created by Hantash on 18/12/2021.
//

import UIKit

class ImageTableViewCell: UITableViewCell {
    static let identifier = "ImageTableViewCell"
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var countryImageView: UIImageView!
    @IBOutlet weak var countryLabel: UILabel!

    public func configureCell(countryName: String) {
        countryImageView.image = UIImage(named: countryName)
        countryLabel.text = countryName.uppercased()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        //Styling the cell
        containerView.layer.cornerRadius = containerView.frame.height / 2
        countryImageView.layer.cornerRadius = countryImageView.frame.height / 2
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
}
 
