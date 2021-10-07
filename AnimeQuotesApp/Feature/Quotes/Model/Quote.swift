//
//  Quote.swift
//  AnimeQuotesApp
//
//  Created by Harris-Stoertz, Rowan on 2021-10-07.
//

import Foundation

struct Quote: Decodable {
    let anime: String
    let character: String
    let quote: String
}

extension Quote {
    
    static let dummyData: [Quote] = [
    Quote(anime: "Anime 1", character: "Character 1", quote: "Random quote 1"),
    Quote(anime: "Anime 2", character: "Character 2", quote: "Random quote 2"),
    Quote(anime: "Anime 3", character: "Character 3", quote: "Random quote 3"),
    Quote(anime: "Anime 4", character: "Character 4", quote: "Random quote 4"),
    Quote(anime: "Anime 5", character: "Character 5", quote: "Random quote 5")
    ]
}
