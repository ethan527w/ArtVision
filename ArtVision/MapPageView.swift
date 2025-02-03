import SwiftUI
import MapKit

struct MapPageView: View {
    @EnvironmentObject var locationData: LocationData
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 40.7128, longitude: -74.0060), // Default NYC
        span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
    )
    
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: locationData.events) { event in
            MapAnnotation(coordinate: event.coordinate) {
                Circle()
                    .fill(event.isSaved ? Color.red : Color.blue)
                    .frame(width: 10, height: 10)
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}
