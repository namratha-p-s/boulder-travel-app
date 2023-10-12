//
//  Places.swift
//  BoulderTravelGuide
//
//  Created by Narmada on 9/14/23.
//

import Foundation

struct Place: Identifiable {
    var id = UUID()
    var name: String
    var description: String
    var image: String
    let latitude: Double
    let longitude: Double
}

var places = [
    Place(
        name: "CU Boulder",
        description: "Located at the foot of the Rocky Mountains, the city of Boulder is a leading force in research, technology and entrepreneurship—a place where innovation happens. At the heart of the city, CU Boulder produces some of the best and brightest in these industries and is a primary source of Colorado’s highly skilled workforce.",
        image: "cu",
        latitude: 40.00805022734468,
        longitude: -105.26574971820813),
    
    Place(
        name: "Chautauqua Park",
        description: "Chautauqua Park is a portion of an iconic historic landmark dating back to when the City of Boulder began preserving wild lands over 100 years ago. In 1898, Boulder residents approved a bond issue to purchase 80 acres to be used as a “Chautauqua”. The park land owned by Boulder Parks and Recreation is located adjacent to OSMP trails, Chautauqua Dining Hall and Auditorium, and Chautauqua Ranger Cottage and provides a playground, tennis courts, and open turf.",
        image: "chautauqua",
        latitude: 39.99941326157732,
        longitude: -105.28152106076895),
    
    Place(
        name: "Pearl Street",
        description: "The Pearl Street Mall is located in the heart of downtown Boulder, Colorado. At 4 blocks long, it's easily walkable from end to end giving you easy access to more than 200+ stores lining the street making it a favorite tourist and University of Colorado student destination. The Pearl Street mall has been around for 40+ years and keeps getting better",
        image: "pearl",
        latitude: 40.018523445510084,
        longitude: -105.27870203549965),
    
    Place(
        name: "Boulder Creek Path",
        description: "The Boulder Creek path is popular, 5.5-mile multi-use path that extends to Boulder Canyon on the west end and Stazio Ballfields on the east end (just past 55th Street). It runs through downtown and by many attractions, including the Main Library, Civic Area Park and Boulder Dushanbe Teahouse.",
        image: "creek",
        latitude: 40.01483844093012,
        longitude: -105.29016020159612),
    
    Place(
        name: "Flagstaff Mountain",
        description: "The top of Flagstaff Mountain just west of Boulder easily provides the best views in town. This mountaintop perch features sweeping, panoramic views of Boulder and the Front Range. There are plenty of great hiking trails and places to go bouldering or have a romantic picnic, too.",
        image: "flagstaff",
        latitude: 40.002210404444746,
        longitude: -105.30744843408043)
]
