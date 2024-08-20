//
//  WelcomeHeaderView.swift
//  TajMahal
//
//  Created by Bruno Evrard on 30/07/2024.
//

import SwiftUI

struct WelcomeHeaderView: View {
    var body: some View {
        
        HStack(alignment: .top) {
            
            VStack (alignment: .leading ) {
                Text( "Restaurant Indien")
                    .font( .custom("PlusJakartaText-Regular", size: 12 ))
                    .foregroundColor(.greyTajMahal)
                
                Text( "Taj Mahal")
                    .font( .custom("PlusJakartaText-Bold", size: 18))
            }
            
            Spacer()
            
            Image("Logo")
                .resizable()
                .renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
                .foregroundColor(.greyTajMahal)
                .frame(width: 40, height: 40)
            
        }
        .frame(maxWidth: 335,maxHeight: 40)
        
        
    }
}

#Preview {
    WelcomeHeaderView()
}



