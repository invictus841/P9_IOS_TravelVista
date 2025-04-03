//
//  ListView.swift
//  TravelVista
//
//  Created by Alexandre Talatinian on 03/04/2025.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        NavigationView {
            List(0..<10, id: \.self) { index in
                CustomCountryCell()
            }
            .navigationTitle("Liste de voyages")
        }
    }
}

#Preview {
    ListView()
}
