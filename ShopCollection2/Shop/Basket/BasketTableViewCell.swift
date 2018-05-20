//
//  BasketTableViewCell.swift
//  ShopCollection2
//
//  Created by Сергей on 09.05.2018.
//  Copyright © 2018 Сергей. All rights reserved.
//

import UIKit

class BasketTableViewCell: UITableViewCell {
    @IBOutlet var itemName:UILabel!
    @IBOutlet var itemDescription:UILabel!
    @IBOutlet var itemImage:UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
