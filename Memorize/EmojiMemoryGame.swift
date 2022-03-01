//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Francesco Rodriguez on 01/03/2022.
//

import SwiftUI

class EmojiMemoryGame {
    private static let emojis = [
        "🚂", "🚃", "🚄", "🚈", "🚝", "🚋", "🚌", "🚎",
        "🚐", "🚑", "🚒", "🚓", "🚕", "🚗", "🚙", "🚚",
        "🚛", "🚜", "🚲", "🛴", "🛹", "🛵", "⛵", "🛶",
        "🚤", "🛳", "⛴", "🛥", "🚢", "🚁", "🚀", "🛸",
    ]

    private var model: MemoryGame<String> =
        MemoryGame<String>(numberOfPairs: 4) { index in emojis[index] }

    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
}
