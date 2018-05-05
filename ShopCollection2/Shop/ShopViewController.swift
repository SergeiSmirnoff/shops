//
//  ShopViewController.swift
//  ShopCollection2
//
//  Created by Сергей on 30.04.2018.
//  Copyright © 2018 Сергей. All rights reserved.
//

import UIKit

class ShopViewController: UIViewController {
    @IBOutlet var tableView:UITableView!
    @IBAction func closeVC() {
        let alertVC = UIAlertController(title: "Back", message: "ARE YOU SHURE?", preferredStyle: .actionSheet)
        let alertAction1 = UIAlertAction(title: "NO", style: .cancel, handler: nil)
        let alertAction2 = UIAlertAction(title: "YES", style: .default) { _ in
            self.dismiss(animated: true, completion: nil)
        }
        alertVC.addAction(alertAction1)
        alertVC.addAction(alertAction2)
        present(alertVC, animated: true, completion: nil)
    }
    var theChosenShop:shop?
    
    
    private func registerCell () {
        let nib = UINib(nibName: "ShopTableViewCell", bundle: .main)
        tableView.register(nib, forCellReuseIdentifier: "ShopTableViewCell")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
registerCell()
    }
    
    
    
}


extension ShopViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (theChosenShop?.goods.count)!
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ShopTableViewCell", for:
            indexPath) as! ShopTableViewCell
        cell.name.text = theChosenShop?.goods[indexPath.row].itemName
        cell.details.text = theChosenShop?.goods[indexPath.row].itemDescription
        
        return cell
        
    }

}

extension ShopsViewController: UITabBarDelegate {
  
        
        

}


   


