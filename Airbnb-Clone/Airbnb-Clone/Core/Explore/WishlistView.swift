//
//  WishlistView.swift
//  Airbnb-Clone
//
//  Created by Three Bros on 29/10/2023.
//

import SwiftUI

struct WishlistView: View {
    var body: some View {
        
        NavigationStack {
            VStack(alignment: .leading, spacing: 32) {
                
                VStack(alignment: .leading, spacing: 4) {
                    Text("Log in to view your wishlists")
                        .fontWeight(.semibold)
                        .font(.headline)
                    
                    Text("You can create, view or edit whistlist once you're logged in")
                        .font(.footnote)
                }
                .padding(.horizontal, 24)
                
                Button(action: {
                    
                }, label: {
                    Text("Log in")
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .background(.pink)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                        .padding(.top, 22)
                        .padding(.horizontal, 8)
                })
                
                Spacer()
            }
            .padding(.top)
            .padding(.horizontal, 12)
            .navigationTitle("Whistlists")
        }
        

        
    }
}

#Preview {
    WishlistView()
}
