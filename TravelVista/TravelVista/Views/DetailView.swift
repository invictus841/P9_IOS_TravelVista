//
//  DetailView.swift
//  TravelVista
//
//  Created by Alexandre Talatinian on 11/04/2025.
//

import SwiftUI

struct DetailView: UIViewControllerRepresentable {
    var country: Country

    func makeUIViewController(context: Context) -> DetailViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController

        guard let detailVC = viewController else {
            fatalError("Failed to instantiate DetailViewController from storyboard")
        }

        detailVC.country = country
        return detailVC
    }

    func updateUIViewController(_ uiViewController: DetailViewController, context: Context) {
        // Nothing to update since data is static
    }
}
