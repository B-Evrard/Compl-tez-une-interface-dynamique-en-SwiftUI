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
                .padding(EdgeInsets(top: 20, leading: 20, bottom: 0, trailing: 20))
            
            WelcomeHeaderView()
                .padding(EdgeInsets(top: 32, leading: 20, bottom: 0, trailing: 20))
            
            WelcomeBodyView()
                .padding(EdgeInsets(top: 32, leading: 20, bottom: 0, trailing: 20))
            
            Spacer()
            
            NavigationLink {
                MenuView()
            } label : {
                Text("Accéder au menu")
                    .font( .custom("PlusJakartaText-Bold", size: 16))
                    .foregroundStyle (.white)
                    .frame(width: 335, height: 40, alignment: .center)
                    .background(Color.customRed)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }.safeAreaPadding(.bottom,8)
        }
    }
}

#Preview {
    WelcomeView()
}
