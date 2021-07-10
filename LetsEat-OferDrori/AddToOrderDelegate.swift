//
//  AddToOrderDelegate.swift
//  LetsEat-OferDrori
//
//  Created by user196234 on 6/26/21.
//

import Foundation

protocol AddToOrderDelegate {
    /// Called when menu item is added
    func added(menuItem: MenuItem)
}
