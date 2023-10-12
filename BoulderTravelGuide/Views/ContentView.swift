//
//  ContentView.swift
//  BoulderTravelGuide
//
//  Created by Namratha on 9/14/23.
//

import SwiftUI

struct ContentView: View {
    @State private var showTravelTipsBanner = false
    @State private var selectedTab = 0
    @State private var pushNotificationService = PushNotificationService()
    
    var body: some View {
        VStack {
            TabView (selection: $selectedTab) {
                ListPlacesView()
                    .tabItem {
                        Label("Places", systemImage: "globe")
                    }
                    .tag(0)
                
                SettingsView()
                    .tabItem {
                        Label("Settings", systemImage: "heart")
                    }
                    .tag(1)
                    .environmentObject(pushNotificationService)
            }
            .navigationBarTitle(selectedTab == 0 ? "Places" : "Travel Tips", displayMode: .inline)
        }
    }
}

struct ListPlacesView: View {
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                
                HStack {
                    Text("Boulder Travel Guide")
                        .bold()
                        .font(.largeTitle)
                }
                List {
                    ForEach(places) { place in
                        NavigationLink(destination: PlaceDetailView(place: place)) {
                            PlaceRow(place: place)
                        }
                    }
                }
            }
        }
    }
}

struct PlaceRow: View {
    var place: Place
    
    var body: some View {
        HStack {
            Image(place.image)
                .resizable()
                .frame(width: 100, height: 100)
            Spacer()
            Text(place.name)
                .font(.headline)
        }
    }
}

struct PlaceDetailView: View {
    var place: Place
    
    var body: some View {
        MapView(selectedLocation: place)
            .padding()
            .navigationTitle(place.name)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
