import SwiftUI

// MARK: - Live Events View
struct LiveEventsView: View {
    @EnvironmentObject var locationData: LocationData
    
    var body: some View {
        List(locationData.events.filter { $0.type == .live }) { event in
            EventRowView(event: event)
        }
        .navigationTitle("Live Events")
    }
}
