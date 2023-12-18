//
//  Model.swift
//  TravelVista
//
//  Created by Amandine Cousin on 18/12/2023.
//

import Foundation

struct Region: Codable {
    var name: String
    var countries: [Country]
}

struct Country: Codable {
    var name: String
    var capital: String
    var description: String
    var rate: Int
    var pictureName: String
    var coordinates: Coordinates
}

struct Coordinates: Codable {
    var latitude: Double
    var longitude: Double
}
