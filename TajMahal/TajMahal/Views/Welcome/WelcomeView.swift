//
//  WelcomeView.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import SwiftUI

// Page d'accueil
struct WelcomeView: View {
    var body: some View {
        
        NavigationStack {
            
            Image("TajMahal")
                .resizable()
                .frame(width: 335, height: 423)
                .padding(.bottom)
            
            WelcomeHeaderView()
            
            Spacer()
                .frame(height: 30)
            
            WelcomeBodyView()
            
            Spacer()
            NavigationLink {
                MenuView()
            } label : {
                Text("Accéder au menu")
                    .font( .custom("PlusJakartaDisplay-Bold", size: 18))
                    .foregroundStyle (.white)
                    .frame(width: 337, height: 40, alignment: .center)
                    .background(Color.customRed)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                
                
            }
            
           
            
            
        }
    }
}

#Preview {
    WelcomeView()
}
