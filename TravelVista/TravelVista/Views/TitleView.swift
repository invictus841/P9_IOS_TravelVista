//
//  TitleView.swift
//  TravelVista
//
//  Created by Alexandre Talatinian on 10/04/2025.
//

import SwiftUI

struct TitleView: View {
    var countryName: String
    var capitalName: String
    var rate: Int

    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 4) {
                Text(countryName)
                    .font(.headline)
                    .foregroundColor(.blue)

                Text(capitalName)
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }

            Spacer()

            HStack(spacing: 2) {
                ForEach(0..<rate, id: \.self) { _ in
                    Image(systemName: "star.fill")
                        .foregroundColor(.orange)
                }
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
    }
}


#Preview {
    TitleView(countryName: "Vietnam", capitalName: "Hanoi", rate: 5)
}
