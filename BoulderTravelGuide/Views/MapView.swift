//
//  MapView.swift
//  BoulderTravelGuide
//
//  Created by Namratha P Somachudan on 10/12/23.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State var selectedLocation: Place
    @State private var scene: MKLookAroundScene?
    @State private var region: MKCoordinateRegion?
    
    var body: some View {
        VStack {
            ScrollView {
                Image(selectedLocation.image)
                    .resizable()
                    .scaledToFit()
                Text("\(selectedLocation.description)")
            }
        }.overlay(alignment: .bottom) {
            if scene != nil {
                LookAroundPreview(scene: $scene, allowsNavigation: false, badgePosition: .bottomTrailing)
                    .frame(height: 150)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                    .safeAreaPadding(.bottom, 40)
                    .padding(.horizontal, 20)
            }
        }
        .onAppear {
            Task {
                scene = try? await fetchScene(for: CLLocationCoordinate2D(latitude: selectedLocation.latitude, longitude: selectedLocation.longitude))
            }
        }
    }
    
    private func fetchScene(for coordinate: CLLocationCoordinate2D) async throws -> MKLookAroundScene? {
        let lookAroundScene = MKLookAroundSceneRequest(coordinate: coordinate)
        return try await lookAroundScene.scene
    }
}
