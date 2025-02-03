//
//  PlaceholderBlock.swift
//  ArtVision
//
//  Created by Ethan Wu on 2/3/25.
//


import SwiftUI

struct PlaceholderBlock: View {
    let title: String

    var body: some View {
        RoundedRectangle(cornerRadius: 15)
            .fill(Color.gray.opacity(0.3))
            .frame(height: 100)
            .overlay(
                Text(title)
                    .font(.headline)
                    .foregroundColor(.black)
            )
            .padding(.horizontal)
    }
}
