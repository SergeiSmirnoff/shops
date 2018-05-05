//
//  ShopsData.swift
//  ShopCollection2
//
//  Created by Сергей on 22.04.2018.
//  Copyright © 2018 Сергей. All rights reserved.
//

import Foundation
import UIKit
struct shop {
    var shopName:String
    var goods:[shopItems]
    var shopPhoto:UIImage?
}
struct shopItems {
    var itemName:String
    var itemId:Int
    var itemDescription:String
    var itemPhoto: UIImage?
}

class shopData {
    func managingShops(completion:([shop])->Void) {
        let balloon = shopItems(itemName: "Шар воздушный", itemId: 1, itemDescription: "Шар латексный, для надувания гелием. Размер 14 дюймов. Прекрасно подходит для овормления всех видов торжеств", itemPhoto:UIImage(named:"5"))
        
        
        let batmanMask = shopItems(itemName: "Маска бэтмен", itemId: 2, itemDescription: "Маска бетмана. Размер взрослый. Подходит для костюмированной вечеринки", itemPhoto: UIImage(named:"6"))
        let coat = shopItems(itemName: "Пальто", itemId: 3, itemDescription: "Пальто женское демисезонное. Размер М. ", itemPhoto: UIImage(named:"2"))
        let jaket = shopItems(itemName: "Жакет", itemId: 4, itemDescription: "Стильный жакет из новой коллекции, идеален на все случаи жизни. Цвет красный.", itemPhoto: UIImage(named:"1"))
        let tshirtStarWars = shopItems(itemName: "Футболка StarWars", itemId: 5, itemDescription: "Футболка из серии звездные войны, черного цвета. Размер Lю", itemPhoto:UIImage(named:"4"))
        let tshirtLegion = shopItems(itemName: "Футболка легионер", itemId: 6, itemDescription: "Футболка из серии легионы рима черного цвета. Размер М.", itemPhoto: UIImage(named:"3"))
        let ballonOfHelium = shopItems(itemName: "Баллон гелия", itemId: 7, itemDescription: "Баллон гелия для надувания 50 шаров размсером 14 дюймов", itemPhoto: UIImage(named:"8"))
        let littlePony = shopItems(itemName: "Букет шаров пони", itemId: 8, itemDescription: "Букет из тчетырех фольгированных шаров в форме пони и цифры", itemPhoto: UIImage(named:"7"))
        
        let shop1 = shop(shopName: "Веселая Затея", goods: [balloon,batmanMask,littlePony,ballonOfHelium],shopPhoto:UIImage(named:"Zatey"))
        let shop2 = shop(shopName: "СэкондХендЭлит", goods: [coat, jaket,tshirtLegion,tshirtStarWars],shopPhoto:UIImage(named:"second"))
        let differentShops = [shop1,shop2]
        completion(differentShops)
    }
}
