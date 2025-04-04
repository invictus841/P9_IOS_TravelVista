//
//  ListViewModel.swift
//  TravelVista
//
//  Created by Alexandre Talatinian on 04/04/2025.
//

import Foundation

class ListViewModel: ObservableObject {
    @Published var regions: [Region] = []

    init() {
        self.regions = Service().load("Source.json")
    }
}
