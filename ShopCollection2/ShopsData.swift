//
//  ShopsData.swift
//  ShopCollection2
//
//  Created by Сергей on 22.04.2018.
//  Copyright © 2018 Сергей. All rights reserved.
//

import Foundation
import RealmSwift
import UIKit

struct Shop {
    var shopName: String
    var goods: [ShopItem]
    var shopPhoto: UIImage?
}

class ShopItem:Object {
    @objc dynamic var itemName:String = ""
    @objc dynamic var itemId:String = ""
    @objc dynamic var itemDescription:String = ""
    convenience init(itemName:String,itemId:String,itemDescription:String){
        self.init()
        self.itemName = itemName
        self.itemId = itemId
        self.itemDescription = itemDescription
    }
}

class ShopData {
    
    func managingShops(completion:([Shop]) -> Void) {
        
        let balloon = ShopItem(itemName: "Шар воздушный", itemId: "1", itemDescription: "Шар латексный, для надувания гелием. Размер 14 дюймов. Прекрасно подходит для овормления всех видов торжеств")
        let batmanMask = ShopItem(itemName: "Маска бэтмен", itemId: "2", itemDescription: "Маска бетмана. Размер взрослый. Подходит для костюмированной вечеринки")
        let coat = ShopItem(itemName: "Пальто", itemId: "3", itemDescription: "Пальто женское демисезонное. Размер М. ")
        let jaket = ShopItem(itemName: "Жакет", itemId: "4", itemDescription: "Стильный жакет из новой коллекции, идеален на все случаи жизни. Цвет красный.")
        let tshirtStarWars = ShopItem(itemName: "Футболка StarWars", itemId: "5", itemDescription: "Футболка из серии звездные войны, черного цвета. Размер Lю")
        let tshirtLegion = ShopItem(itemName: "Футболка легионер", itemId: "6", itemDescription: "Футболка из серии легионы рима черного цвета. Размер М.")
        let ballonOfHelium = ShopItem(itemName: "Баллон гелия", itemId: "7", itemDescription: "Баллон гелия для надувания 50 шаров размсером 14 дюймов")
        let littlePony = ShopItem(itemName: "Букет шаров пони", itemId: "8", itemDescription: "Букет из тчетырех фольгированных шаров в форме пони и цифры")
        
        let shop1 = Shop(shopName: "Веселая Затея asd asd as dasdasdas", goods: [balloon, batmanMask, littlePony, ballonOfHelium], shopPhoto: UIImage(named:"Zateya"))
        let shop2 = Shop(shopName: "СэкондХендЭлит", goods: [coat, jaket, tshirtLegion, tshirtStarWars], shopPhoto: UIImage(named:"second"))
        
        let differentShops = [shop1,shop2]
        completion(differentShops)
    }
   
    
    
}
