//
//  SpicyView.swift
//  TajMahal
//
//  Created by Bruno Evrard on 21/08/2024.
//

import SwiftUI

///  Shows the spice level as chili peppers
struct SpicyView: View {
    
    var numberPeppers: Int
    var width: CGFloat
    var height: CGFloat
    
    var body: some View {
        
        HStack {
            
            Image ("pepper")
                .resizable()
                .renderingMode(.template)
                .foregroundColor(.customRed)
                .frame(width: width, height: height)
            
            Image ("pepper")
                .resizable()
                .renderingMode(.template)
                .foregroundColor(numberPeppers>1 ? .customRed : .greyTajMahal)
                .frame(width: width, height: height)
            
            Image ("pepper")
                .resizable()
                .renderingMode(.template)
                .foregroundColor(numberPeppers>2 ? .customRed : .greyTajMahal )
                .frame(width: width, height: height)
        }
    }
}

#Preview {
    SpicyView(numberPeppers: 2, width: 12, height: 12)
}
