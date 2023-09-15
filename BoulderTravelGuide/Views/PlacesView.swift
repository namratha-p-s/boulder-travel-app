//
//  PlacesView.swift
//  BoulderTravelGuide
//
//  Created by Namratha on 9/14/23.
//

import SwiftUI

struct PlacesView: View {
    @State private var selectedTab = 0
    
    var body: some View {
          VStack {
                TabView (selection: $selectedTab) {
                    ListPlacesView()
                        .tabItem {
                            Label("Places", systemImage: "globe")
                        }
                        .tag(0)
                    
                    TravelTipsView()
                        .tabItem {
                            Label("Travel Tips", systemImage: "heart")
                        }
                        .tag(1)
                }
                .navigationBarTitle(selectedTab == 0 ? "Places" : "Travel Tips", displayMode: .inline)
            }
    }
}

struct ListPlacesView: View {
    var body: some View {
        List {
            ForEach(places) { place in
                NavigationLink(destination: PlaceDetailView(place: place)) {
                    PlaceRow(place: place)
                }
            }
        }
    }
}

struct PlaceRow: View {
    var place: Place
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(place.name)
                .font(.headline)
        }
    }
}

struct PlaceDetailView: View {
    var place: Place
    
    var body: some View {
        VStack {
            Image(place.image)
                .resizable()
            Text("\(place.description)")
            Spacer()
        }
        .padding()
        .navigationTitle(place.name)
    }
}


struct PlacesView_Previews: PreviewProvider {
    static var previews: some View {
        PlacesView()
    }
}
