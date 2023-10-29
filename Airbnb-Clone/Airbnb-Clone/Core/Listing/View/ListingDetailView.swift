//
//  ListingDetailView.swift
//  Airbnb-Clone
//
//  Created by MAC on 27/10/2023.
//

import SwiftUI
import MapKit

struct ListingDetailView: View {
    
    var images = [
        "m1", "m2", "m3", "m4"
    ]
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ScrollView {
            ZStack(alignment: .topLeading) {
                
                ListingImageCarouseView()
                    .frame(height: 320)
                
                Button(action: {
                    dismiss()
                }, label: {
                    Image(systemName: "chevron.left")
                        .foregroundColor(.black)
                        .background {
                            Circle()
                                .fill(.white)
                                .frame(width: 32, height: 32)
                        }
                        .frame(width: 50, height: 50)
                })
                .padding(.leading, 19)
                .padding(.top, 32)
            }
            
            
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
                    Text("Entire villa hosted by John Smith")
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
            
            VStack(alignment: .leading, spacing: 16) {
                
                Text("Where you' ll sleep")
                    .font(.headline)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .center, spacing: 8) {
                        ForEach(1 ..< 6) { bedroom in
                            VStack(alignment: .leading, spacing: 16) {
                                Image(systemName: "bed.double")
                                
                                Text("Bedroom \(bedroom)")
                            }
                            .frame(width: 132, height: 100)
                            .overlay {
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke()
                                    .foregroundColor(.gray)
                            }
                            
                        }
                    }
                }
                .scrollTargetBehavior(.paging)
            }
            .padding(.leading, 16)
            
            Divider()
            
            VStack(alignment: .leading, spacing: 16) {
                Text("What this place offer ?")
                    .font(.headline)
                
                ForEach(0 ..< 5) { feature in
                    HStack(alignment: .center, spacing: 8) {
                        Image(systemName: "wifi")
                            .frame(width: 32)
                        
                        Text("wifi")
                            .font(.footnote)
                        
                        Spacer()
                    }
                    
                }
            }
            .padding()
            
            Divider()
            
            VStack(alignment: .leading, spacing: 16) {
                Text("Where you'll be")
                    .font(.headline)
                
                Map {
                    
                }
                .frame(height: 300)
                .clipShape(RoundedRectangle(cornerRadius: 12))
            }
            .padding()
            .padding(.bottom, 0)
        }
        .toolbar(.hidden, for: .tabBar)  //Hidden tapBar
        .ignoresSafeArea()
        .padding(.bottom, 70)
        .overlay(alignment: .bottom) {
            VStack(alignment: .leading, spacing: 8) {
                
                Divider()
                    .padding(.bottom)
                    .padding(.horizontal, -32)
                    .padding(.bottom, -16)
                
                HStack(alignment: .center, spacing: 5) {
                    
                    VStack(alignment: .leading, spacing: 5) {
                        Text("$500")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                        
                        Text("Total befor lases")
                            .font(.footnote)
                        
                        Text("Oct 15-20")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .underline()
                    }
                    
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Text("Reserve")
                            .foregroundColor(.white)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width: 150, height: 40)
                            .background(.pink)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                    }

                    
                }

            }
            .padding(.horizontal, 32)
            .padding(.bottom, 16)
            .background(.white)
        }
    }
}

#Preview {
    ListingDetailView()
}
