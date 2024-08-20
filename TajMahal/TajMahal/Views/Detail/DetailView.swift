//
//  DetailView.swift
//  TajMahal
//
//  Created by Bruno Evrard on 08/08/2024.
//

import SwiftUI

struct DetailView: View {
    
    @Environment(\.dismiss) var dismiss
    
    var dish: Dish
    
    var body: some View {
        NavigationView {
            
            VStack   {
                ZStack (alignment: .topTrailing) {
                    Image(dish.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 335)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                    
                    HStack {
                        
                        Image ("pepper")
                            .resizable()
                            .renderingMode(.template)
                            .foregroundColor(.customRed)
                            .frame(width: 14, height: 14)
                        
                        
                        Image ("pepper")
                            .resizable()
                            .renderingMode(.template)
                            .foregroundColor(dish.isHot() || dish.isMedium() ? .customRed : .greyTajMahal)
                            .frame(width: 14, height: 14)
                        
                        Image ("pepper")
                            .resizable()
                            .renderingMode(.template)
                            .foregroundColor(dish.isHot() ? .customRed : .greyTajMahal )
                            .frame(width: 14, height: 14)
                    }
                    .frame(width: 74 ,height: 22)
                    .background(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .padding(EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 10))
                    
                }
                .padding(20)
                
                
                
                VStack  (alignment: .leading ){
                    Text("Allergènes:")
                        .font( .custom("PlusJakartaText-Bold", size: 12))
                        .foregroundColor(.greyTajMahal)
                        .frame(height: 14)
                    Text(dish.allergens)
                        .font( .custom("PlusJakartaText-Regular", size: 12))
                        .foregroundColor(.greyTajMahal)
                        .frame(height: 14)
                    Divider()
                        .frame(height: 14)
                    Text("Ingrédients:")
                        .font( .custom("PlusJakartaText-Bold", size: 12))
                        .foregroundColor(.greyTajMahal)
                        .frame(height: 14)
                    Text(dish.ingredients)
                        .font( .custom("PlusJakartaText-Regular", size: 12))
                        .foregroundColor(.greyTajMahal)
                }
                .padding(20)
              
            }

        }.toolbar {
            
            ToolbarItem(placement: .topBarLeading) {
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "chevron.backward")
                        .foregroundColor(.black)
                    Text(dish.name)
                        .font( .custom("PlusJakartaText-Bold", size: 18))
                        .foregroundColor(.black)
                }
                
            }
            
        }
        .navigationBarBackButtonHidden(true)
    }
 }

#Preview {
    DetailView(dish: MenuViewModel().mainCourseArray[0])
}
