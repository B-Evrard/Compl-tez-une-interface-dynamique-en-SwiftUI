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
            
            // Ligne Horaire
            HStack {
                Image(systemName: "clock")
                    .resizable()
                    .frame(width: 12,height: 12)
                
                Text("Mardi")
                    .font( .custom("PlusJakartaSans", size: 12))
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                //Spacer()
                
                Text ("11h30 - 14h30 • 18h30 - 22h00")
                    .font( .custom("PlusJakartaSans", size: 12))
                    .fixedSize()
                    
            }
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity,alignment: .topLeading)
            
            
            // Service
            HStack {
                Image("Food")
                    .resizable()
                    .frame(width: 14,height: 14)
                
                Text("Type de service")
                    .font( .custom("PlusJakartaSans", size: 12))
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                //Spacer()
                
                Text ("À emporter")
                    .font( .custom("PlusJakartaSans", size: 12))
                    .fixedSize()
            }
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity,alignment: .topLeading)
            
            // ligne adresse - Site - Tel
            VStack(alignment: .leading) {
                
                HStack {
                    Image("Localisation")
                        .resizable()
                        .frame(width: 14,height: 14)
                    
                    Text("12 Avenue de la Brique - 75010 Paris")
                        .font( .custom("PlusJakartaSans", size: 12))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    //Spacer()
                    
                }
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity,alignment: .topLeading)
                
                HStack {
                    Image(systemName: "globe")
                        .resizable()
                        .frame(width: 14,height: 14)
                    
                    Text("www.tajmahal.fr")
                        .font( .custom("PlusJakartaSans", size: 12))
                    
                }
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity,alignment: .topLeading)
                
                HStack {
                    Image(systemName: "phone")
                        .resizable()
                        .frame(width: 14,height: 14)
                    
                    Text("06 12 34 56 78")
                        .font( .custom("PlusJakartaSans", size: 12))
                }
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity,alignment: .topLeading)
                
                
            }
        }
        .fixedSize(horizontal: false, vertical: true)
        .frame(maxWidth: 337)
        
       
    }
}

#Preview {
    WelcomeBodyView()
}

