//
//  ListView.swift
//  TravelVista
//
//  Created by Alexandre Talatinian on 03/04/2025.
//

import SwiftUI

struct ListView: View {
    var countries: [Country] = [
        Country(
            name: "Norvège",
            capital: "Oslo",
            description: "Description fake",
            rate: 4,
            pictureName: "norvege",
            coordinates: Coordinates(latitude: 59.9139, longitude: 10.7522)
        ),
        Country(
            name: "Italie",
            capital: "Rome",
            description: "Fake desc",
            rate: 3,
            pictureName: "italie",
            coordinates: Coordinates(latitude: 41.9028, longitude: 12.4964)
        )
    ]

    var body: some View {
        NavigationView {
            List(countries, id: \.name) { country in
                NavigationLink(destination: DetailView(country: country)) {
                    CustomCountryCell(country: country)
                }
            }
            .navigationTitle("Liste de voyages")
        }
    }
}


#Preview {
    ListView()
}
