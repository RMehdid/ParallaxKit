//
//  TripCard.swift
//  Parallax
//
//  Created by Samy Mehdid on 16/8/2023.
//

import Foundation
import ParallaxKit

struct TripCard: Card {
    var id: UUID { UUID() }
    var title: String
    var subTitle: String
    var image: String
    
    /// sample data
    static let tripCards: [TripCard] = [
        TripCard(title: "Algiers", subTitle: "Algeria", image: "algiers"),
        TripCard(title: "New York", subTitle: "USA", image: "newYork"),
        TripCard(title: "Oran", subTitle: "Algeria", image: "oran")
    ]
}
