//
//  BasketViewController.swift
//  ShopCollection2
//
//  Created by Сергей on 09.05.2018.
//  Copyright © 2018 Сергей. All rights reserved.
//

import UIKit
import RealmSwift

extension Results {
    func toArray<T>(ofType: T.Type) -> [T] {
        let array = Array(self) as! [T]
        return array
    }
}

class BasketViewController: UIViewController {
    
    @IBOutlet var tableView:UITableView!
    
    let realm = try! Realm()
    var shopItems = [ShopItem]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCell()
        loadItems()
    }
    
    func loadItems() {
        shopItems = realm.objects(ShopItem.self).toArray(ofType: ShopItem.self)
        print(Set.init(shopItems))
    }
    
    private func registerCell () {
        let nib = UINib(nibName: "BasketTableViewCell", bundle: .main)
        tableView.register(nib, forCellReuseIdentifier: "BasketTableViewCell")
    }
}
extension BasketViewController: UITableViewDataSource {
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return shopItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BasketTableViewCell", for:
            indexPath) as! BasketTableViewCell
        cell.itemName.text = shopItems[indexPath.row].itemName
        cell.itemDescription.text = shopItems[indexPath.row].itemDescription
        cell.itemImage.image = UIImage(named: shopItems[indexPath.row].itemId)
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            do {
            }
            catch{
                print ("error")
            }
        }
            

        }
    }
    


//1 - полная очистка
//2 - удаление по свайпу
//3 - https://jsonplaceholder.typicode.com/posts
//4 - создат модель
//5 - загрузка постов
//6 - отображение постов
//7 - проверка сети -> если есть то отправляем запрос и отображает из полученных данных, сохрнаяя их локально, если нет отображаем ил бд
//8 - Codable
