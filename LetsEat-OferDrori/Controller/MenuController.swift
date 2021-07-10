//
//  MenuController.swift
//  LetsEat-OferDrori
//
//  Created by user196234 on 6/26/21.
//

import UIKit
import Firebase

class MenuController{
    
    /// Used to share MenuController across all view controllers in the app
    static let shared = MenuController()
    var order=Order();
    
    
    func fetchCategories(completion: @escaping ([String]?) -> Void) {
            completion(LocalData.categories)
            return
    }
    
  
    func fetchMenuItems(categoryName: String = "", completion: @escaping([MenuItem]?) -> Void) {
            completion(LocalData.menuItems.filter { $0.category == categoryName || categoryName.isEmpty })
            return
    }
    
    
    func submitOrder(menuIds: [Int], completion: @escaping (Int?) -> Void) {
        //time of waiting to the order is 5 min * count of the orders
            completion(5 * menuIds.count)
            return
    }
    

    func fetchImage(url: URL, completion: @escaping (UIImage?) -> Void) {
            completion(UIImage(named: url.relativeString))
            return
    }
}
