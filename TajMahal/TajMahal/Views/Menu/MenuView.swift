//
//  MenuView.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import SwiftUI

// Référence vers le view model qui permet d'accéder aux tableaux d'entrées et de plats du menu
let menuViewModel: MenuViewModel = MenuViewModel()

// Menu sous forme de liste
struct MenuView: View {

    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        
        
        NavigationStack {

            List {
                
                DishList(dishs: menuViewModel.apetizerArray, titreSection: "Entrées")
                
                DishList(dishs: menuViewModel.mainCourseArray, titreSection: "Plats principaux")
            }
            .headerProminence(.increased)
            .listRowSpacing(12)
        }.toolbar {
            
            ToolbarItem(placement: .topBarLeading) {
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "chevron.backward")
                        .foregroundColor(.black)
                }
                
            }
            
            ToolbarItem(placement: .principal) {
                Button {
                    dismiss()
                } label: {
                    Text("Menu")
                        .font( .custom("PlusJakartaText-Regular", size: 18))
                        .foregroundColor(.black)
                }
            }
        }
        .navigationBarBackButtonHidden(true)
        
        
    }
}

#Preview {
    MenuView()
}


struct DishList: View {
    
    var dishs: [Dish]
    var titreSection = ""
    
    var body: some View {
        
        Section (header: Text(titreSection)
            .font( .custom("PlusJakartaText-Bold", size: 14))
            .foregroundColor(.greyTajMahal)) {
 
            ForEach(dishs, id: \.name) { dish in
               
                // Zstack Allows hiding the chevron in the list with .opacity(0)
                ZStack() {
                    
                    MenuViewLine(dish: dish)
                    NavigationLink (destination: DetailView(dish: dish))  {
                        EmptyView()
                    }
                    .opacity(0) // Hide the chevron
                    
                }
            }
        }
    }
    
}
