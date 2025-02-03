//
//  EventRowView.swift
//  ArtVision
//
//  Created by Ethan Wu on 2/3/25.
//


import SwiftUI

// MARK: - Event Row View
struct EventRowView: View {
    @EnvironmentObject var locationData: LocationData
    var event: Event
    
    var body: some View {
        HStack {
            Button(action: {
                UIApplication.shared.open(event.infoURL)
            }) {
                Text(event.name)
                    .font(.body)
                    .foregroundColor(.blue)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            
            Button(action: {
                locationData.toggleSaveEvent(event: event)
            }) {
                Image(systemName: event.isSaved ? "heart.fill" : "heart")
                    .foregroundColor(event.isSaved ? .red : .gray)
            }
        }
        .padding()
    }
}
