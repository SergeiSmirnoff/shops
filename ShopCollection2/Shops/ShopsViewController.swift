//
//  ShopsViewController.swift
//  ShopCollection2
//
//  Created by Сергей on 22.04.2018.
//  Copyright © 2018 Сергей. All rights reserved.
//

import UIKit

class ShopsViewController: UIViewController {
    
    @IBOutlet var tableView:UITableView!
    
    let shopMagager = ShopData()
    var shopsCollection = [Shop]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCell()
        shopMagager.managingShops { differentShops in
            self.shopsCollection = differentShops
            self.tableView.reloadData()
            
        }
    }
    
    private func registerCell () {
        let nib = UINib(nibName: "ShopsTableViewCell", bundle: .main)
        tableView.register(nib, forCellReuseIdentifier: "ShopsTableViewCell")
    }
}


extension ShopsViewController:UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return shopsCollection.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ShopsTableViewCell", for:
            indexPath) as! ShopsTableViewCell
        cell.magazineName.text = shopsCollection[indexPath.row].shopName
        cell.magazineImage.image = shopsCollection[indexPath.row].shopPhoto
        return cell
    }
}

extension  ShopsViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        guard let nibs = Bundle.main.loadNibNamed("ShopViewController", owner: nil, options: nil),
            let shopVC = nibs[0] as? ShopViewController else {
                fatalError()
        }
        shopVC.theChosenShop = shopsCollection[indexPath.row]
       // present(shopVC, animated: true, completion: nil)
        navigationController?.pushViewController(shopVC, animated: true)
    }
}

