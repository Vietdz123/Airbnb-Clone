//
//  ExploreView.swift
//  Airbnb-Clone
//
//  Created by MAC on 27/10/2023.
//

import SwiftUI

struct ExploreView: View {
    
    @State private var showDestinationSearchView = false
    
    var body: some View {
        NavigationStack {
            
            if showDestinationSearchView {
                DestinationSearchView(showDestinationView: $showDestinationSearchView)
            } else {
                ScrollView {
                    
                    SearchAndFilterBar()
                        .onTapGesture {
                            withAnimation {
                                showDestinationSearchView.toggle()
                            }
                        }
                    
                    LazyVStack (spacing: 32) {
                        
                        ForEach(0 ... 10, id:  \.self) { listing in
                            NavigationLink(value: listing) {
                                ListingItemView()
                                    .frame(height: 400)
                                    .padding()
                            }

                        }
                        
                    }
                    
                }
                .navigationDestination(for: Int.self) { listing in
                    ListingDetailView()
                        .navigationBarBackButtonHidden()
                }
            }
            

            
        }
    }
}

#Preview {
    ExploreView()
}
