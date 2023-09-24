//
//  TripCard.swift
//  Parallax
//
//  Created by Samy Mehdid on 16/8/2023.
//

import Foundation

public protocol Card: Identifiable {
    var id: UUID { get }
    var title: String { get }
    var subTitle: String { get }
    var image: String { get }
}
