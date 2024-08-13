//
//  DetailView.swift
//  TajMahal
//
//  Created by Bruno Evrard on 08/08/2024.
//

import SwiftUI

struct DetailView: View {
    
    var dish: Dish
    
    var body: some View {
        VStack  {
            ZStack (alignment: .topTrailing) {
                Image(dish.imageName)
                    .resizable()
                    .padding(.bottom)
                    .frame(width: 335, height: 467)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                   
                HStack {
                   
                    Image ("pepper")
                        .resizable()
                        .renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
                        .foregroundColor(ViewModel.isHot(dish: dish) ? .red : .gray)
                        .frame(width: 14, height: 14)
                        
                    
                    Image ("pepper")
                        .resizable()
                        .renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
                        .foregroundColor(ViewModel.isLight(dish: dish) ? .gray : .red)
                        .frame(width: 14, height: 14)
                    
                    Image ("pepper")
                        .resizable()
                        .renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.red)
                        .frame(width: 14, height: 14)
                }
                .frame(width: 74 ,height: 22)
                .background(Color.white)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding()

            }
            
            Text("Allergènes:")
                .font( .custom("PlusJakartaDisplay-Bold", size: 12))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(/*@START_MENU_TOKEN@*/[.top, .leading, .trailing]/*@END_MENU_TOKEN@*/)
            Text(dish.allergens)
                .font( .custom("PlusJakartaDisplay-Regular", size: 12))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.all)
            Divider()
                .padding([.leading, .bottom, .trailing])
            Text("Ingrédients:")
                .font( .custom("PlusJakartaDisplay-Bold", size: 12))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(/*@START_MENU_TOKEN@*/[.leading, .bottom, .trailing]/*@END_MENU_TOKEN@*/)
            Text(dish.ingredients)
                .font( .custom("PlusJakartaDisplay-Regular", size: 12))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(/*@START_MENU_TOKEN@*/[.leading, .bottom, .trailing]/*@END_MENU_TOKEN@*/)
            Spacer()
        }
    }
}

#Preview {
    DetailView(dish: ViewModel().apetizerArray[1])
}
