//
//  Cards.swift
//  WritingPocker
//
//  Created by MacBook on 11/4/19.
//  Copyright © 2019 MacBook. All rights reserved.
//

import UIKit

class Card: NSObject {
    
    enum CardSuit: CaseIterable {
        case spades
        case clubs
        case diamonds
        case hearts
    }
    
    enum CardRunk: CaseIterable {
        case ace
        case king
        case queen
        case jack
        case ten
        case nine
        case eight
        case seven
        case six
    }
    
    enum Game {
        case first
        case second
        case third
        case forth
        case fifth
        case sixth
        case seventh
        case eighth
        case nineth
    }
    
    let suit: CardSuit
    let rank: CardRunk
    let trump: Bool
    
    init(suit: CardSuit, rank: CardRunk, trump: Bool) {
        self.suit = suit
        self.rank = rank
        self.trump = trump
    }
    
    func trumpGeneration () -> Card {
        let cardSuit = CardSuit.allCases.randomElement()!
        let cardRunk = CardRunk.allCases.randomElement()!
        let trumpCard = Card(suit: cardSuit, rank: cardRunk, trump: true)
        return trumpCard
    }
    
    let trumpCard = trumpGeneration(<#T##self: Card##Card#>)
    
    func cardGeneration () -> Card {
        let cardSuit = CardSuit.allCases.randomElement()!
        let cardRunk = CardRunk.allCases.randomElement()!
        var cardTrump: Bool = false
        if cardSuit == trumpCard().suit {
            cardTrump = true
        }
        let card = Card(suit: cardSuit, rank: cardRunk, trump: cardTrump)
        return card
    }
}
