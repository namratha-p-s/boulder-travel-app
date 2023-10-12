//
//  ContentView.swift
//  BoulderTravelGuide
//
//  Created by Namratha on 9/14/23.
//

import SwiftUI

struct ContentView: View {
    @State private var showContactDetails = false
    @State private var showAlert = false
    
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
                .frame(width: 110, height: 110)
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
