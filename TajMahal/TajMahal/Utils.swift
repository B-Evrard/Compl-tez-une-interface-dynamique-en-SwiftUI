//
//  Utils.swift
//  TajMahal
//
//  Created by Bruno Evrard on 14/08/2024.
//

import Foundation

public class Utils {
    
    public static let sharedInstance = Utils()
    
    private init() {
        
    }
    
    /// Returns the price in the form xx.xx €
    /// - Parameter price:
    /// - Returns: The price in €xx.xx format
    static func formatPrice(price: Float) -> String {
        return "\(String(format: "%.2f", price)) €"
    }


    /// Returns the name of the day with the first letter in capitals
    /// - Returns: name of the day with the first letter in capitals
    func nameDay() -> String {
        let currentDate = Date()
        let dateFormatter = DateFormatter()

        dateFormatter.dateFormat = "EEEE"
        dateFormatter.locale = Locale(identifier: "fr_FR")

        return dateFormatter.string(from: currentDate).capitalizingFirstLetter()
    }
    
    
}

extension String {
    // Adds a method to capitalize the first letter of a string
    func capitalizingFirstLetter() -> String {
        return prefix(1).uppercased() + self.lowercased().dropFirst()
    }
}
