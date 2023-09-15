//
//  TravelTipsView.swift
//  BoulderTravelGuide
//
//  Created by Namratha on 9/14/23.
//

import SwiftUI

struct TravelTipsView: View {
    var body: some View {
        List {
            VStack (alignment: .leading){
                Text("Bring plenty of layers")
                    .font(.headline)
                    .padding([.top, .bottom])
                Text("Boulder is known for its mild year-round climate, with low humidity, plenty of sunshine and little rain to speak of. That being said, winters can get quite chilly, and in fall and spring, the weather can be highly unpredictable – thunderstorms, flooding, high winds and sporadic snowfall are all a part of the mix. Be sure to bring plenty of warm and water-resistant clothing to Boulder for the time you’ll be spending outside.")
                    .font(.subheadline)
                    .padding(.bottom)
                Text("Use the bike paths to get around")
                    .font(.headline)
                    .padding([.top, .bottom])
                Text("Boulder experiences out there. With more than 300 miles of dedicated bikeways, frequent sunshine and a thriving cycling culture, the town is frequently hailed as one of the best cities for biking in the nation. Rent your own bike or utilize the public bike share kiosks, then hop on the Boulder Creek Path. You’ll fit right in with all the commuters whizzing past on their way to and from the city center.")
                    .font(.subheadline)
                    .padding(.bottom)
            }
        }
    }
}

struct TravelTipsView_Previews: PreviewProvider {
    static var previews: some View {
        TravelTipsView()
    }
}
