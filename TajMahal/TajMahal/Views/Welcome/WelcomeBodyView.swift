//
//  WelcomeBodyView.swift
//  TajMahal
//
//  Created by Bruno Evrard on 31/07/2024.
//

import SwiftUI

struct WelcomeBodyView: View {
    var body: some View {
        
        
        VStack {
            Spacer()
            // Ligne Horaire
            HStack {
                Image(systemName: "clock")
                    .resizable()
                    .frame(width: 12,height: 12)
                
                Text(ViewModel.nameDay())
                    .font( .custom("PlusJakartaText-Regular", size: 12))

                Spacer(minLength: 100)
                
                Text ("11h30 - 14h30 • 18h30 - 22h00")
                    .font( .custom("PlusJakartaText-Regular", size: 12))
                    
                    
            }
            Spacer()
                .frame(height: 12)
            
            // Service
            HStack {
                Image("Food")
                    .resizable()
                    .frame(width: 14,height: 14)
                
                Text("Type de service")
                    .font( .custom("PlusJakartaText-Regular", size: 12))
                
                Spacer()
                
                Text ("À emporter")
                    .font( .custom("PlusJakartaText-Regular", size: 12))
                    .fixedSize()
            }
            Spacer()
                .frame(height: 12)
            
            // ligne adresse - Site - Tel
            VStack(alignment: .leading) {
                
                HStack {
                    Image("Localisation")
                        .resizable()
                        .frame(width: 14,height: 14)
                    
                    Text("12 Avenue de la Brique - 75010 Paris")
                        .font( .custom("PlusJakartaText-Regular", size: 12))
                  
                    Spacer()
                    
                }
                Spacer()
                    .frame(height: 12)
                
                HStack {
                    Image(systemName: "globe")
                        .resizable()
                        .frame(width: 14,height: 14)
                    
                    Text("www.tajmahal.fr")
                        .tint(.black)
                        .font( .custom("PlusJakartaText-Regular", size: 12))
                   
                }
                Spacer()
                    .frame(height: 12)
                HStack {
                    
                    Image("Phone")
                        .resizable()
                        .renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.black)
                        .frame(width: 14, height: 14)
                    
                    Text("06 12 34 56 78")
                        .font( .custom("PlusJakartaText-Regular", size: 12))
                
                }
                Spacer()
              
                
            }
        }
        .frame(width: 337, height: 130)
        
       
    }
}

#Preview {
    WelcomeBodyView()
}

