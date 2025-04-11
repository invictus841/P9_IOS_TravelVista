//
//  ListView.swift
//  TravelVista
//
//  Created by Alexandre Talatinian on 11/04/2025.
//

import SwiftUI

struct ListView: View {
    var regions: [Region] = Service().load("Source.json")

    var body: some View {
        NavigationView {
            List {
                ForEach(regions, id: \.name) { region in
                    Section(header: Text(region.name)) {
                        ForEach(region.countries, id: \.name) { country in
                            CountryRowSwiftUI(country: country)
                        }
                    }
                }
            }
            .navigationTitle("Liste de voyages")
        }
    }
}


struct CountryRowSwiftUI: View {
    var country: Country

    var body: some View {
        NavigationLink(destination: DetailView(country: country)) {
            HStack {
                Image(country.pictureName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 45, height: 45)
                    .clipShape(Circle())

                VStack(alignment: .leading, spacing: 2) {
                    Text(country.name)
                        .font(.headline)
                        .foregroundColor(.blue)

                    Text(country.capital)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }

                Spacer()

                HStack(spacing: 2) {
                    Text("\(country.rate)")
                        .font(.subheadline)
                        .foregroundColor(.black)

                    Image(systemName: "star.fill")
                        .foregroundColor(.orange)
                }
            }
            .padding(.vertical, 6)
        }
    }
}


#Preview {
    ListView()
}
