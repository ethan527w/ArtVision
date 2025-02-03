import SwiftUI
import CoreLocation

// MARK: - Event Data Model
enum EventType {
    case live, featured
}

struct Event: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
    let type: EventType
    let infoURL: URL
    var isSaved: Bool = false
}

// MARK: - Location Data
class LocationData: ObservableObject {
    @Published var events: [Event] = [
        Event(name: "The Metropolitan Museum of Art", coordinate: CLLocationCoordinate2D(latitude: 40.7794, longitude: -73.9635), type: .featured, infoURL: URL(string: "https://www.metmuseum.org")!),
        Event(name: "Museum of Modern Art", coordinate: CLLocationCoordinate2D(latitude: 40.7614, longitude: -73.9776), type: .featured, infoURL: URL(string: "https://www.moma.org")!),
        Event(name: "Guggenheim Museum", coordinate: CLLocationCoordinate2D(latitude: 40.7828, longitude: -73.9654), type: .featured, infoURL: URL(string: "https://www.guggenheim.org")!),
        Event(name: "Whitney Museum of American Art", coordinate: CLLocationCoordinate2D(latitude: 40.7401, longitude: -74.0086), type: .featured, infoURL: URL(string: "https://whitney.org")!),
        Event(name: "The Frick Collection", coordinate: CLLocationCoordinate2D(latitude: 40.7715, longitude: -73.9679), type: .featured, infoURL: URL(string: "https://www.frick.org")!),
        Event(name: "New Museum", coordinate: CLLocationCoordinate2D(latitude: 40.7264, longitude: -73.9933), type: .featured, infoURL: URL(string: "https://www.newmuseum.org")!),
        Event(name: "Brooklyn Museum", coordinate: CLLocationCoordinate2D(latitude: 40.6713, longitude: -73.9638), type: .featured, infoURL: URL(string: "https://www.brooklynmuseum.org")!),
        Event(name: "The Noguchi Museum", coordinate: CLLocationCoordinate2D(latitude: 40.7676, longitude: -73.9292), type: .featured, infoURL: URL(string: "https://www.noguchi.org")!),
        Event(name: "Socrates Sculpture Park", coordinate: CLLocationCoordinate2D(latitude: 40.7664, longitude: -73.9351), type: .featured, infoURL: URL(string: "https://www.socratessculpturepark.org")!),
        Event(name: "Storm King Art Center", coordinate: CLLocationCoordinate2D(latitude: 41.4483, longitude: -74.0419), type: .featured, infoURL: URL(string: "https://stormking.org")!),
        Event(name: "Dia Beacon", coordinate: CLLocationCoordinate2D(latitude: 41.5025, longitude: -73.9622), type: .featured, infoURL: URL(string: "https://www.diaart.org/visit/visit_our_locations_dia_beacon")!),
        Event(name: "The Clark Art Institute", coordinate: CLLocationCoordinate2D(latitude: 42.6969, longitude: -73.1675), type: .featured, infoURL: URL(string: "https://www.clarkart.edu")!),
        Event(name: "MASS MoCA", coordinate: CLLocationCoordinate2D(latitude: 42.7031, longitude: -73.1692), type: .featured, infoURL: URL(string: "https://www.massmoca.org")!),
        Event(name: "Yale Center for British Art", coordinate: CLLocationCoordinate2D(latitude: 41.3116, longitude: -72.9295), type: .featured, infoURL: URL(string: "https://britishart.yale.edu")!),
        Event(name: "Princeton University Art Museum", coordinate: CLLocationCoordinate2D(latitude: 40.3466, longitude: -74.6577), type: .featured, infoURL: URL(string: "https://artmuseum.princeton.edu")!)
    ]
    
    func toggleSaveEvent(event: Event) {
        if let index = events.firstIndex(where: { $0.id == event.id }) {
            events[index].isSaved.toggle()
        }
    }
}
