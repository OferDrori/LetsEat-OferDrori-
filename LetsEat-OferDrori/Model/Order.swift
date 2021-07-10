//
//  Order.swift
//  LetsEat-OferDrori
//
//  Created by user196234 on 6/26/21.
//

import Foundation

struct Order:Codable {
    var menuItems:[MenuItem]
    
    init(menuItems:[MenuItem]=[]){
        self.menuItems=menuItems
    }
    
}
