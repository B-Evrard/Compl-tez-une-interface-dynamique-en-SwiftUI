//
//  SpicyView.swift
//  TajMahal
//
//  Created by Bruno Evrard on 21/08/2024.
//

import SwiftUI

struct SpicyView: View {
    var body: some View {
        var 
        
        HStack {
            
            Image ("pepper")
                .resizable()
                .renderingMode(.template)
                .foregroundColor(.customRed)
                .frame(width: 14, height: 14)
            
            Image ("pepper")
                .resizable()
                .renderingMode(.template)
                .foregroundColor(dish.isHot || dish.isMedium ? .customRed : .greyTajMahal)
                .frame(width: 14, height: 14)
            
            Image ("pepper")
                .resizable()
                .renderingMode(.template)
                .foregroundColor(dish.isHot ? .customRed : .greyTajMahal )
                .frame(width: 14, height: 14)
        }
    }
}

#Preview {
    SpicyView()
}
