//
//  MemoryGame.swift
//  Memorize
//
//  Created by Francesco Rodriguez on 01/03/2022.
//

import Foundation

struct MemoryGame<CardContent> {
    private(set) var cards: Array<Card>

    init(numberOfPairs: Int, createCardContent: (Int) -> CardContent) {
        cards = Array<Card>()
        for idx in 0..<numberOfPairs {
            let content: CardContent = createCardContent(idx)
            cards.append(Card(content: content))
            cards.append(Card(content: content))
        }
    }

    func choose(_ card: Card) {

    }

    struct Card {
        var isFaceUp: Bool = false
        var isMatched: Bool = false
        var content: CardContent
    }
}
