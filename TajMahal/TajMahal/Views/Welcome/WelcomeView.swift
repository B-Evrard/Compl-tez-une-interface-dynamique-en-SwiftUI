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
            VStack (alignment: .leading){
                Image("TajMahal")
                
                VStack (alignment: .leading) {
                    Text( "Restaurant Indien")
                        .font( .custom("PlusJakartaSans", size: 12))
                      
                    Text( "Taj Mahal")
                        .font( .custom("PlusJakartaSans", size: 18))
                    
                       
                    Image("Logo")
                    Image("Logo")
                }
                Spacer()
                NavigationLink {
                    MenuView()
                } label : {
                    Text("Menu")
                }
            }
            
        }
    }
}

#Preview {
    WelcomeView()
}
