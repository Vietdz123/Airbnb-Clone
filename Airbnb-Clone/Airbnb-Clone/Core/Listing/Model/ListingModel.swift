//
//  ListingModel.swift
//  Airbnb-Clone
//
//  Created by Three Bros on 29/10/2023.
//

import UIKit

struct ListingModel: Identifiable, Codable {
    
    let id: String
    let ownerUid: String
    let ownerName: String
    let ownerImageUrl: String
    let numberOfBedrooms: Int
    let numberOfBathrooms: Int
    let numberOfGuest: Int
    let numberOfBed: Int
    var pricePerNight: Int
    let latitude: Double
    let longtitude: Double
    let address: String
    let city: String
    let state: String
    let title: String
    var rating: Double
    
}


enum ListingFeatures: Int, Codable, Identifiable, Hashable {
    
    case selfCheckIn
    case superHost
    
    var id: Int { return self.rawValue }
}

enum ListingAmentities: Int, Codable, Identifiable, Hashable {
    
    case pool = 0
    case kitcheen
    case wifi
    case laudry
    case tv
    case alarmsystem
    case ofice
    case balcony
    
    var id: Int { return self.rawValue }
    
}
