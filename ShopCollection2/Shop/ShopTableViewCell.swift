//
//  ShopTableViewCell.swift
//  ShopCollection2
//
//  Created by Сергей on 30.04.2018.
//  Copyright © 2018 Сергей. All rights reserved.
//

import UIKit

class ShopTableViewCell: UITableViewCell {
    @IBOutlet var name: UILabel!
    @IBOutlet var details: UILabel!
    @IBOutlet var photo: UIImageView!
    
    
    var indexPath: IndexPath?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBAction func addItem() {
        
}
}
