//
//  PrepTime.swift
//  LetsEat-OferDrori
//
//  Created by user196234 on 6/26/21.
//

import Foundation

struct PreparationTime: Codable {
    let prepTime: Int
    
    enum CodingKeys: String, CodingKey {
        case prepTime = "preparation_time"
    }
}
