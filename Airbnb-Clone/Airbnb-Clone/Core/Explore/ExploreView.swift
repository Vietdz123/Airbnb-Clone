//
//  ExploreView.swift
//  Airbnb-Clone
//
//  Created by MAC on 27/10/2023.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationStack {
            
            ScrollView {
                
                SearchAndFilterBar()
                
                LazyVStack (spacing: 32) {
                    
                    ForEach(0 ... 10, id:  \.self) { listing in
                        NavigationLink(value: listing) {
                            ListingItemView()
                                .frame(height: 400)
                                .clipShape(RoundedRectangle(cornerRadius: 24))
                        }

                    }
                    
                }
                
            }
            .navigationDestination(for: Int.self) { listing in
                Text("Siuu")
            }
            
        }
    }
}

#Preview {
    ExploreView()
}
