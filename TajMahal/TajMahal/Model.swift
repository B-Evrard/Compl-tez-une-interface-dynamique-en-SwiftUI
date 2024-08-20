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
    
    func isHot() -> Bool {
        return self.spiceLevel == SpiceLevel.hot
    }
    
   func isMedium() -> Bool {
       return self.spiceLevel == SpiceLevel.medium
    }
    
    func isLight() -> Bool {
        return self.spiceLevel == SpiceLevel.light
    }
    
}
