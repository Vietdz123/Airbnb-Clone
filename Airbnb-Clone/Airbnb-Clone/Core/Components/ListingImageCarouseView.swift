//
//  ListingImageCarouseView.swift
//  Airbnb-Clone
//
//  Created by MAC on 27/10/2023.
//

import SwiftUI

struct ListingImageCarouseView: View {
    
    var images = [
        "m1", "m2", "m3", "m4"
    ]
    
    var body: some View {
        TabView {
            ForEach(images, id: \.self) { image in
                Image(image)
                    .resizable()
                    .scaledToFill()
                
            }
        }
        .tabViewStyle(.page)
    }
}

#Preview {
    ListingImageCarouseView()
}
