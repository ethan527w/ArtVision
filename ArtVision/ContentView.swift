import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomePageView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }

            SocialPageView() // Placeholder for now
                .tabItem {
                    Image(systemName: "person.2.fill")
                    Text("Social")
                }

            MapPageView()
                .tabItem {
                    Image(systemName: "map.fill")
                    Text("Map")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(LocationData()) // Provide LocationData for the preview
    }
}
