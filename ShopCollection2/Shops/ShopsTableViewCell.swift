//
//  ShopsTableViewCell.swift
//  ShopCollection2
//
//  Created by Сергей on 22.04.2018.
//  Copyright © 2018 Сергей. All rights reserved.
//

import UIKit

class ShopsTableViewCell: UITableViewCell {
//    @IBOutlet var shopName:String!
    @IBOutlet var magazineName:UILabel!
    @IBOutlet var magazineImage:UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
