import SwiftUI

struct HomePageView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: FeaturedShowsView()) {
                    PlaceholderBlock(title: "Featured Shows")
                }
                NavigationLink(destination: LiveEventsView()) {
                    PlaceholderBlock(title: "Live Events")
                }
                NavigationLink(destination: MyListView()) {
                    PlaceholderBlock(title: "My List")
                }
            }
            .padding()
            .navigationTitle("ArtVision")
        }
    }
}
