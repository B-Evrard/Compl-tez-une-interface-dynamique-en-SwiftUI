//
//  WelcomeBodyView.swift
//  TajMahal
//
//  Created by Bruno Evrard on 31/07/2024.
//

import SwiftUI

struct WelcomeBodyView: View {
    
    let welcomeViewModel: WelcomeViewModel = WelcomeViewModel()
    
    var body: some View {
        
        VStack {
            Spacer()
            
            HStack {
                Image(systemName: "clock")
                    .resizable()
                    .frame(width: 12,height: 12)
                
                Text(welcomeViewModel.nameDay())
                    .font( .custom("PlusJakartaText-Regular", size: 12))
                 
                Spacer()
                
                Text ("11h30 - 14h30 • 18h30 - 22h00")
                    .font( .custom("PlusJakartaText-Regular", size: 12))
                    
                
            }
            .foregroundColor(.greyTajMahal)
            
            Spacer()
                .frame(height: 14)
            
            HStack {
                Image("Food")
                    .renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
                    .resizable()
                    .frame(width: 14,height: 14)
        
                Text("Type de service")
                    .font( .custom("PlusJakartaText-Regular", size: 12))
                
                Spacer()
                
                Text ("À emporter")
                    .font( .custom("PlusJakartaText-Regular", size: 12))
                   
            }
            .foregroundColor(.greyTajMahal)
            
            Spacer()
                .frame(height: 14)
        
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
                    .frame(height: 14)
                
                HStack {
                    Image(systemName: "globe")
                        .resizable()
                        .frame(width: 14,height: 14)
                    
                    Text("www.tajmahal.fr")
                        .tint(.greyTajMahal)
                        .font( .custom("PlusJakartaText-Regular", size: 12))
                    
                }
                
                Spacer()
                    .frame(height: 14)
                
                HStack {
                    Image("Phone")
                        .resizable()
                        .renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
                        .frame(width: 14, height: 14)
                    
                    Text("06 12 34 56 78")
                        .font( .custom("PlusJakartaText-Regular", size: 12))
                    
                }
                Spacer()
            }
        }
        .frame(width: 337, height: 130)
        .foregroundColor(.greyTajMahal)
    }
}

#Preview {
    WelcomeBodyView()
}

