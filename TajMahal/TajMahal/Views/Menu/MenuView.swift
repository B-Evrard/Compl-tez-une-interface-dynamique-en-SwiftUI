//
//  MenuView.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import SwiftUI

// Menu sous forme de liste
struct MenuView: View {
    
    // Référence vers le view model qui permet d'accéder aux tableaux d'entrées et de plats du menu
    let viewModel: ViewModel = ViewModel()
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        NavigationView {
            
            
            
            List {
                // Créer la liste des entrées
                CreateDishList(dishs: viewModel.apetizerArray, titreSection: "Entrées")
                
                // Créer la liste des plats principaux
                CreateDishList(dishs: viewModel.mainCourseArray, titreSection: "Plats principaux")
            }
            .listRowBackground(Color.blue)
            .headerProminence(.increased)
            .listRowSpacing(15)
            
            
            
            
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarTitle("Menu", displayMode: .inline)
        .navigationBarItems(leading: Button(action: {
            self.presentationMode.wrappedValue.dismiss()
        }) {
            HStack {
                Image(systemName: "chevron.backward")
                    .foregroundColor(.black)
            }
        })
        
    }
    
    
    
    
    
    
    
}

#Preview {
    MenuView()
}

/// Création de la liste des plats

struct CreateDishList: View {
    
    var dishs: [Dish]
    var titreSection = ""
    
    var body: some View {
        Section(header:
                    Text(titreSection)
            .font( .custom("PlusJakartaText-bold", size: 14))
        ) {
            
            ForEach(dishs, id: \.name) { dish in
                
                // Zstack permet de cacher le chevron dans la liste avec .opacity(0)
                ZStack(alignment: .leading) {
                    
                    MenuViewLine(dish: dish)
                    NavigationLink (destination: DetailView(dish: dish))  {
                        EmptyView()
                    }
                    .opacity(0) // Cache le chevron
                    
                }
                
                
            }
        }
    }
}
