//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Francesco Rodriguez on 01/03/2022.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    typealias Card = MemoryGame<String>.Card

    private static let emojis = [
        "🚂", "🚃", "🚄", "🚈", "🚝", "🚋", "🚌", "🚎",
        "🚐", "🚑", "🚒", "🚓", "🚕", "🚗", "🚙", "🚚",
        "🚛", "🚜", "🚲", "🛴", "🛹", "🛵", "⛵", "🛶",
        "🚤", "🛳", "⛴", "🛥", "🚢", "🚁", "🚀", "🛸",
    ]

    @Published private var model: MemoryGame<String> =
        MemoryGame<String>(numberOfPairs: 4) { index in emojis[index] }

    var cards: Array<Card> {
        return model.cards
    }

    func choose(_ card: Card) {
        model.choose(card)
    }
}
