//
//  DetailView.swift
//  TravelVista
//
//  Created by Alexandre Talatinian on 04/04/2025.
//

import SwiftUI

struct DetailView: UIViewControllerRepresentable {
    let country: Country

    func makeUIViewController(context: Context) -> DetailViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)

        guard let vc = storyboard.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController else {
            fatalError("❌ Impossible d'instancier DetailViewController depuis le storyboard")
        }

        vc.country = country
        return vc
    }

    func updateUIViewController(_ uiViewController: DetailViewController, context: Context) {
        
    }
}

//#Preview {
//    DetailView(country: Country(name: "France", capital: "Paris", description: "La France est un pays de langue française et de culture romaine.", rate: 2, pictureName: "France", coordinates: Coordinates(latitude: 1, longitude: 1)))
//}
