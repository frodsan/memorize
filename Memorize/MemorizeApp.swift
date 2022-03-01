//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Francesco Rodriguez on 26/02/2022.
//

import SwiftUI

@main
struct MemorizeApp: App {
    let game = EmojiMemoryGame()

    var body: some Scene {
        WindowGroup {
            ContentView(game: game)
        }
    }
}
