//
//  MenuViewLine.swift
//  TajMahal
//
//  Created by Bruno Evrard on 01/08/2024.
//

import SwiftUI

struct MenuViewLine: View {
    
    var dish: Dish
    
    var body: some View {
  
        HStack {
            Image (dish.imageName)
                .resizable()
                .frame(width: 112, height: 86)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            // Nom - Description - Prix - Niveau épicé
            VStack(alignment: .leading) {
                Text(dish.name)
                    .font( .custom("PlusJakartaText-Bold", size: 14))
                    .foregroundColor(.greyTajMahal)
                
               Spacer()
                
                Text (dish.description)
                    .font( .custom("PlusJakartaText-Regular", size: 12))
                    .foregroundColor(.greyTajMahal)
                
               Spacer()
                
                HStack(alignment: .center) {
                    Text (dish.formattedPrice)
                        .font( .custom("PlusJakartaText-Regular", size: 12))
                        .foregroundColor(.greyTajMahal)
                    
                    Spacer()
                    SpicyView(numberPeppers: dish.numberPeppers, width: 12, height: 12)
                }
            }
            .frame(height: 86)
            
        }
        .frame(width: 335, height: 110)
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
    
    
    
}

#Preview {
    MenuViewLine(dish: MenuViewModel().apetizerArray[1])
}
