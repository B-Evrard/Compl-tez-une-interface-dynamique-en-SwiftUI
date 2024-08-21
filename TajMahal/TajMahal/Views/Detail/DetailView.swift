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
            
            VStack {
                Picture(dish: dish)
                Description(dish: dish)
                Spacer()
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
        Spacer()
    }
}

#Preview {
    DetailView(dish: MenuViewModel().mainCourseArray[2])
}

struct Picture: View {
    
    var dish: Dish
    
    var body: some View {
        ZStack (alignment: .topTrailing) {
            
            Image(dish.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            SpicyView(numberPeppers: dish.numberPeppers, width: 14, height: 14)
                .frame(width: 74 ,height: 22)
                .background(Color.white)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding(EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 10))
            
        }
        .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
    }
}


struct Description: View {
    
    var dish: Dish
    
    var body: some View {
       
        VStack  (alignment: .leading ){
            Text("Allergènes:")
                .font( .custom("PlusJakartaText-Bold", size: 12))
                .foregroundColor(.greyTajMahal)
            Spacer().frame(height: 14)
            Text(dish.allergens)
                .font( .custom("PlusJakartaText-Regular", size: 12))
                .foregroundColor(.greyTajMahal)
            Spacer().frame(height: 14)
            
            Divider()
                .frame(height: 14)
           
            Text("Ingrédients:")
                .font( .custom("PlusJakartaText-Bold", size: 12))
                .foregroundColor(.greyTajMahal)
            Spacer().frame(height: 14)
            
            Text(dish.ingredients)
                .font( .custom("PlusJakartaText-Regular", size: 12))
                .foregroundColor(.greyTajMahal)
                
          }
        .padding(20)
    }
}
