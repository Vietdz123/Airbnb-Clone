//
//  ListingView.swift
//  Airbnb-Clone
//
//  Created by MAC on 27/10/2023.
//

import SwiftUI

struct ListingItemView: View {
    

    
    var body: some View {
        
        VStack(spacing: 8) {
            
            //images
            ListingImageCarouseView()
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            
            // listing views
            HStack(alignment: .top) {
            
                VStack(alignment: .leading) {
                    Text("Miami, FLorida")
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                    
                    Text("12 mi away")
                        .foregroundStyle(.gray)
                    
                    Text("Nov 3 - 10")
                        .foregroundStyle(.gray)
                    
                    HStack (spacing: 4) {
                        Text("$567 night")
                            .fontWeight(.semibold)
                            
                        Text("night")
                    }
                    .foregroundStyle(.black)
                   
                }
                
                Spacer()
                
                HStack(spacing: 2) {
                    Image(systemName: "star.fill")
                    
                    Text("4.86")
                        .foregroundStyle(.black)
                    
                }
                
            }
            .font(.footnote)
            
        }
        
    }
}

#Preview {
    ListingItemView()
}
