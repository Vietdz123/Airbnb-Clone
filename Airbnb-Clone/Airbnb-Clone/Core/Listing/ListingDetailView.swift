//
//  ListingDetailView.swift
//  Airbnb-Clone
//
//  Created by MAC on 27/10/2023.
//

import SwiftUI

struct ListingDetailView: View {
    
    var images = [
        "m1", "m2", "m3", "m4"
    ]
    
    var body: some View {
        ScrollView {
            ListingImageCarouseView()
                .frame(height: 320)
            
            
            VStack(alignment: .leading, spacing: 8) {
                
                Text("Miami Villa")
                    .font(.title)
                    .fontWeight(.semibold)
                
                HStack(spacing: 2)  {
                    Image(systemName: "star.fill")
                    Text("4.86")
                        .foregroundStyle(.black)
                    
                    Text(" - ")
                        .foregroundStyle(.black)
                    
                    Text("28 reviews")
                        .underline()
                        .fontWeight(.semibold)
                    
                }
                
                Text("Miami, Florida")
                    .foregroundStyle(.black)

            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading)
            
            Divider()
            
            // MARK: - Host info view
            HStack(alignment: .center,spacing: 0)  {
                VStack(alignment: .leading, spacing: 4) {
                    Text("Entire villa hosted by John Smith Villa gdflkjg gfkjdfl  fdgklj dfklgj  kljfdlkj")
                        .font(.headline)
                        .frame(width: 250, alignment: .leading)
                        .lineLimit(2)
                    
                    HStack(spacing: 2)  {
                        Text("4 guests - ")
                        Text("4 bedrooms - ")
                        Text("4 beds - ")
                        Text("3 paths")
                    }
                    .font(.caption)
                }
                .frame(width: 300, alignment: .leading)
                
                Image("luffy1")
                    .resizable()
                    .frame(width: 64, height: 64)
                    .clipShape(Circle())
            }
            .padding()
            
            Divider()
            
            // MARK: - Listing Feature
            
            VStack(alignment: .leading, spacing: 16) {
                ForEach(0 ..< 2) { feature in
                    
                    HStack(spacing: 12)  {
                        Image(systemName: "medal")
                        
                        VStack(alignment: .leading, spacing: 4) {
                            Text("Superhost")
                                .font(.footnote)
                                .fontWeight(.semibold)
                            
                            Text("Superhosts are expierience, highly rated host who are commited to providing great stars for guests")
                                .font(.caption)
                                .foregroundColor(.gray)
                        }
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    

                }

            }
            .padding()
            
            
            Divider()
        }
    }
}

#Preview {
    ListingDetailView()
}
