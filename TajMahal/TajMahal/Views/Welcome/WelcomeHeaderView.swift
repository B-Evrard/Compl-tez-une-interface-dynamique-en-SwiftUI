//
//  WelcomeHeaderView.swift
//  TajMahal
//
//  Created by Bruno Evrard on 30/07/2024.
//

import SwiftUI

struct WelcomeHeaderView: View {
    var body: some View {
        
        HStack {
           
            VStack (alignment: .leading ) {
                
                Text( "Restaurant Indien")
                    .font( .custom("PlusJakartaSans", size: 12))
                    
                
                Text( "Taj Mahal")
                    .font( .custom("PlusJakartaDisplay-Bold", size: 18))
                   
               
            }
            Spacer()
            Image("Logo")
                .resizable()
                .renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
                .frame(width: 40, height: 40)
                
               
            
        }
        .fixedSize(horizontal: false, vertical: true)
        .frame(maxWidth: 337)
        .padding(.bottom)
    }
}

#Preview {
    WelcomeHeaderView()
}


/*
 .renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
 .padding()
 .frame(width: 40, height: 40)
 .resizable()
 .scaledToFit()
 */
