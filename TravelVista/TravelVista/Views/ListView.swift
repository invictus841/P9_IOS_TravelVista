//
//  ListView.swift
//  TravelVista
//
//  Created by Alexandre Talatinian on 03/04/2025.
//

import SwiftUI

struct ListView: View {
    @StateObject var viewModel = ListViewModel()

    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.regions, id: \.name) { region in
                    Section(header: Text(region.name)) {
                        ForEach(region.countries, id: \.name) { country in
                            NavigationLink(destination: DetailView(country: country)) {
                                CustomCountryCell(country: country)
                            }
                        }
                    }
                }
            }
            .navigationTitle("Liste de voyages")
        }
    }
}


#Preview {
    ListView()
}
