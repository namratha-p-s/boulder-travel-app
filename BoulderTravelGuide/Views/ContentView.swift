//
//  ContentView.swift
//  BoulderTravelGuide
//
//  Created by Namratha on 9/14/23.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.presentationMode) private var presentationMode
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
                
                Image("boulder")
                    .resizable()
                    .padding()
                    .cornerRadius(75)
                
                List {
                    NavigationLink(destination: PlacesView()) {Text("Places")}
                    Button(action: {showContactDetails = true}) {
                        Text("About Us")
                    }
                    .sheet(isPresented: $showContactDetails) {
                            Text("")
                            Text("Developed by: Namratha")
                        }
                    Button(action: {showAlert = true}) {
                        Text("Quit")
                    }
                    .alert(isPresented: $showAlert) {
                        Alert(
                            title: Text("Quit App"),
                            message: Text("Are you sure you want to quit the app?"),
                            primaryButton: .destructive(Text("Yes")) {
                                exit(0)
                            },
                            secondaryButton: .default(Text("No"))
                        )
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
