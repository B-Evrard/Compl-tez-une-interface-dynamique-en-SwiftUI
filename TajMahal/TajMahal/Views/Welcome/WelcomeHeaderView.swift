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
                    .font( .custom("PlusJakartaSans", size: 12))
                    
                
                Text( "Taj Mahal")
                    .font( .custom("PlusJakartaDisplay-Bold", size: 18))
                    
            }
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity,alignment: .topLeading)
            
            //Spacer()
            
            Image("Logo")
                .resizable()
                .renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
                .frame(width: 40, height: 40)
       }
        .frame(maxWidth: 337,maxHeight: 40,alignment: .top)
        .padding(.bottom)
        
    }
}

#Preview {
    WelcomeHeaderView()
}



