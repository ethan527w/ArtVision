import SwiftUI

// MARK: - Featured Shows View
struct FeaturedShowsView: View {
    @EnvironmentObject var locationData: LocationData
    
    var body: some View {
        List(locationData.events.filter { $0.type == .featured }) { event in
            EventRowView(event: event)
        }
        .navigationTitle("Featured Shows")
    }
}
