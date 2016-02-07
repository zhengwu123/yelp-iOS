//
//  BuisnessCell.swift
//  Yelp
//
//  Created by Matthew Page on 2/4/16.
//  Copyright © 2016 Timothy Lee. All rights reserved.
//

import UIKit

class BuisnessCell: UITableViewCell {
    
    var business: Business! {
        didSet {
            nameLabel.text = business.name
            distanceLabel.text = business.distance
            addressLabel.text = business.address
            reviewsCountLabel.text = "\(business.reviewCount!) rieview" + (business.reviewCount != 1 ? "s" : "")
            categoriesLabel.text = business.categories
            thumbImageView.setImageWithURL(business.imageURL!)
            ratingImageView.setImageWithURL(business.ratingImageURL!)
        }
    }

    @IBOutlet weak var thumbImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var ratingImageView: UIImageView!
    @IBOutlet weak var reviewsCountLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var categoriesLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        thumbImageView.layer.cornerRadius = 10
        thumbImageView.clipsToBounds = true
        
//        nameLabel.preferredMaxLayoutWidth = nameLabel.frame.size.width
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
//        nameLabel.preferredMaxLayoutWidth = nameLabel.frame.size.width
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
