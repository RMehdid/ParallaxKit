// The Swift Programming Language
// https://docs.swift.org/swift-book

import SwiftUI

public struct ParralexEffectRoll: View {
    private let cards: [any Card]
    
    public init(cards: [any Card]) {
        self.cards = cards
    }
    
    public var body: some View {
        GeometryReader{ geometry in
            let size = geometry.size
            
            ScrollView(.horizontal){
                HStack(spacing: 5) {
                    ForEach(cards, id: \.id){ card in
                        GeometryReader { proxy in
                            let cardSize = proxy.size
                            let minX = min((proxy.frame(in: .scrollView).minX * 1.4), proxy.size.width * 1.4)
                            
                            Image(card.image)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .scaleEffect(1.25)
                                .offset(x: -minX)
                                .frame(width: cardSize.width, height: cardSize.height, alignment: .center)
                                .cornerRadius(15)
                                .shadow(color: .black.opacity(0.25 ), radius: 8, x: 5, y:10)
                        }
                        .frame(width: size.width - 60, height: size.height - 50)
                        .scrollTransition(.interactive, axis: .horizontal) { view, phase in
                            view
                                .scaleEffect(phase.isIdentity ? 1 : 0.9)
                        }
                    }
                }
                .padding(.horizontal, 30)
                .scrollTargetLayout()
                .frame(height: size.height, alignment: .top)
            }
            .scrollTargetBehavior(.viewAligned)
            .scrollIndicators(.hidden)
        }
        .frame(height: 500)
        .padding(.horizontal, -16)
        .padding(.top, 10)
    }
}
