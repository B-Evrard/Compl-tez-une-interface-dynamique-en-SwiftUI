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
        
        
        
        HStack() {
            Image (dish.imageName)
                .resizable()
                .frame(width: 112, height: 86)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            // Nom - Description - Prix - Niveau épicé
            VStack(alignment: .trailing) {
                Text(dish.name)
                    .font( .custom("PlusJakartaText-Bold", size: 14))
                    .frame(maxWidth: .infinity,alignment: .topLeading)
                
                Text (dish.description)
                    .font( .custom("PlusJakartaText-Regular", size: 12))
                    .fixedSize(horizontal: false, vertical: true)
                    .frame(maxWidth: .infinity, maxHeight: .infinity,alignment: .topLeading)
                
                HStack {
                    Text (ViewModel.formatPrice(price: dish.price))
                        .font( .custom("PlusJakartaText-Regular", size: 12))
                        Spacer()
                    
                    Image ("pepper")
                        .resizable()
                        .renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
                        .foregroundColor(ViewModel.isHot(dish: dish) ? .red : .gray)
                        .frame(width: 20, height: 20)
                        
                    
                    Image ("pepper")
                        .resizable()
                        .renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
                        .foregroundColor(ViewModel.isLight(dish: dish) ? .gray : .red)
                        .frame(width: 20, height: 20)
                    
                    Image ("pepper")
                        .resizable()
                        .renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.red)
                        .frame(width: 20, height: 20)
                }
                
            }
            .padding(9.0)
            .frame(width: 209.0)
            
        }
        
        .padding(0.0)
       
        .frame(width: 335, height: 110)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        
        
        
        
    }
    
    
    
}

#Preview {
    MenuViewLine(dish: ViewModel().apetizerArray[0])
}
