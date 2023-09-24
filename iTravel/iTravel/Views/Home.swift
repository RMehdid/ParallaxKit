//
//  File.swift
//  
//
//  Created by Samy Mehdid on 24/9/2023.
//

import SwiftUI
import ParallaxKit

struct Home: View {
    @State private var searchText: String = ""
    
    var body: some View {
        ScrollView(.vertical){
            VStack(spacing: 16){
                HStack(spacing: 12) {
                    Button {
                        //
                    } label: {
                        Image(systemName: "line.3.horizontal")
                            .font(.title)
                            .foregroundStyle(.blue)
                    }
                    
                    HStack(spacing: 12){
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                        TextField("Search", text: $searchText)
                    }
                    .padding(.horizontal, 15)
                    .padding(.vertical, 10)
                    .background(.ultraThinMaterial, in: .capsule)
                }
                
                Text("Where do you want to Travel?")
                    .font(.largeTitle.bold())
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.top, 10)
                
                // Parralex
                ParralexEffectRoll(cards: TripCard.tripCards)
            }
            .padding(16)
        }
        .scrollIndicators(.hidden)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
