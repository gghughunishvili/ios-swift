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
    var cards = [Card]()
    
    var indexOfOneAndOnlyFacedUpCard: Int? {
        get {
            var foundIndex: Int?
            for index in cards.indices {
                if cards[index].isFaceUp {
                    if foundIndex == nil {
                        foundIndex = index
                    } else {
                        return nil
                    }
                }
            }
            return foundIndex
        }
        set(newValue) {
            for index in cards.indices {
                cards[index].isFaceUp = (index  == newValue)
            }
        }
    }
    
    init(numberOfPairsOfCards: Int) {
        for _ in 1...numberOfPairsOfCards {
            let card = Card()
            //cards.append(card)
            //cards.append(card)
            cards  += [card, card]
        }
        
        shuffleCards()
    }
    
    func chooseCard(at index: Int) {
        if !cards[index].isMatched {
            if let matchedIndex = indexOfOneAndOnlyFacedUpCard, matchedIndex != index {
                if cards[matchedIndex].identifier == cards[index].identifier {
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
    
    func shuffleCards() {
        var last = cards.count - 1
        
        while(last > 0)
        {
            let rand = Int(arc4random_uniform(UInt32(last)))
            
            cards.swapAt(last, rand)
            
            last -= 1
        }
    }
    
}
