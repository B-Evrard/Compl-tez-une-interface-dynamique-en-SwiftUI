//
//  Model.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import Foundation

// Cette enumération répertorie 3 niveaux de piment
enum SpiceLevel {
    case light
    case medium
    case hot
}

// Représente l'objet "plat", qui figure sur la carte du menu
struct Dish {
    var name: String
    var description: String
    var allergens: String
    var ingredients: String
    var spiceLevel: SpiceLevel
    var imageName: String
    var price: Float
    
    var numberPeppers: Int {
        switch self.spiceLevel{
        case .hot: return 3
        case .medium: return 2
        case .light: return 1
        }
    }
    
    var formattedPrice: String {
        return Utils.formatPrice(price: self.price)
    }
    
}
