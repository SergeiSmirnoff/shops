//
//  ShopViewController.swift
//  ShopCollection2
//
//  Created by Сергей on 30.04.2018.
//  Copyright © 2018 Сергей. All rights reserved.
//

import UIKit
import RealmSwift

class ShopViewController: UIViewController {
    @IBOutlet var tableView:UITableView!

    var theChosenShop: Shop?
    
    
    @IBAction func showBasket() {
        guard let nibs = Bundle.main.loadNibNamed("BasketViewController", owner: nil, options: nil),
            let basketVC = nibs[0] as?  BasketViewController else {
                fatalError()
        }
        navigationController?.pushViewController(basketVC, animated: true)
    }    
        
    
    
    private func registerCell () {
        let nib = UINib(nibName: "ShopTableViewCell", bundle: .main)
        tableView.register(nib, forCellReuseIdentifier: "ShopTableViewCell")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCell()
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
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
        if let id = theChosenShop?.goods[indexPath.row].itemId {
            cell.photo.image = UIImage(named:"\(id)")
        }
        cell.indexPath = indexPath
        return cell
        
    }
    
}

extension ShopViewController: UITableViewDelegate {
   
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        guard let item = theChosenShop?.goods[indexPath.row] else {
            return
        }
        print(item)
        addItem(item: item)
    }
    func addItem(item:ShopItem) {
        do {
            // Realm.Configuration.defaultConfiguration = Realm.Configuration(deleteRealmIfMigrationNeeded:true)
            let realm = try Realm()
            realm.beginWrite()
            realm.add(item)
                try realm.commitWrite()
                print(realm.configuration.fileURL)
        }
        catch{
            print ("error")
        }
    }
    
}
    
        
        
    



   


