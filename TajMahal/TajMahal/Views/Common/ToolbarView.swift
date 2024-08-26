//
//  SwiftUIView.swift
//  TajMahal
//
//  Created by Bruno Evrard on 22/08/2024.
//

import SwiftUI

struct SwiftUIView: View {
    
    @Environment(\.dismiss) var dismiss
    var label: String
    
    var body: some ToolbarContent {
        
        
        
        
        
//        ToolbarItem(placement: .topBarLeading) {
//            Button {
//                dismiss()
//            } label: {
//                Image(systemName: "chevron.backward")
//                    .foregroundColor(.black)
//            }
//            
//        }
//        
//        ToolbarItem(placement: .principal) {
//            Button {
//                dismiss()
//            } label: {
//                Text(label)
//                    .font( .custom("PlusJakartaText-Regular", size: 18))
//                    .foregroundColor(.black)
//            }
//        }
    }
}

#Preview {
    SwiftUIView()
}
