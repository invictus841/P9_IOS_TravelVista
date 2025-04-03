//
//  CustomCountryCell.swift
//  TravelVista
//
//  Created by Alexandre Talatinian on 03/04/2025.
//

import SwiftUI

struct CustomCountryCell: View {
    var body: some View {
        HStack(spacing: 16) {
            Image(systemName: "globe")
                .resizable()
                .frame(width: 40, height: 40)
                .clipShape(Circle())

            VStack(alignment: .leading) {
                Text("Toto")
                    .font(.headline)
                Text("Lorem Ipsum")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }

            Spacer()

            Text("5⭐️")
                .foregroundColor(.orange)
        }
        .padding(.vertical, 8)
    }
}

#Preview {
    CustomCountryCell()
}
