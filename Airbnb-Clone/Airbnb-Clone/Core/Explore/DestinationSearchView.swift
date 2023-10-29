//
//  DestinationSearchView.swift
//  Airbnb-Clone
//
//  Created by Three Bros on 28/10/2023.
//

import SwiftUI

enum DestinationSearchOption {
    
    case location
    case dates
    case guests
    
}

struct DestinationSearchView: View {
    
    @Binding var showDestinationView: Bool
    @State private var destination = ""
    @State private var locationSelected: DestinationSearchOption = .location
    @State private var fromDate = Date()
    @State private var toDate = Date()
    @State private var numGuest = 0
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 16) {
            HStack(alignment: .center, spacing: 8) {
                Button(action: {
                    withAnimation(.snappy) {
                        showDestinationView.toggle()
                    }
                    
                }, label: {
                    Image(systemName: "xmark.circle")
                        .imageScale(.large)
                        .foregroundColor(.black)
                })
                
                Spacer()
                
                if !destination.isEmpty {
                    Button(action: {
                        destination = ""
                    }, label: {
                        Text("Clear")
                            .foregroundColor(.black)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                    })
                }
            }
            .padding()
            
            VStack(alignment: .leading, spacing: 16) {
                if locationSelected == .location {
                    
                    Text("Where to?")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    HStack(alignment: .center, spacing: 8) {
                        Image(systemName: "magnifyingglass")
                            .imageScale(.small)
                        TextField("Search destination", text: $destination)
                            .font(.subheadline)
                    }
                    .frame(height: 44)
                    .padding(.horizontal)
                    .overlay {
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(lineWidth: 1)
                            .foregroundColor(Color(.systemGray4))
                    }
                } else {
                    CollapsedPickerView(title: "Where", description: "Add destination")
                }
            }
            .modifier(CollapisbleDestinationModifier())
            .onTapGesture {
                withAnimation(.snappy) {
                    locationSelected = .location
                }
            }

            
            
            //MARK: - Date selection view
            VStack(alignment: .leading, spacing: 8) {
                if locationSelected == .dates {
                    
                    Text("When's your trip")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    VStack(alignment: .leading, spacing: 10) {
                        DatePicker("From", selection: $fromDate, displayedComponents: .date)
                        
                        Divider()
                        
                        DatePicker("From", selection: $toDate, displayedComponents: .date)

                    }
                    .foregroundColor(.black)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    
                } else {
                    CollapsedPickerView(title: "When", description: "Add dates")
                }
            }
            .modifier(CollapisbleDestinationModifier())
            .onTapGesture {
                withAnimation(.snappy) {
                    locationSelected = .dates
                }
                
            }
            
            //MARK: - num guest view
            VStack(alignment: .leading, spacing: 16) {
                if locationSelected == .guests {
                    
                    VStack(alignment: .leading, spacing: 16) {
                        Text("Who iss coming")
                            .font(.title2)
                            .fontWeight(.semibold)
                        
                        Stepper(numGuest > 1 ? "\(numGuest) Adults" : "\(numGuest) Adult") {
                            numGuest += 1
                        } onDecrement: {
                            guard numGuest > 0 else {return}
                            numGuest -= 1
                        }

                    }

                    
                } else {
                    CollapsedPickerView(title: "Who", description: "Add gueet")
                }
            }
            .modifier(CollapisbleDestinationModifier())
            .frame(height: locationSelected == .guests ? 120 : 64)
            .onTapGesture {
                withAnimation(.snappy) {
                    locationSelected = .guests
                }
            }
            
            Spacer()

        }
        

    }
}

#Preview {
    DestinationSearchView(showDestinationView: .constant(true))
}


struct CollapisbleDestinationModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .padding()
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: 10)
    }
    
}



struct CollapsedPickerView: View {
    let title: String
    let description: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            HStack(alignment: .center, spacing: 8) {
                Text(title)
                    .foregroundColor(.gray)
                
                Spacer()
                
                Text(description)
                
            }
            .fontWeight(.semibold)
            .font(.subheadline)
        }
    }
}
