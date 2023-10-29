//
//  MainTabView.swift
//  Airbnb-Clone
//
//  Created by Three Bros on 29/10/2023.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        
        TabView {
            ExploreView()
                .tabItem {
                    Label("Explore", systemImage: "magnifyingglass")
                }
            
            WishlistView()
                .tabItem {
                    Label("Wishlist", systemImage: "heart")
                }
            
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person")
                }
        }
        
    }
}

#Preview {
    MainTabView()
}
