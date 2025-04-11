//
//  CountryViewModel.swift
//  TravelVista
//
//  Created by Alexandre Talatinian on 11/04/2025.
//

import Foundation

class CountryViewModel: ObservableObject {
    @Published var regions: [Region] = []

    init() {
        self.regions = Service().load("Source.json")
    }
}

