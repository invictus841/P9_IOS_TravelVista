//
//  TitleViewSwiftUI.swift
//  TravelVista
//
//  Created by Alexandre Talatinian on 03/04/2025.
//

import SwiftUI

struct TitleViewSwiftUI: View {
    let countryName: String
    let capitalName: String
    let rate: Int

    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 2) {
                Text(countryName)
                    .font(.headline)
                    .foregroundColor(.blue)
                    .bold()
                Text(capitalName)
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            Spacer()
            HStack(spacing: 2) {
                ForEach(0..<rate, id: \.self) { _ in
                    Image(systemName: "star.fill")
                        .foregroundColor(Color.orange)
                }
            }
        }
        .padding()
    }
}


#Preview(traits: .sizeThatFitsLayout) {
    TitleViewSwiftUI(countryName: "Vietnam", capitalName: "Hanoi", rate: 5)
}

