//
//  MenuItem.swift
//  Menu
//
//  Created by Mark bergeson on 1/24/24.
//

import Foundation

struct MenuItem: Identifiable {
    
    var id: UUID = UUID()
    var name:String
    var price:String
    var imageName:String
}
