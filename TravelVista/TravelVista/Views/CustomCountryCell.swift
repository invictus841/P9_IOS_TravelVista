//
//  CustomCountryCell.swift
//  TravelVista
//
//  Created by Alexandre Talatinian on 03/04/2025.
//

import SwiftUI

struct CustomCountryCell: View {
    let country: Country

    var body: some View {
        HStack(spacing: 16) {
            Image(country.pictureName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 48, height: 48)
                .clipShape(Circle())

            VStack(alignment: .leading) {
                Text(country.name)
                    .font(.headline)
                    .foregroundColor(.blue)
                Text(country.capital)
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }

            Spacer()

            HStack(spacing: 4) {
                Text("\(country.rate)")
                Image(systemName: "star.fill")
                    .foregroundColor(.orange)
            }
        }
        .padding(.vertical, 8)
    }
}



#Preview {
    CustomCountryCell(country: Country(name: "France", capital: "Paris", description: "Lorem", rate: 5, pictureName: "nz", coordinates: Coordinates(latitude: 1, longitude: 1)))
}
