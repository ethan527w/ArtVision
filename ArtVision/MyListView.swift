import SwiftUI

// MARK: - My List View
struct MyListView: View {
    @EnvironmentObject var locationData: LocationData
    
    var body: some View {
        List(locationData.events.filter { $0.isSaved }) { event in
            EventRowView(event: event)
        }
        .navigationTitle("My List")
    }
}
