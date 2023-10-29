//
//  ButtonView.swift
//  Airbnb-Clone
//
//  Created by Three Bros on 29/10/2023.
//

import SwiftUI

struct ButtonView: View {
    var body: some View {
        Button(action: {
            print("DEBUG: siuuu")
        }, label: {
            ZStack {
                Image(systemName: "star")
                   
            }
            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
//                .background(.yellow)
        })
        
    }
}

#Preview {
    ButtonView()
}
