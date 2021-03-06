//
//  Concentration.swift
//  concentration-game
//
//  Created by Giorgi Ghughunishvili on 1/2/18.
//  Copyright © 2018 Giorgi Ghughunishvili. All rights reserved.
//

import Foundation

class Concentration
{
    private(set) var cards = [Card]()
    
    private var indexOfOneAndOnlyFacedUpCard: Int? {
        get {
            return cards.indices.filter({cards[$0].isFaceUp}).oneAndOnly
            //let facedUpCardIndices = cards.indices.filter({cards[$0].isFaceUp})
            //return facedUpCardIndices.count == 1 ? facedUpCardIndices.first : nil
//            var foundIndex: Int?
//            for index in cards.indices {
//                if cards[index].isFaceUp {
//                    if foundIndex == nil {
//                        foundIndex = index
//                    } else {
//                        return nil
//                    }
//                }
//            }
//            return foundIndex
        }
        set(newValue) {
            for index in cards.indices {
                cards[index].isFaceUp = (index  == newValue)
            }
        }
    }
    
    init(numberOfPairsOfCards: Int) {
        assert(numberOfPairsOfCards > 0, "init(\(numberOfPairsOfCards)): you must have at least one pair of cards")
        for _ in 1...numberOfPairsOfCards {
            let card = Card()
            //cards.append(card)
            //cards.append(card)
            cards  += [card, card]
        }
        
        shuffleCards()
    }
    
    func chooseCard(at index: Int) {
        assert(cards.indices.contains(index), "Concentration.chooseCard(at: \(index)): chosen index not in the cards")
        if !cards[index].isMatched {
            if let matchedIndex = indexOfOneAndOnlyFacedUpCard, matchedIndex != index {
                if cards[matchedIndex] == cards[index] {
                    // The cards match
                    cards[matchedIndex].isMatched = true
                    cards[index].isMatched = true
                }
                cards[index].isFaceUp = true
            } else {
                indexOfOneAndOnlyFacedUpCard = index
            }
        }
    }
    
    private func shuffleCards() {
        var last = cards.count - 1
        
        while(last > 0)
        {
            let rand = Int(arc4random_uniform(UInt32(last)))
            
            cards.swapAt(last, rand)
            
            last -= 1
        }
    }
}

extension Collection {
    var oneAndOnly: Element? {
        return count == 1 ? first : nil
    }
}
